#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <stddef.h>                     // Defines NULL
#include <stdlib.h>                     // Defines EXIT_FAILURE

//Application Specific Globas can be defined here

#include "Ampli_functions.h"    

volatile uint8_t Status_Byte1_in_feedback = 0xFF;
//* Following are the current Positions of the Encoders
uint32_t EL_Enco_Position; //CAN now
double EL_Enco_Angle; 

uint32_t AZ_Enco_Position; //SSI now
double AZ_Enco_Angle;

uint32_t EL_Motor_Position;
uint32_t AZ_Motor_Position; //Currently connected Hex value
//*******************************************
uint16_t  AZ_Enco_GR = 1; //shoud be integer
uint16_t  EL_Enco_GR =  1;    

Ampl_Paras AZ_Paras = {
    .motor_rotation_direction = 1,
    .GR_motor_to_load = 128.0,
    .Max_Positive = 359.99,
    .Max_Negative = -359.99,
    .AmplCountForOneRot = 65536,
    .Max_Velocity = 150.0,
    .default_Velocity = 140.0,
    .default_acc = 190.0
}; 

Ampl_Paras EL_Paras = {
    .motor_rotation_direction = -1,
    .GR_motor_to_load = 164.07,
    .Max_Positive = 90.0,
    .Max_Negative = -90.0,
    .AmplCountForOneRot = 65536,
    .Max_Velocity = 90.0,
    .default_Velocity = 60.0,
    .default_acc = 80.0
            
};


