/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include "System_Configuration.h"
#include "Sys_Inits.h"

#include "HW_Testing.h"
#include "Beeps.h"
#include "Events.h"
#include "ETH_NetBurner.h"
#include "Para_Calculations.h"
#include "First_test.h"
#include "CAN_Enco_Com.h"
#include "App_Protocol.h"

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


//
//
extern uint16_t  AZ_Enco_GR ; //shoud be integer
extern uint16_t  EL_Enco_GR ;    

extern uint16_t ADC_Spr1,ADC_Spr2;
extern volatile bool ADC_result_ready;

extern uint32_t EL_Enco_Position; //CAN
extern double EL_Enco_Angle;
extern uint32_t AZ_Enco_Position; //SSI
extern double AZ_Enco_Angle;

extern uint32_t EL_Motor_Position;
extern uint32_t AZ_Motor_Position; //Currently connected Hex value

extern volatile bool KeyPressed;
extern unsigned int KeyCode;
extern uint16_t AmplStatus;
//
//
extern Protocol_Info ETH_Proto_Ptrs;
extern Protocol_Info PNDNT_Proto_Ptrs;
extern uint8_t ETH_DAT_Buffer[];
extern volatile int IN_DAT_BUF;

extern uint8_t FC_byte_in_feedback;

extern bool System_Booted ;
volatile int MyTimer=0;


extern volatile bool InputReadEnable;
extern volatile uint8_t OUT_IMG;
extern volatile uint8_t BRK_IMG;
extern volatile uint16_t INP_IMG;

extern volatile uint32_t NoKeyTimeOut;
extern volatile CAN_APP_STATES CAN_state;

extern bool SSI_encode_Fault;
//this will be called every 10mSec 
//While application writing no need to modify Event of timer
//User can populate his own code here

extern volatile bool Start_ETH_fb ;

void UserTimer10mSec()
{
    if(!System_Booted) return; //No operation untill System Booted/Initialized
//   //Update Outputs Every 10mSec
//   GPIO_PortWrite(GPIO_PORT_G, 0xF000,(uint32_t)OUT_IMG << 8 );//OUT7,6,5,4
//   GPIO_PortWrite(GPIO_PORT_G, 0x0003,(uint32_t)OUT_IMG ); //OUT1,OUT0
//   GPIO_PortWrite(GPIO_PORT_A,0x0002,(uint32_t)OUT_IMG >> 1 );//OUT2 RA1
//   GPIO_PortWrite(GPIO_PORT_A,0x4000,(uint32_t)OUT_IMG << 11 );//OUT3 RA14
//   
//   GPIO_PortWrite(GPIO_PORT_C, 0x000E,(uint32_t)BRK_IMG << 1 );//RC1..3 is BRK1..3
//   if(InputReadEnable)
//   {
//        EN_IN_HI_Clear();
//        INP_IMG = GPIO_PortRead(GPIO_PORT_D)<<7;                    //RD8..RD1 DB7..DB0
//        EN_IN_HI_Set();
//        EN_IN_LO_Clear();
//        INP_IMG = (INP_IMG & 0xff00)| ((uint16_t)(GPIO_PortRead(GPIO_PORT_D)>>1)&0xff);
//        EN_IN_LO_Set();       
//   }
   
    MyTimer++;
//    if(MyTimer>10) //cycle of 50msec
//    {
//    MyTimer = 0;        
//        if(Start_ETH_fb)
//            Send_Response_ETH();
//    }
        
        
}


//assumes that Amp enabled and Mode is set
void Move_Motor(uint8_t AmplNode,double ToGo,bool IsRelative,bool IsBlocking)
{
    AmplComm_Status stat;
    bool Reached;
    uint32_t timeConsumed = GetSystemMs();
    char dispstr[48];
    uint32_t CountForAmp;
    
    CountForAmp = Get_Count_ForAmpAZ(ToGo);
    
    stat = Set_Target_Position_Count(AmplNode,CountForAmp,IsRelative) ;//ffff is one revolution
    if(stat != AMPL_STATE_OK)
    {
        printf("\rTarget Position Set returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
        return;
    }
    //LCDWriteString(0,3,1,"Ampl Target is Set  ");
    
    stat = Issue_GO_Command(AmplNode,true);
    if(stat != AMPL_STATE_OK)
    {
        printf("\rGO Command returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
        return;
    }
    //LCDWriteString(0,3,1,"Ampl GO Comm.Issued.");
    

    
    if(IsBlocking)
    {
        //till target is reached
        Reached = false;
        do
        {
            
            stat = Check_if_Target_Reached(AmplNode,&Reached);
            if(stat!= AMPL_STATE_OK)
            {
                printf("\rTarget Reached Checking returned %04X\r",stat);
                printf("\rValue received - %04X\r",AmplStatus);
                return;
            }
          //printf("\rMoving..");
        }while(!Reached);
        
    }
    
    //LCDWriteString(0,3,1,"Ampl TARGET Reached.");
    
}


void Process_Proto_Cmd(Protocol_Info* ProtoPtr)
{
//in the Buffer[1] - no of bytes to process [2] - is command [3].. Parameters if any
double Req_AZ_Position,Req_EL_Position;
double Req_Second_Position;
int count = 10;
uint32_t Enco;
char dispstr[32];
double Angle;
int32_t Position;

    ProtoPtr->Protocol_State = PROTO_CMD_IN_PROCESS;
    switch(*(ProtoPtr->BufferFor_DataRcv+2))
    {
        case 0x1: //position //3,4 AZ (359.99)  5,6(+-90) EL position
            //cuurently only AZ motor available
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            //Req_AZ_Position = (((*(ProtoPtr->BufferFor_DataRcv+3))*256)+(*(ProtoPtr->BufferFor_DataRcv+4))) /100.0;
            Req_AZ_Position = ((((*(ProtoPtr->BufferFor_DataRcv+3))*256)+(*(ProtoPtr->BufferFor_DataRcv+4))) * 360.0 )/65536 ;
            Move_Motor(AZ_Amplifier,Req_AZ_Position,false,true);
            break;
        case 0x02:
            FC_byte_in_feedback |= CMD_RCVD_MASK;
            Req_AZ_Position = ((((*(ProtoPtr->BufferFor_DataRcv+3))*256)+(*(ProtoPtr->BufferFor_DataRcv+4))) * 360.0 )/65536 ;
            Req_Second_Position = ((((*(ProtoPtr->BufferFor_DataRcv+5))*256)+(*(ProtoPtr->BufferFor_DataRcv+6))) * 360.0 )/65536 ;
            while(count)
            {

            Move_Motor(AZ_Amplifier,Req_AZ_Position,false,true);
                        Get_Actual_Motor_Position(AZ_Amplifier,&Position);
                        sprintf(dispstr,"Pos:x%08X",Position);
                        LCDWriteString(0,3,1,dispstr);                       
                        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
                        LCDWriteString(0,4,1,dispstr);
                        AZ_Motor_Position = Position;
 
                            Get_Enco_Count_CAN(EL_Encode_Node,&Enco);
                    if(CAN_state == STATE_CAN_IDLE)
                    {
                        Get_Paras_12Bit_Encoders(Enco,&Angle,EL_Enco_GR);
                        //sprintf(dispstr,"CAN:x%04X Ang:%6.2f",Enco,Angle);
                        LCDWriteString(0,1,1,dispstr);
                        EL_Enco_Position = Enco; //
                        EL_Enco_Angle = Angle;
                    }
                    else
                    {
                        LCDWriteString(0,1,1,"  CAN ENCO ERROR    ");
                        LongBeep();
                    }

            Move_Motor(AZ_Amplifier,Req_Second_Position,false,true);
                       Get_Actual_Motor_Position(AZ_Amplifier,&Position);
                        sprintf(dispstr,"Pos:x%08X",Position);
                        LCDWriteString(0,3,1,dispstr);                       
                        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
                        LCDWriteString(0,4,1,dispstr);
                        AZ_Motor_Position = Position;
             
                            Get_Enco_Count_CAN(EL_Encode_Node,&Enco);
                    if(CAN_state == STATE_CAN_IDLE)
                    {
                        Get_Paras_12Bit_Encoders(Enco,&Angle,EL_Enco_GR);
                        //sprintf(dispstr,"CAN:x%04X Ang:%6.2f",Enco,Angle);
                        LCDWriteString(0,1,1,dispstr);
                        EL_Enco_Position = Enco; //
                        EL_Enco_Angle = Angle;
                    }
                    else
                    {
                        LCDWriteString(0,1,1,"  CAN ENCO ERROR    ");
                        LongBeep();
                    }

            count--;
            }
            break;
        case 0x08: //AZ INCH 
             //0.0 to 10.0 (0 to 100)
            Req_AZ_Position = *(ProtoPtr->BufferFor_DataRcv+3) /10.0;
            if(*(ProtoPtr->BufferFor_DataRcv+4) == 0xff)
                Req_AZ_Position *= -1;
            Move_Motor(AZ_Amplifier,Req_AZ_Position,true,true);
            break;
        case 0x09: //EL
            break;
        default: //unrecog command
            FC_byte_in_feedback &= ~CMD_RCVD_MASK;
            break;
    }
    
   Restart_Proto(ProtoPtr);
}

void Check_CAN_Devices()
{
 int32_t strttime;    
 bool respTimeout;
 uint16_t StatWrd;
 uint32_t Enco;
 int count=0;
 char Reason[64];
 
    printf("\rWait Finding AZ Amplifier..");
    LCDWriteString(1,1,1,"Finding AZ Amplifier");
    
    if(!GetAmplStatus(AZ_Amplifier,&StatWrd)) 
    {
        printf("\rAZ Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(1,1,1,"AZ Amplifier Error  ");
    }
    else
    {
        printf("\rAZ Amplifier Found");
        LCDWriteString(1,1,1,"AZ Amplifier Found..");
    }
        
/////
   printf("\rWait Finding EL Amplifier..");
   LCDWriteString(1,2,1,"Finding EL Amplifier");

    if(!GetAmplStatus(EL_Amplifier,&StatWrd)) 
    {
        printf("\rEL Ampl GetStatus Failed..CANState- %d",CAN_state);
        LCDWriteString(1,2,1,"EL Amplifier Error  ");
    }
    else
    {
        printf("\rEL Amplifier Found");
        LCDWriteString(1,2,1,"EL Amplifier Found..");
    }
   
    Get_and_Display_Ampl_Error(AZ_Amplifier,Reason,"AZ Amplifier");
    LCDWriteString(1,3,1,Reason);
    delay_mS(2000);
//        printf("\rWait Finding AZ Encoder..");
//        LCDWriteString(1,3,1,"Finding AZ Encoder  ");
//        count = 0;
//        Send_Preop_NMT(AZ_Encode_Node,&Enco); //response or not do not check
//       //At Fresh power on it gives response After that it has to be put in start mode
//        do
//        {
//            delay_mS(1000); //atleast 5-6 secs it takes to bootup after a fresh power on
//            Enco = 0xffffffff;
//            if(!Send_Start_NMT(AZ_Encode_Node,&Enco))     
//                count++;
//        }while( ((Enco & 0xff)!=0x0) && (count<6));//Bootup Message 0x00
//        
//        if(count<6)
//            LCDWriteString(1,3,1,"AZ Encoder Found    ");
//        else
//            LCDWriteString(1,3,1,"AZ Encoder NOT Found");
// 
//
//// 
//        printf("\rWait Finding EL Encoder..");
//        LCDWriteString(1,4,1,"Finding EL Encoder  ");
//        count = 0;
//       Send_Preop_NMT(EL_Encode_Node,&Enco); //response or not do not check
//       //At Fresh power on it gives response After that it has to be put in start mode
//        do
//        {
//            delay_mS(1000); //atleast 5- secs it takes to bootup after a fresh power on
//            Enco = 0xffffffff;
//            if(!Send_Start_NMT(EL_Encode_Node,&Enco))     
//                count++;
//        }while( ((Enco & 0xff)!=0x0) && (count<6));//Bootup Message 0x00
//        
//        if(count<6)
//            LCDWriteString(1,4,1,"EL Encoder Found    ");
//        else
//            LCDWriteString(1,4,1,"EL Encoder NOT Found");
// 
 
 
}
void disp_all_inputs()
{

 int i;
 char cc;
 char dispstr[32];
 
    LCDWriteString(1,3,1,"INP:                ");
        
        for (i = 15; i >= 0; i--) 
        {
            cc ='0';
            if ((INP_IMG >> i) & 1) 
                cc ='1';
          LCDWritechar(1,3,20-i,cc);
        }
    
    ADC_ConversionStart();
    if(ADC_result_ready)
    {
        sprintf(dispstr,"VSPR1:%3.1f  VSPR2:%3.1f",((double)ADC_Spr1/0x3ff)*2.5,((double)ADC_Spr2/0x3ff)*2.5 );
        LCDWriteString(1,4,1,dispstr);
        ADC_result_ready = false;
        
    }
    
}

void Start_Testing_Amp_Enco()
{
 uint32_t Enco;
 char dispstr[48];
 bool done =false;
 double Angle;
  int32_t Position;
int count=0;

     ADC_Spr1 = 0;
     ADC_Spr2 = 0;
	 ADC_result_ready = false;
     ADC_ConversionStart();
     
    Init_Protocol_stack_On_ETH();
    Start_ETH_fb = true; //start sedning 100msec fb byte
    
    ClearDisp(0);
    
    if(!Init_Amplifier_old(AZ_Amplifier,Ampl_POSITION_Mode))
    {
        printf("Init: Err:%08X  CAN-%2d",AmplStatus,CAN_state);
        sprintf(dispstr,"Err:%08X  CAN-%2d",AmplStatus,CAN_state);
        LCDWriteString(0,3,1,dispstr);
        LongBeep();
        
    }
    //else
    //    LCDWriteString(0,3,1,"Amplifier Initiated.");
    Enable_Amplifier(AZ_Amplifier);
   
    if(!Get_Actual_Motor_Position(AZ_Amplifier,&Position))
    {
        LCDWriteString(0,4,1,"Motor Posi.Error...");
        LongBeep();
    }
        
    else
    {
        sprintf(dispstr,"Pos:x%08X",Position);
        LCDWriteString(0,3,1,dispstr);
        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
        LCDWriteString(0,4,1,dispstr);
        AZ_Motor_Position = Position;
    }
        
    while(!done)
    {
            disp_all_inputs(); //on second display
            
            Get_Enco_Count_CAN(EL_Encode_Node,&Enco);
            if(CAN_state == STATE_CAN_IDLE)
             {
                 Get_Paras_12Bit_Encoders(Enco,&Angle,EL_Enco_GR);
                 sprintf(dispstr,"CAN:x%04X Ang:%6.2f",Enco,Angle);
                 LCDWriteString(0,1,1,dispstr);
                 EL_Enco_Position = Enco; //
                 EL_Enco_Angle = Angle;
             }
             else
             {
                 LCDWriteString(0,1,1,"  CAN ENCO ERROR    ");
                 LongBeep();
             }
//            //Very fast repeatative reading of SSI gives error 
           Enco  = Get_SSI_Enco_Count_ST(0,true);//Channle0 with gray code
                if(!SSI_encode_Fault)
                {
                     Get_Paras_13Bit_Encoders(Enco,&Angle,AZ_Enco_GR);
                    sprintf(dispstr,"SSI:x%04X Ang:%6.2f",Enco,Angle);
                    LCDWriteString(0,2,1,dispstr);
                    AZ_Enco_Position = Enco;
                    AZ_Enco_Angle = Angle;
                       
                        count = 0;
                }
                else
                {
                    count++;
                    if(count>3)
                    {
                    LCDWriteString(0,2,1,"  SSI ENCO ERROR    ");
                    LongBeep();
                    count = 0;
                    }
                    //return;
                }

           if(KeyPressed)
           {
               Till_Key_Released();
               KeyPressed = 0;
               NoKeyTimeOut =0;
               ShortBeep();
               switch(KeyCode&0xff)
               {
                    case ONE:
                        OUT_IMG ^= 0x1;
                        break;
                    case TWO:
                        OUT_IMG ^= 0x2;
                        break;
                    case THREE:
                        OUT_IMG ^= 0x4;
                        break;
                    case FOUR:
                        OUT_IMG ^= 0x8;
                        break;
                    case FIVE:
                        OUT_IMG ^= 0x10;
                        break;
                    case SIX:
                        OUT_IMG ^= 0x20;
                        break;
                    case SEVEN:
                        BRK_IMG ^= 0x01;
                        break;
                    case EIGHT:
                        BRK_IMG ^= 0x02;
                        break;
                    case NINE:
                        BRK_IMG ^= 0x04;
                        break;

                   case REFKEY:
                       LCDWriteString(0,1,1,"Resetting CAN ENCO  ");     
                        LCDWriteString(0,2,1,"Resetting SSI ENCO  ");
                        LCDWriteString(0,4,1,"Setting HOME Motor  ");     
                        
                        Reset_SSI_Enco(0);
//                        
                        Reset_CAN_Enco(EL_Encode_Node);
                        
                        Set_Motor_Home_Position(AZ_Amplifier);
                        break;
                   case ELKEY:
                        Move_Motor(AZ_Amplifier,10.0,true,true); //relative
                        break;
                   case AZKEY:
                        //Move_Motor(AZ_Amplifier,-90.0,false,true); //absolute
                        LCDWriteString(1,2,1,"                    ");
                        LCDWriteString(1,2,1,"Abs.Postion?");
                        if(Enter_float_Data(1,6,2,14,&Angle,30))
                        {
                            if((Angle>359.9)||(Angle<-359.9))
                            {
                            ClearDisp(1);
                            LCDWriteString(1,2,1,"Invalid Angle!");
                            ShortBeep();
                            }
                            else
                                Move_Motor(AZ_Amplifier,Angle,false,true); //absolute
                        }
                        else
                        {
                            ClearDisp(1);
                            LCDWriteString(1,2,1,"NO Angle!");
                            ShortBeep();
                        }
        

                        break;
                   case ROLLKEY:
                       Move_Motor(AZ_Amplifier,60,true,true);
                       Get_Actual_Motor_Position(AZ_Amplifier,&Position);
                        sprintf(dispstr,"Pos:x%08X",Position);
                        LCDWriteString(0,3,1,dispstr);                       
                        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
                        LCDWriteString(0,4,1,dispstr);
                        AZ_Motor_Position = Position;
                      delay_mS(1000);
                       Move_Motor(AZ_Amplifier,-60,true,true);
                       Get_Actual_Motor_Position(AZ_Amplifier,&Position);
                        sprintf(dispstr,"Pos:x%08X",Position);
                        LCDWriteString(0,3,1,dispstr);                       
                        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
                        LCDWriteString(0,4,1,dispstr);
                        AZ_Motor_Position = Position;
                       
                       break;
                   default:
                       break;
               }
               
               //update position
                   if(!Get_Actual_Motor_Position(AZ_Amplifier,&Position))
                        LCDWriteString(0,4,1,"Motor Posi.Error...");
                    else
                    {
                        sprintf(dispstr,"Pos:x%08X",Position);
                        LCDWriteString(0,3,1,dispstr);                       
                        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
                        LCDWriteString(0,4,1,dispstr);
                        AZ_Motor_Position = Position;
                    }

               
           }//Kbd processing
//*******************************************           
           if (ETH_Proto_Ptrs.Protocol_State == PROTO_FRAME_RCVD) 
            {
            
                Protocol_Chk(&ETH_Proto_Ptrs);  
           
                if(ETH_Proto_Ptrs.Protocol_State == PROTO_CHKSM_ERROR) //FC byte to be updated
                    FC_byte_in_feedback &= ~CMD_CHKSMOK_MASK;
                else
                    FC_byte_in_feedback |=  CMD_CHKSMOK_MASK;
           
           if  (ETH_Proto_Ptrs.Protocol_State==PROTO_CMD_RCVD)
                {
                //Action to be taken
                    Process_Proto_Cmd(&ETH_Proto_Ptrs);
                    
                                   //update position
                   if(!Get_Actual_Motor_Position(AZ_Amplifier,&Position))
                        LCDWriteString(0,4,1,"Motor Posi.Error...");
                    else
                    {
                        sprintf(dispstr,"Pos:x%08X",Position);
                        LCDWriteString(0,3,1,dispstr);                       
                        sprintf(dispstr,"Pos:%8.2f Rev    ",(double)Position/65535);
                        LCDWriteString(0,4,1,dispstr);
                        AZ_Motor_Position = Position;
                    }

               }
                else
                {
                   printf("\rProto Returned %d",ETH_Proto_Ptrs.Protocol_State) ; 
                   Restart_Proto(&ETH_Proto_Ptrs);
                }
              
            
           }
        
      delay_mS(100);
           
    }
    
    

    
}

void Main_Loop()
{
 USER_RTC_Time MyTime;
 char dispstr[48];
 uint32_t Adress = 0x100;
 uint8_t testbyte = 0x01,readbyte;
 bool done;
 float ttt=0;  
 char cc;
 int i;
    
  
    
   //stage6
   done = false;
   
    LCDWriteString(0,4,1,"Press ENTER to exit. ");
    while(!done)
    {
        GetMachinesRTC(&MyTime);
        sprintf(dispstr,"%02d/%02d/%04d %02d:%02d:%02d ",MyTime.Day,MyTime.Month,MyTime.Year,MyTime.Hour,MyTime.Minute,MyTime.Second);
        LCDWriteString(0,1,1,dispstr);
        sprintf(dispstr,"WriteRead @ %05X:%02X",Adress,testbyte);
        LCDWriteString(0,2,1,dispstr);
        WriteDataFlash(Adress,&testbyte,1);
        ReadDataFlash(Adress,&readbyte,1);
        if(readbyte != testbyte)
        {
            sprintf(dispstr,"Failed @%05X %02X-%02X ",Adress,testbyte,readbyte);
            LCDWriteString(0,2,1,dispstr);    
            LongBeep();
            done = true;
        }
        testbyte++;
        Adress++;
        
        if(Get_Temp(&ttt))
        {
           sprintf(dispstr,"AmbientTemp:%4.1f Deg",ttt); 
           LCDWriteString(0,3,1,dispstr);    
        }
        else
        {
           LCDWriteString(0,3,1,"Temp.Reading Failed ");
           LongBeep();
        }
           
        if(KeyPressed)
        {
            Till_Key_Released();
            //NoKeyTimeOut=0;
            KeyPressed = false;
            ShortBeep();
            if((KeyCode&0xff)==ENTERKEY)
                done=true;
        }
        
         
        delay_mS(100);
        //TODO PCF85063 does not like high-frequency register polling
        //Actually it should be at least 500msec
    }
 //Now Outputs Inputs brakes   
    done = false;
    OUT_IMG = 0;
    BRK_IMG = 0;
    LCDWriteString(0,1,1,"OUT:         BRK:   ");
    LCDWriteString(0,2,1,"Keys654321 Toggle987");
    LCDWriteString(0,3,1,"INP:                ");
    LCDWriteString(0,4,1,"Press ENTER to exit.");
    
    while(!done)
    {
        
        for (i = 15; i >= 0; i--) 
        {
            cc ='0';
            if ((INP_IMG >> i) & 1) 
                cc ='1';
          LCDWritechar(0,3,20-i,cc);
        }
        for (i = 5; i >= 0; i--) 
        {
            cc ='0';
            if ((OUT_IMG >> i) & 1) 
                cc ='1';
          LCDWritechar(0,1,10-i,cc);
        }
        for (i = 2; i >= 0; i--) 
        {
            cc ='0';
            if ((BRK_IMG >> i) & 1) 
                cc ='1';
          LCDWritechar(0,1,20-i,cc);
        }
        
            
//        sprintf(dispstr,"OUT:%06b   BRK:%03b",OUT_IMG,BRK_IMG);
//        LCDWriteString(0,1,1,dispstr);
//        LCDWriteString(0,2,1,"Key:1-6(Out)7-9(BRK)");
        
       if(KeyPressed)
        {
           Till_Key_Released();
           NoKeyTimeOut=0;
            KeyPressed = false;
            ShortBeep();
            switch(KeyCode&0xff)
            {
                case ENTERKEY:
                    done = true;
                    break;
                case ONE:
                    OUT_IMG ^= 0x1;
                    break;
                case TWO:
                    OUT_IMG ^= 0x2;
                    break;
                case THREE:
                    OUT_IMG ^= 0x4;
                    break;
                case FOUR:
                    OUT_IMG ^= 0x8;
                    break;
                case FIVE:
                    OUT_IMG ^= 0x10;
                    break;
                case SIX:
                    OUT_IMG ^= 0x20;
                    break;
                case SEVEN:
                    BRK_IMG ^= 0x01;
                    break;
                case EIGHT:
                    BRK_IMG ^= 0x02;
                    break;
                case NINE:
                    BRK_IMG ^= 0x04;
                    break;
                default:
                    break;
                
            }

            
        }
        
         
        delay_mS(100);
    }
 
    ClearDisp(0);
//ETH Related
    LCDWriteString(0,1,1,"Finding ETH ModuleIP");
    Put_ETH_In_AT_Mode();
    Get_IP_ETH(dispstr);
    if(dispstr[0]==0x0)
    {
        LCDWriteString(0,2,1,"No Response from ETH");
        LongBeep();
    }
    else
    {
        LCDWriteString(0,1,1,"ETH Module IP is:   ");
        LCDWriteString(0,2,1,dispstr);
    }
    Exit_ETH_From_AT_Mode();    
    delay_mS(2000);
    
//Testing CAN / SSI Encoder /Amp 
    Start_Testing_Amp_Enco();
    
    
 //endit   
    LongBeep();
    delay_mS(500);
    LongBeep();
    while(1);
    
}

int main ( void )
{
  char dispstr[32]  ;
  uint32_t Enco;
  double Angle;
    
    PON_Inits(); //This is mandatory Function to be called
    OUT_IMG = 0;
    BRK_IMG = 0;
    ///////
    printf("\rPON wait..");
    
    
    Init_LCD(0);  //Firts LCD intiated
    Init_LCD(1);  //Firts LCD intiated
    ClearDisp(0);
    ClearDisp(1);
    
    
//ETH module and Drive amplifier takes time to reset        
//other wise it does not respond to "+++" but gives response to socket bytes    
    for(int m=6;m>0;m--)
    {
        sprintf(dispstr,"POWER ON START:   %02d",m-1);
        LCDWriteString(0,1,1,dispstr);
        delay_mS(1000);    
    }
    printf("\rWait Over..");
    LongBeep();
    delay_mS(500);
    ShortBeep();
    
    
    LCDWriteString(0,2,1,"Testing Spare GPIOs ");
    Test_Spares_Uni02();
    
    ClearDisp(0);
    LCDWriteString(0,2,1,"Using Second Display");
    ShortBeep();
    
    Check_CAN_Devices();
    
    //LCDWriteString(1,3,1,"Testing Keys..");
    //LCDWriteString(1,4,1,"Press Q on PC");
    //Test_Keys();
    
    System_Booted = true;
    printf("\rSystem Initialized");

    //Test_Keys();
    
    Main_Loop();
 
    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

