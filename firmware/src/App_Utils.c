#include "App_Utils.h"
#include "LCD_functions.h"
#include "BEPL1420KB.h"
#include "strings.h"

extern unsigned int KeyCode;
extern volatile bool KeyPressed;
extern volatile uint32_t NoKeyTimeOut;

bool Enter_float_Data(uint8_t DispNo,int len,uint8_t row,uint8_t col,double* EnteredVal,uint16_t TimeoutinSecs)
{
//deci is no of digits from right side should be < digits
//unsigned char ss[20];
long entered_val;
long maxval=1;
unsigned char ptr,n;
char dStr[32],pressed=0;
char* p;

    memset(dStr,0x0,32);
    memset(dStr,' ',len);
	//entered_val = strtol (EditedStr, NULL, 10);
	//sprintf(ss,fmtStr,entered_val);
	//LCDWriteString (at_x,at_y, ss, 1, 0, 0, 0);
	
//	strcpy(ss,"                    ");
//	strcpy(ss,"  TEST CURSOR       ");
//	LCDWriteString (0,2 , ss, 1, 0, 0, 1);
 	LCD_Set_Blinking_Cursor_ON(DispNo);
	NoKeyTimeOut=0;
    KeyPressed = false;
    LCDWriteString (DispNo,row,col,dStr);
    Set_Cursor(DispNo,row,col+len-1);
    
	while(1)
		{
			if(KeyPressed)
			{
					ShortBeep();
					NoKeyTimeOut=0;
					Till_Key_Released();
                    KeyPressed = false;
                    switch(KeyCode & 0xff)
                    {
                        case MINUSKEY:
                            pressed = '-';
                            break;
                        case ZERO:
                            pressed='0';
                            break;
                        case ONE:
                            pressed='1';
                            break;                            
                        case TWO:
                            pressed='2';
                            break;                            
                        case THREE:
                            pressed='3';
                            break;                            
                        case FOUR:
                            pressed='4';
                            break;                            
                        case FIVE:
                            pressed='5';
                            break;                            
                        case SIX:
                            pressed='6';
                            break;                            
                        case SEVEN:
                            pressed='7';
                            break;                            
                        case EIGHT:
                            pressed='8';
                            break;                            
                        case NINE:
                            pressed='9';
                            break;                            
                        case DOTKEY:
                            //if this already contains a dot ignore
                            p = strchr(dStr,'.');
                            if(p == NULL) 
                                pressed='.';
                            else
                                pressed = 0;
                            break;
                        case ENTERKEY:
                            LCD_Set_Blinking_Cursor_OFF(DispNo);
                            //fill all spaces with zero
                            Replace_char(dStr,' ', '0');
                            *EnteredVal = strtod(dStr,NULL);
                            return true;
                            break;
                        default: //ignore
                            pressed=0;
                            break;
                    }//switch
                    
                    if(pressed == '-')
                    {
                        if(dStr[0]=='-') 
                            dStr[0] = ' ';
                        else
                            dStr[0] = '-';
//                        else
//                        {
//                            for(int n=len-1;n>=0;n--)
//                                dStr[n] = dStr[n-1];
//                            dStr[0] = pressed;
//                        }
                        
                      LCDWriteString (DispNo,row,col,dStr);
                      Set_Cursor(DispNo,row,col+len-1);
                        
                    }
                    else
                    {
                        if(pressed != 0)
                        {
                        for(int n=2;n<len;n++)
                            dStr[n-1] = dStr[n];
                        
                        dStr[len-1] = pressed;
                        LCDWriteString (DispNo,row,col,dStr);
                        Set_Cursor(DispNo,row,col+len-1);
                        }

                    }

                    
            }//keypressed
            
            if (NoKeyTimeOut > ((uint32_t)TimeoutinSecs * 1000))
            {
                LCD_Set_Blinking_Cursor_OFF(DispNo);
                return false;
            }
                
        }//while
}
