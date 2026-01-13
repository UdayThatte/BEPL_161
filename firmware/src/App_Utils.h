/* 
 * File:   App_Utils.h
 * Author: UT
 *
 * Created on November 13, 2025, 6:59 PM
 */

#ifndef APP_UTILS_H
#define	APP_UTILS_H

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <strings.h>
#include "definitions.h"                // SYS function prototypes


#ifdef	__cplusplus
extern "C" {
#endif

//len -indicates no of characters expected including decimal + sign position
//e.g. if expected is xxx.y then len should be 6
bool Enter_float_Data(uint8_t DispNo,int len,uint8_t row,uint8_t col,double* EnteredVal,uint16_t TimeoutinSecs);

#ifdef	__cplusplus
}
#endif

#endif	/* APP_UTILS_H */

