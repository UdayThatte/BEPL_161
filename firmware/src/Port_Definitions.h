/* 
 * File:   Ampli_functions.h
 * Author: UT
 *
 * Created on June 9, 2025, 4:37 PM
 */

#ifndef PORT_DEFINITIONS_H
#define	PORT_DEFINITIONS_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

//UART1 is used for Debug across all models
//For this Hardware U6 is not used 
    
#define ETH_AT_PORT_ErrorGet UART3_ErrorGet
#define ETH_AT_PORT_Read UART3_Read
#define ETH_AT_PORT_Write UART3_Write
#define ETH_AT_PORT_ReadAbort UART3_ReadAbort
#define ETH_AT_PORT_ReadCallbackRegister UART3_ReadCallbackRegister
#define ETH_AT_PORT_WriteCallbackRegister UART3_WriteCallbackRegister
    
#define ETH_DAT_PORT_ErrorGet UART4_ErrorGet
#define ETH_DAT_PORT_Read UART4_Read
#define ETH_DAT_PORT_Write UART4_Write
#define ETH_DAT_PORT_ReadAbort UART4_ReadAbort    
#define ETH_DAT_PORT_ReadCallbackRegister UART4_ReadCallbackRegister
#define ETH_DAT_PORT_WriteCallbackRegister UART4_WriteCallbackRegister

    
#define RS422_0_PORT_ErrorGet UART5_ErrorGet
#define RS422_0_PORT_Read UART5_Read
#define RS422_0_PORT_Write UART5_Write
#define RS422_0_PORT_ReadAbort UART5_ReadAbort    
#define RS422_0_PORT_ReadCallbackRegister UART5_ReadCallbackRegister
#define RS422_0_PORT_WriteCallbackRegister UART5_WriteCallbackRegister
    
#define RS232_0_PORT_ErrorGet UART2_ErrorGet
#define RS232_0_PORT_Read UART2_Read
#define RS232_0_PORT_Write UART2_Write
#define RS232_0_PORT_ReadAbort UART2_ReadAbort    
#define RS232_0_PORT_ReadCallbackRegister UART2_ReadCallbackRegister
#define RS232_0_PORT_WriteCallbackRegister UART2_WriteCallbackRegister

#ifdef	__cplusplus
}
#endif

#endif	/* PORT_DEFINITIONS_H */

