/* 
 * File:   HW_Testing.h
 * Author: UT
 *
 * Created on November 25, 2025, 5:34 PM
 */

#ifndef HW_TESTING_H
#define	HW_TESTING_H

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes


#include "Events.h"
#include "System_Configuration.h"
#include "Beeps.h"
#include "AtmelFlashMem.h"
#include "RTC_Comm.h"
#include "BoardTemp.h"
#include "I2C_Comm.h"
#include "CAN_Comm.h"
#include "ETH_Module_Com.h"
#include "Ampli_functions.h"
#include "BoardTemp.h"
#include "CAN_Enco_Com.h"
#include "Protocol.h"
#include "Utils.h"
#include "RTC.h"
#include "BEPL1420KB.h"
#include "LCD_functions.h"

#ifdef	__cplusplus
extern "C" {
#endif

#define LastTestingTime 0x10UL
    
    
void Test_Inps();
void Test_SSI_Enco(uint8_t ChNo);
void Test_CAN_Enco(int EncodeNode);
void Test_VelocityMode(uint8_t AmplNode);
void Test_Positioning(uint8_t AmplNode);
void Check_Amplifier(uint8_t AmplNode,bool IsVelMode,char* AmplName);
void Test_LEDs();
void Test_Ops();
void Test_RTC();
void Test_Temp();
void Test_Brakes();
void Test_Keys();
void Test_LCD(uint8_t DispNo);
void Test_ADC();
//toggles Spare GPIO available on the UNI02 board
void Test_Spares_Uni02();

#ifdef	__cplusplus
}
#endif

#endif	/* HW_TESTING_H */

