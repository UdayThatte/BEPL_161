#include "HW_Testing.h"

extern volatile bool KeyPressed;
extern volatile bool KeyBoardEnable;
extern unsigned int KeyCode;
extern unsigned int kCode;

extern uint8_t I2C_Addrs[];
extern unsigned int FlashSize;
extern unsigned int FlashCap;

extern volatile int32_t mSecCntr;
extern volatile CAN_APP_STATES CAN_state;
extern volatile int TmOut;
extern char ATResponse[];
extern char ETH_AT_Buffer[];
extern uint8_t ETH_DAT_Buffer[];
extern volatile int IN_DAT_BUF;
extern volatile int IN_PNDNT_BUF;
extern volatile bool rcvdATResp,rcvdETHCmd,XmtProgress;
extern volatile int IN_AT_BUF;

extern volatile bool XmtATProgress  ;
extern bool SSI_encode_Fault;
extern uint16_t AmplStatus;

extern Protocol_Info ETH_Proto_Ptrs;
extern Protocol_Info PNDNT_Proto_Ptrs;

extern uint8_t FC_byte_in_feedback;
//extern uint8_t Status_Byte1_in_feedback;
extern bool System_Booted ;

extern volatile I2C_TRANSFER_STATUS transferStatus;
extern volatile bool InputReadEnable;
extern volatile uint8_t OUT_IMG;
extern volatile uint8_t BRK_IMG;
extern volatile uint16_t INP_IMG;

extern uint16_t ADC_Spr1,ADC_Spr2;
extern volatile bool ADC_result_ready;
extern volatile uint32_t NoKeyTimeOut;

void Test_Inps()
{
     uint8_t c=0;
     
     printf("\rNow Testing Digital Inputs..");
     printf("\rPress q during testing to exit the continuous test..\r");
     LongBeep();
     delay_mS(2000);
     while(1)
     {
      printf("\r");
      for (int i = 16 - 1; i >= 0; i--) 
       {
        // Use bitwise AND with a mask to check each bit
        if ((INP_IMG >> i) & 1) 
            printf("1");
         else 
            printf("0");
       }
      delay_mS(100);
     
        c = Read_stdin_if_ready();
       //getchar();

       if((c=='Q')||(c=='q'))
       {
           printf("\rInput Testing Ends..\r\r");
           return;
       }
    }//while
}

void Test_SSI_Enco(uint8_t ChNo)
{
     int n =50;   
     uint32_t Enco;
     uint8_t c=0;
     //
     if(ChNo>2)
     {
         printf("\r\rOnly 0,1,2 Channels are valid..");
         LongBeep();
         return;
     }
     
     printf("\rNow Testing SSI Encoder");
     printf("\rPress r to Reset the Count..\r");
     printf("\rPress q during testing to exit the continuous test..\r");
     LongBeep();
     delay_mS(2000);
     
     while(1)
     {
       Enco  = Get_SSI_Enco_Count_ST(ChNo,true);//gray code
        if(!SSI_encode_Fault)
        {
            double Angle = (double) (Enco&0xfff); // make the value floating point
            Angle = 360.0 * Angle / 4096.0; // calculate actual angle
            printf("\rSSI Hex: %3X Angle:%6.2f",Enco&0xfff,Angle);            
        }
        else
        {
            printf("\r\r SSI Encoder ERROR %d\r\r",CAN_state);
            LongBeep();
            return;
        }
       delay_mS(100);
       
        c = Read_stdin_if_ready();
       //getchar();

       if((c=='Q')||(c=='q'))
       {
           printf("\rSSI Testing Ends..\r\r");
           return;
       }
        
        if((c=='R')||(c=='r'))
        {
            switch(ChNo)
            {
                case 0:
                    SPR4_Clear();
                    delay_mS(100);
                    SPR4_Set();
                    break;    
                case 1:
                    SPR5_Clear();
                    delay_mS(100);
                    SPR5_Set();
                    break;                    
                case 2:
                    SPR6_Clear();
                    delay_mS(100);
                    SPR6_Set();
                    break;                    
                    
            }
        }
       

     }

}

void Test_CAN_Enco(int EncodeNode)
{
       uint32_t Enco,Count=0;
       
       if(EncodeNode==EL_Encode_Node)
           printf("\rNow Testing EL Encoder..");
       else
            printf("\rNow Testing AZ Encoder..");
       
        printf("\rChecking if Encoder Started/Connected..\r\r");                
        do
        {
            Enco = 0xffffffff;
        if(Send_Start_NMT(EL_Encode_Node,&Enco))     
            printf("\r%08X",Enco);
        else 
        {
            Count++;
            printf("\rNo Response to NMT Start %d",Count);
        }
            
        delay_mS(500);
            if(Count==2) //if no response is received means may be not connected 
                        //or already has started
                break;
        }while((Enco & 0xff)!=0x0);//Bootup Message 0x00

       
        
        printf("\rPress q during testing to exit the continuous test..");
        printf("\rPress r to Reset the count of Encoder..");
        LongBeep();
        delay_mS(2000);
        while(1)
        {
                Get_Enco_Count_CAN(EncodeNode,&Enco);
                if(CAN_state == STATE_CAN_IDLE)
                {
                    double Angle = (double) (Enco&0xfff); // make the value floating point
                    Angle = 360.0 * Angle / 4096.0; // calculate actual angle
                    int Revs = (int)(Enco/4096);
                    //printf("\rCAN Hex: %3X Angle:%6.2f\r\r",Enco&0xfff,Angle);            
                    printf("\rHex %08X CAN Rev: %d Angle:%6.2f",Enco,Revs,Angle);
                }
                else
                {
                    printf("\r\r CAN ERROR %d\r\r",CAN_state);
                    LongBeep();
                    return;
                }
                    

        //      
                delay_mS(100);
                uint8_t c = Read_stdin_if_ready();
                if((c == 'Q')||(c == 'q'))
                {
                   printf("\rCAN Enco Testing Ends..\r\r");
                   return;
                }

                if((c == 'R')||(c == 'r'))//remote SET Zero request
                {
                    if(!Set_Zero_For_Enco_CAN(EncodeNode))
                        printf("\rSetting CAN ZeroFailed..! %d\r\r",CAN_state);
                    else
                    {
                        printf("\rSetting Successful..\r\r");                

                        if(!Save_Parameters_To_CAN_Enco(EncodeNode))
                            printf("\rSaving CAN Para Failed..");                
                        else
                        {
                            printf("\rSaving Successful..\r\r");                


                        ///***************************************
                            printf("\rWaiting for BootUp..\r\r");                
                            do
                            {
                            if(Send_Start_NMT(EncodeNode,&Enco))    
                              printf("\r%08X",Enco);
                            else
                               Enco=0xffff;
                            
                            delay_mS(500);
                            }while((Enco & 0xff)!=0x0);//Bootup Message 0x0

   
                            ShortBeep();
                          //This Process takes roughly 1.2 Sec
                         //Giving Delay does not solve this because the next command
                         //issued would get the NMT message 0x701 which leads to error in SDO operation
                       ///***************************************
                        }


                    }

                }
            
        }//while(1))
         
}
void Test_VelocityMode(uint8_t AmplNode)
{
AmplComm_Status stat;
uint32_t timeConsumed = GetSystemMs(),Speed;
uint8_t c;

    stat = Set_Operating_Mode(AmplNode,Ampl_VELOCITY_Mode) ;
    if(stat != AMPL_STATE_OK)
    {
        printf("\rMode Set returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus); //contains MODE_OF_OPERATION_DISPL
        return;
    }
    printf("\rModeSet..\r");
    
    stat = Set_Target_Velocity_Count(AmplNode,1000) ;
     if(stat != AMPL_STATE_OK)
    {
        printf("\rSpeed Set returned %04X\r",stat);
        return;
    }
    
    printf("\rMotor Running..\r");
    printf("\rPress Q to STOP.");

    while(1)
    {
          c = Read_stdin_if_ready();
            if((c=='Q')||(c=='q'))
            {
                printf("\rStopping the Motor..");
                if(!Issue_Quick_Stop(AmplNode))
                {
                    printf("\rQuick Stop Failed");
                    return;
                }
                
                do
                {
                   stat = Get_ActualSpeed_Count_of_Motor(AmplNode,&Speed);
                        if(stat != AMPL_STATE_OK)
                        {
                            printf("\rReading Speed returned %04X\r",stat);
                            return;
                        }
                }while(Speed>1);
                  //wait till actual motion stops                
                printf("\rQuick Stop Successful..");
                return;
            }
       
    }
    

}

void Test_Positioning(uint8_t AmplNode)
{
    AmplComm_Status stat;
    bool Reached;
    uint32_t timeConsumed = GetSystemMs();
    
    stat = Set_Operating_Mode(AmplNode,Ampl_POSITION_Mode) ;
    if(stat != AMPL_STATE_OK)
    {
        printf("\rMode Set returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
    }
    printf("\rModeSet..\r");

    stat = Set_Target_Position_Count(AmplNode,0x7fffff,true) ;//ffff is one revolution
    if(stat != AMPL_STATE_OK)
    {
        printf("\rTarget Position Set returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
    }
    printf("\rPosition Set..\r");
    stat = Issue_GO_Command(AmplNode,true);
    if(stat != AMPL_STATE_OK)
    {
        printf("\rGO Command returned %04X\r",stat);
        printf("\rValue received - %04X\r",AmplStatus);
    }
    printf("\rGO Issued..%d mSec\r",(GetSystemMs()-timeConsumed));

    Reached = false;
    
    printf("\rWait till target is reached..");
    do
    {
        stat = Check_if_Target_Reached(AmplNode,&Reached);
        if(stat!= AMPL_STATE_OK)
        {
            printf("\rTarget Reached Checking returned %04X\r",stat);
            printf("\rValue received - %04X\r",AmplStatus);
        }
      //printf("\rMoving..");
    }while(!Reached);
    
    printf("\rTaget Reached..");
}

void Check_Amplifier(uint8_t AmplNode,bool IsVelMode,char* AmplName)
{
    //uint8_t Node,uint16_t ObjAdr,uint8_t SubIdx,DataBits NoofBits,uint32_t DataToWrite,FIFO_No_for_Resp fifonunm)
   // Write_CAN_Object(AZ_Amplifier,0x1003,0x0,Data_32Bit,0x0,FIFO_Ampl_0+(AZ_Amplifier - CAN_Node_Amp0));
    uint32_t timeConsumed = GetSystemMs();
    uint32_t err;
    AmplOprMode reqmode=Ampl_POSITION_Mode;
    char Reason[64];
    
    if(!Get_Amp_Error_if_Any(AmplNode,&err))
    {
        printf("\rGetting Error from Amp Failed..");
        return;
    }
    if(err)
    {
        printf("\rAmplifier Fault Error Code %04X",err);
        return;
    }
    if(IsVelMode)
    {
        printf("\r\rTesting Amp in Velocity Mode..\r");
        reqmode = Ampl_VELOCITY_Mode;
    }
    else    
        printf("\r\rTesting Amp in Position Mode..\r");
    
    if(!Init_Amplifier_old(AmplNode,reqmode))
    {
        printf("\rInit_Amp Failed AmplStatus - %08X, CANStatus - %d",AmplStatus,CAN_state);
        Get_and_Display_Ampl_Error(AmplNode,Reason,AmplName);
        return;
    }
    printf("\rAmp Initiated..%d",(GetSystemMs() - timeConsumed));
    
    if(IsVelMode)
      Test_VelocityMode(AmplNode);
    else        
      Test_Positioning(AmplNode);
    //
    Disable_Amplifier(AmplNode);
}
void Test_LEDs()
{
    int n=3;
    printf("\r\rTesting CPU LEDs..");
        L0_Set();
        L1_Clear();
        L2_Set();
        L3_Clear();


        while(n)
        {
            LED_STATUS_Toggle();
            L0_Toggle();
            L1_Toggle();
            L2_Toggle();
            L3_Toggle();
            ShortBeep();
            delay_mS(1000);
            n--;
        }
        L0_Clear();
        L1_Clear();        
        L2_Clear();
        L3_Clear();
        LED_STATUS_Clear();
}

void Test_Ops()
{
    int n=2;
    uint8_t c;
    
    printf("\r\rTesting Relay OutPuts..");
    
    OUT_IMG = 1;

        while(n)
        {
            ShortBeep();
            delay_mS(1000);

            OUT_IMG = OUT_IMG << 1;
            if(OUT_IMG==0) 
            {
                OUT_IMG = 1;
                n--;
            }
            c = Read_stdin_if_ready();
            if((c=='Q')||(c=='q'))
            {
                OUT_IMG = 0;
                printf("\rOutput Testing Ends..\r\r");
                return;
            }
        }
    OUT_IMG = 0;
}

void Test_RTC()
{
  int n=10;
  char datetime[16];  
  USER_RTC_Time MyTime;
  char conv[5];
  printf("\r\rTesting On Board RTC..");
  

  
  GetMachinesRTC(&MyTime);
  if(!Check_Validity_Of_RTC_For_BB(&MyTime))
  {
     printf("\rEnter Valid Date&Time (ddmmyyyyHHmm):");
     fgets(datetime,13,stdin);
     memset(conv,0x0,5);
     memcpy(conv,datetime,2);
     MyTime.Day = (uint8_t) atoi(conv);
     
     memcpy(conv,&datetime[2],2);
     MyTime.Month = (uint8_t) atoi(conv);
     
     memcpy(conv,&datetime[8],2);
     MyTime.Hour = (uint8_t) atoi(conv);
     memcpy(conv,&datetime[10],2);
     MyTime.Minute = (uint8_t) atoi(conv);
     MyTime.Second = 0;
     
     memcpy(conv,&datetime[4],4);
     MyTime.Year = (uint32_t) atoi(conv);
     
     SetMachinesRTC(&MyTime);
  }
  while(n)
  {
    GetMachinesRTC(&MyTime);
    printf("\rDate Time: %02d/%02d/%04d %02d:%02d:%02d",MyTime.Day,MyTime.Month,MyTime.Year,MyTime.Hour,MyTime.Minute,MyTime.Second);    
    n--;
    ShortBeep();
    delay_mS(1000);
  }
    
}
void Test_Temp()
{
 int n=3;   
  float ttt=0;  
  printf("\r\rTesting Board Temperature..");
  while(n)
  {
    if(Get_Temp(&ttt))
        printf("\rAmb. Temp. %4.1f Deg ",ttt);
        
     ShortBeep();
     delay_mS(1000);
     n--;
  }

}

void Test_Brakes()
{
    int n =2;
    
    printf("\r\rTesting Brake Relays..");
    BRAKE1_Clear();
    BRAKE2_Clear();
    BRAKE3_Clear();
    BRK_IMG=1;
    while(n)
    {
        ShortBeep();
        delay_mS(1000);

        BRK_IMG = BRK_IMG << 1;
        if(BRK_IMG==0x08) 
        {
            BRK_IMG = 1;
            n--;
        }
        
    }
    BRK_IMG = 0x7;
}
void Test_Keys()
{
    uint8_t c;
    
    printf("\rTesting Keys..");
    printf("\rPress q during testing to exit the continuous test..\r");
    LongBeep();
    delay_mS(2000);
        
    
    KeyPressed = false;
    while(1)
    {
        if(KeyPressed)
        {
            Till_Key_Released();
            NoKeyTimeOut=0;
            KeyPressed = false;
            ShortBeep();
            printf("\rKeyCode - %04X",KeyCode);
            switch(KeyCode&0xff)
            {
                case ZERO:
                    printf("\r0");
                    break;
                case ZERO1:
                    printf("\r0'");
                    break;
                    
                case ONE:
                    printf("\r1");
                    break;
                case ONE1:
                    printf("\r1'");
                    break;
                    
                case TWO:
                    printf("\r2");
                    break;
                case TWO1:
                    printf("\r2'");
                    break;
                    
                case THREE:
                    printf("\r3");
                    break;
                case THREE1:
                    printf("\r3'");
                    break;
                    
                case FOUR:
                    printf("\r4");
                    break;
                case FOUR1:
                    printf("\r4'");
                    break;
                    
                case FIVE:
                    printf("\r5");
                    break;
                case FIVE1:
                    printf("\r5'");
                    break;
                    
                case SIX:
                    printf("\r6");
                    break;
                case SIX1:
                    printf("\r6'");
                    break;
                    
                case SEVEN:
                    printf("\r7");
                    break;
                case SEVEN1:
                    printf("\r7'");
                    break;
                    
                case EIGHT:
                    printf("\r8");
                    break;
                case EIGHT1:
                    printf("\r8'");
                    break;
                    
                case NINE:
                    printf("\r9");
                    break;
                case NINE1:
                    printf("\r9'");
                    break;
                    
                case DOTKEY:
                    printf("\r(.)");
                    break;
                case DOTKEY1:
                    printf("\r(.)'");
                    break;
                    
                case MINUSKEY:
                    printf("\r(-)");
                    break;
                case MINUSKEY1:
                    printf("\r(-)'");
                    break;
                    
                case ENTERKEY:
                    printf("\rENTER");
                    break;
                case ENTERKEY1:
                    printf("\rENTER'");
                    break;
                    
                case READKEY:
                    printf("\rREAD");
                    break;
                case READKEY1:
                    printf("\rREAD'");
                    break;
                    
                case AZKEY:
                    printf("\rAZ");
                    break;
                case AZKEY1:
                    printf("\rAZ'");
                    break;
                    
                case BITKEY:
                    printf("\rBIT");
                    break;
                case BITKEY1:
                    printf("\rBIT'");
                    break;
                    
                case RUNKEY:
                    printf("\rRUN");
                    break;
                case RUNKEY1:
                    printf("\rRUN'");
                    break;
                    
                case ROLLKEY:
                    printf("\rROLL");
                    break;
                case ROLLKEY1:
                    printf("\rROLL'");
                    break;
                    
                case ELKEY:
                    printf("\rEL");
                    break;
                case ELKEY1:
                    printf("\rEL'");
                    break;
                    
                case REFKEY:
                    printf("\rREF");
                    break;
                case REFKEY1:
                    printf("\rREF'");
                    break;
                    
                default:
                    printf("\rUndefined %04X",KeyCode);
                    LongBeep();
                    break;
            }
            Till_Key_Released();
        }
        
       delay_mS(100);
        c = Read_stdin_if_ready();
       if((c=='Q')||(c=='q'))
       {
           printf("\rKBD Testing Ends..\r\r");
           return;
       }
        
    }
    

}

void Test_LCD(uint8_t DispNo)
{
    
    LCDWriteString(DispNo,1,1,"01234567890123456789");
    LCDWriteString(DispNo,2,1,"ABCDEFGHIJKLMNOPQRST");
    LCDWriteString(DispNo,3,1,"abcdefghijklmnopqrst");
    LCDWriteString(DispNo,4,1,"tsrqponmlkjihgfedcba");
    delay_mS(1000);
    LCDWriteString(DispNo,2,1,"01234567890123456789");
    LCDWriteString(DispNo,3,1,"ABCDEFGHIJKLMNOPQRST");
    LCDWriteString(DispNo,4,1,"abcdefghijklmnopqrst");
    LCDWriteString(DispNo,1,1,"tsrqponmlkjihgfedcba");
    
    LCD_Set_Blinking_Cursor_OFF(DispNo);
}

void Test_ADC()
{
     uint8_t c=0;
     ADC_Spr1 = 0;
     ADC_Spr2 = 0;
	 ADC_result_ready = false;

     printf("\rNow Testing ADC..");
     printf("\rPress q during testing to exit the continuous test..\r");
     LongBeep();
     delay_mS(2000);
     while(1)
     {
        ADC_ConversionStart();
          
         if(ADC_result_ready)
		//if previous conversion is complete then only read
		   {
             
             ADC_result_ready = false;
             printf("\rADC Count SPR1:%04X SPR2:%04X",ADC_Spr1,ADC_Spr2);
             printf("\rVoltage SPR1: %3.1f V SPR2: %3.1f V",((double)ADC_Spr1/0x3ff)*2.5,((double)ADC_Spr2/0x3ff)*2.5 );
           }
        
        delay_mS(50);
     
        c = Read_stdin_if_ready();
       //getchar();

       if((c=='Q')||(c=='q'))
       {
           printf("\rADC Testing Ends..\r\r");
           return;
       }

     }

}

void Test_Spares_Uni02()
{
//TODO this will change as per Base board UNI02/03
    int n=5;
    printf("\r\rTesting SPR GPIOs..");
    
    SPI_CS1_Clear();
    SPI_CS2_Clear();
    INTR1_Set();
    SPR5_Set(); //for UNI02 as Only one SSI is conneted for Demo Tis can be used
    SPR6_Set(); //for UNI02 as Only one SSI is conneted for Demo Tis can be used

        while(n)
        {
            SPI_CS1_Toggle();
            SPI_CS2_Toggle();
            INTR1_Toggle();
            SPR5_Toggle(); 
            SPR6_Toggle();             
            ShortBeep();
            delay_mS(1000);
            n--;
        }
        SPI_CS1_Set();
        SPI_CS2_Set();
        INTR1_Clear();
        SPR5_Clear(); //for UNI02 as Only one SSI is conneted for Demo Tis can be used
        SPR6_Clear(); //for UNI02 as Only one SSI is conneted for Demo Tis can be used

}
