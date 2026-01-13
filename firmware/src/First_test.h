/* 
 * File:   First_test.h
 * Author: UT
 *
 * Created on December 23, 2025, 5:54 PM
 */

#ifndef FIRST_TEST_H
#define	FIRST_TEST_H

#ifdef	__cplusplus
extern "C" {
#endif
#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include "Port_Definitions.h"
#include "Sys_Inits.h"

#include "HW_Testing.h"
#include "Beeps.h"
#include "Events.h"

void Main_Loop_Our();



#ifdef	__cplusplus
}
#endif

#endif	/* FIRST_TEST_H */

