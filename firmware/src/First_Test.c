#include "First_test.h"
#include "App_Protocol.h"
extern volatile bool KeyPressed;
extern unsigned int KeyCode;

extern char ATResponse[];
extern char ETH_AT_Buffer[];
extern uint8_t ETH_DAT_Buffer[];
extern volatile int IN_DAT_BUF;
extern volatile int IN_PNDNT_BUF;
extern volatile bool rcvdATResp,rcvdETHCmd,XmtProgress;
extern volatile int IN_AT_BUF;
//
//
extern Protocol_Info ETH_Proto_Ptrs;
extern Protocol_Info PNDNT_Proto_Ptrs;
//
extern uint8_t FC_byte_in_feedback;

extern bool System_Booted ;


extern volatile bool InputReadEnable;
extern volatile uint8_t OUT_IMG;
extern volatile uint8_t BRK_IMG;
extern volatile uint16_t INP_IMG;

extern volatile uint32_t NoKeyTimeOut;
extern volatile bool Start_ETH_fb ;

void Main_Loop_Our()
{
    uint32_t Enco;
    uint8_t n;
    double Value;
    char testtime[10];
    USER_RTC_Time MyTime;
    
    ReadDataFlash(LastTestingTime,testtime,9);
    MyTime.Day = testtime[0] ;
    MyTime.Month = testtime[1]  ;        
    MyTime.Hour = testtime[2]  ;        
    MyTime.Minute = testtime[3] ;        
    MyTime.Second = testtime[4];        
    memcpy(&MyTime.Year,&testtime[5],4);
    
    if(Check_Validity_Of_RTC_For_BB(&MyTime))
        printf("\rLast Tested: %02d/%02d/%04d %02d:%02d:%02d",MyTime.Day,MyTime.Month,MyTime.Year,MyTime.Hour,MyTime.Minute,MyTime.Second);
    else 
        printf("\rTesting for the First Time..");
    
    Test_RTC();
    
    Test_Keys();
    Init_LCD(0);
    //Init_LCD(1);
    Test_LCD(0);
    //Test_LCD(1);
//    printf("\rEnter a Numeric Value on Display");
//    if(Enter_Numeric_Data(0,5,2,4,&Value,30))
//        printf("\rEntered Value: %f",Value);
//    else
//        printf("\rNo Value Entered");
    
    
    
    Test_LEDs();
    Test_Ops();
    Test_Brakes();
    Test_Temp();
    Test_Inps();
    Test_SSI_Enco(0);//CH0
    
    Test_CAN_Enco(EL_Encode_Node);

    
    Check_Amplifier(AZ_Amplifier,true,"AZ Amplifier");//velocity mode
    delay_mS(2000);
    Check_Amplifier(AZ_Amplifier,false,"EL Amplifier");//position mode
    
    GetMachinesRTC(&MyTime);
    testtime[0] = MyTime.Day;
    testtime[1] = MyTime.Month;        
    testtime[2] = MyTime.Hour;        
    testtime[3] = MyTime.Minute;        
    testtime[4] = MyTime.Second;        
    memcpy(&testtime[5],&MyTime.Year,4);
    WriteDataFlash (LastTestingTime, testtime,9);

 
    Test_ADC();
    Test_Spares_Uni02();
    
 
    //printf("\r\rResetting ETH Module..");
    //Reset_ETH_Module();
    Put_ETH_In_AT_Mode();
    
    
    if(Send_AT_Cmd_To_ETH("AT#CURIP?\r","OK>",1000)) //Current IP
    {
        strcat(ETH_AT_Buffer,"\r");
        printf(ETH_AT_Buffer);
    }
    else
     printf("\rNo Response to CURIP");
    
    delay_mS(1000);//Allow to complete response string
    

    if(Send_AT_Cmd_To_ETH("AT#CURMK?\r","OK>",1000)) //Current Mask
    {
    strcat(ETH_AT_Buffer,"\r");
    printf(ETH_AT_Buffer);
    }
    else
      printf("\rNo Response to CURMK");

    delay_mS(1000);//Allow to complete response string    
    
    
    if(Send_AT_Cmd_To_ETH("AT#CURGW?\r","OK>",1000)) //Current GW
    {
     strcat(ETH_AT_Buffer,"\r");
     printf(ETH_AT_Buffer);
    }
    else
      printf("\rNo Response to CURGW");

    delay_mS(1000);//Allow to complete response string
    

    if(Send_AT_Cmd_To_ETH("AT#CURDN?\r","OK>",1000)) //Curent DNS
    {
        strcat(ETH_AT_Buffer,"\r");
        printf(ETH_AT_Buffer);
    }
    else
     printf("\rNo Response to CURDN");
    
    delay_mS(1000);//Allow to complete response string    
    

    if(Send_AT_Cmd_To_ETH("AT#CURST?\r","OK>",1000)) //Current State
    {
        strcat(ETH_AT_Buffer,"\r");    
        printf(ETH_AT_Buffer);
    }
    else
      printf("\rNo Response to CURST");
    
    delay_mS(1000);//Allow to complete response string

    if(Send_AT_Cmd_To_ETH("AT#CURS0?\r","OK>",1000)) //State ch0
    {
        strcat(ETH_AT_Buffer,"\r");    
        printf(ETH_AT_Buffer);
    }
    else
     printf("\rNo Response to CURS0");
    
    delay_mS(1000);//Allow to complete response string

    if(Send_AT_Cmd_To_ETH("AT#CURS1?\r","OK>",1000)) //State ch1
    {
        strcat(ETH_AT_Buffer,"\r");    
        printf(ETH_AT_Buffer);
    }
    else
      printf("\rNo Response to CURS1");
    
    delay_mS(1000);//Allow to complete response string

    if(Send_AT_Cmd_To_ETH("AT#CURMA?\r","OK>",1000)) //MAC id of module
    {
        strcat(ETH_AT_Buffer,"\r");    
        printf(ETH_AT_Buffer);
    }
    else
     printf("\rNo Response to CURMA");
    
    delay_mS(1000);//Allow to complete response string    

    if(Send_AT_Cmd_To_ETH("AT#SER0LN?\r","OK>",1000)) //Listening or Not
    {
        strcat(ETH_AT_Buffer,"\r");    
        printf(ETH_AT_Buffer);
    }
    else
     printf("\rNo Response to SER0LN");   
    
    delay_mS(1000);//Allow to complete response string        
    
    Exit_ETH_From_AT_Mode();

    
    
    
   Init_Protocol_stack_On_ETH();
   Init_Protocol_stack_On_PNDNT();
   
   
   Start_ETH_fb = true; //start sedning 100msec fb byte

        
 /////////////////////////////////////////////////////   START   OPERATION
   
    while ( true )
    {
        
        if (ETH_Proto_Ptrs.Protocol_State == PROTO_FRAME_RCVD) 
        {
            Protocol_Chk(&ETH_Proto_Ptrs);  
           
           if ( (ETH_Proto_Ptrs.Protocol_State==PROTO_CMD_RCVD) ||
                (ETH_Proto_Ptrs.Protocol_State == PROTO_CHKSM_ERROR)  //in case of Chksm error also response is to be sent!! 
               )    
           {
              //process Cmd and send Response
               if(ETH_Proto_Ptrs.Protocol_State == PROTO_CHKSM_ERROR) //FC byte to be updated
                   FC_byte_in_feedback &= ~CMD_CHKSMOK_MASK;
               else
                   FC_byte_in_feedback |=  CMD_CHKSMOK_MASK;
        
//               printf("\r");
//               for(int n=0;n<10;n++)
//                   printf("%02X ",ETH_DAT_Buffer[n]);
//               printf("\r");
               //TODO Process the command for action and Send response or send response and process command??
               Send_Response_ETH();
               printf("\rCmd Received..") ;
           }
              
           else
              printf("\rProto Returned %d",ETH_Proto_Ptrs.Protocol_State) ; 
            
        }
        
//        if(rcvdETHCmd)
//        {
//          rcvdETHCmd = false;  
//          Send_DATA_Str_to_ETH((uint8_t*)"HelloWorld",10);  
//        }
        //printf("\rdone..");
        
        
//        if(rcvdATResp)
//        {
//            rcvdATResp = false;
//            Send_AT_Cmd_To_ETH("AT#CURST?\r","OK>",100); //AT#CURIP?  AT#CURST?
//            delay_mS(50);//Allow to complete response string
//            printf(ETH_AT_Buffer);
//            rcvdATResp = false;
//            Send_AT_Cmd_To_ETH("ATO\r","Returning",100); //Returning to listening connection / idle
//            delay_mS(50);//Allow to complete response string
//            printf(ETH_AT_Buffer);
//            rcvdATResp = false;
//        }
        
        delay_mS(500);            
        
    }

}

