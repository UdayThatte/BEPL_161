/* 
 * File:   App_Protocol.h
 * Author: UT
 *
 * Created on January 29, 2026, 4:54 PM
 */

#ifndef APP_PROTOCOL_H
#define	APP_PROTOCOL_H

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <strings.h>
#include "definitions.h"                // SYS function prototypes

#ifdef	__cplusplus
extern "C" {
#endif
//Bit definitions for FC Byte in feedback response 
//for FC_byte_in_feedback
#define CMD_CHKSMOK_MASK 0x01 //1 chksm OK
#define CMD_RCVD_MASK  0x02 //1 valid cmd rcvd
#define Readiness_MASK 0x04 //
#define Mode_Auto_Man_MASK 0x08 //1 auto 0 man
#define ARS_Stat_MASK 0x10 //1 Lifted
#define Stow_Lock_MASK 0x20 //0 engaged 1 released
#define APU_Em_Stop_MASK 0x40// 0 Active 1 open   
#define PNDNT_em_Stop_MASK 0x80 //0 Active 1 open   
//    

//prepare 10 bytes string for this particular aplication
void Prepare_fb_string();


#ifdef	__cplusplus
}
#endif

#endif	/* APP_PROTOCOL_H */

