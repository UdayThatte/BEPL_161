#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../src/App_Globals.c ../src/App_Protocol.c ../../../BEPL_T/firmware/src/API/Gyro_Process.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d ${OBJECTDIR}/_ext/1701374055/Protocol.o.d ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d ${OBJECTDIR}/_ext/1701374055/RTC.o.d ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d ${OBJECTDIR}/_ext/1701375116/Events.o.d ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Beeps.o.d ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d ${OBJECTDIR}/_ext/1342495810/Utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d ${OBJECTDIR}/_ext/1360937237/First_Test.o.d ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o

# Source Files
SOURCEFILES=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../src/App_Globals.c ../src/App_Protocol.c ../../../BEPL_T/firmware/src/API/Gyro_Process.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MX795F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/d4908e6bbb717a57263d0a847f04fd8210dd436d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/f4a62d5df79335476491b16afa9f5250ef27f9d9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/bacb7a8d24bdf295f79a577e6e240cf19943f816 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/5842b0911352dc1c8f997b9877af7e7419c8e8d8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/34e33f4f1c52e067f9713707454df1bc9006d51a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/65837a724871d7127f96e76f6bca40fba19afe55 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/13c98ea36ddb5ddc2f31fb264e4a22add7e09e81 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/16db12615f5894be2e6891466ebd4c444bb37ac2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/ebeadf91806326f18a5de84fd1b44a15a80300a5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/2376c1a6f43dd08d713c56117c54f87ff8849c7a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/cfaf8174df4788a66ec6a9b7fa4e5fad49403ae5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/be9b2f17cf8b7ad3212ed1f491f3ab294e61454b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/74d97ff22f003506895a2721683d88f913114cf0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/b5b35a3d8ef8a47f78cadeeb9d86dc9abaa6f7c0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/baf34ce3dd1a7a665a606c6f34434afba9b92508 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/cdd749027b6910e82e4f0a8009a5b45cc834da91 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/752b00279c298092e7e4f87d63edcd5d911eadcc .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/654821ed71e6ed34b4abb28a5ccee120a45eb4aa .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/6ade8aa38ab5c0218da37ffe2460324670de9e65 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/381a9fb9068ac4a48a7aa1ea56a7fca12ea3610a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/c8aab3c21e6a845cf0a64a32311b9fc4c430e8c8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/b62cf33ff98dea5ed80a792f70cefc78c801996a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/d13c56a63b3a55f025e849ec2b2e8beadf7e9a43 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/c54fd3357dcd9de45784455d681ae8d714ded55c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/ae53c281c1e19d496d9e3990c5461505e4443629 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/1048c488ae5215cf84140b454f007946b0aa4324 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/7180d4ba70b7b3f339537cde38c210b4f39b56ff .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/8c83372065187fcecf960dadb89f98a7a1d2b485 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/2336ca23d4b540b25b06a3e39d0ff7376760a0df .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/46cce496ad80ec96ed4f70a77ad609832467fce .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/2617cc681c2417505b9e59baf8500543b9288ad2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/c21168d4cb019c0c55be9ce64755d687ee30ecf0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/d3d061b8a7755ba06d199b0acb44cfe754cfaf09 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/49558188f736f5162ef89417b419db4fea694676 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/913553aa2f7911e5bfb68c94fa974440affbec3f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/c765182b16ef41b6bb0c2c57a6bec9933866e978 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/d0b6cef9c7ae902e4d21a7396ccd96ceab316223 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/37e3e9a1be66e7c0ac9b834e8381462d1f753916 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/101ce5cd88ac09ebe6a0c84732d39170410e16af .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/3dbb34e58a5bba79fd903205ff60a902fcbaa2d1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/b7a9abc5e92b66cad0cc6543e37c5f5eed54669b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/2f89855c2f54431fe8a703b3394c0c9b2f4f5b4c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/c798897aeb0d40d27d520d9437d7f9c05f053f9a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/f4082d2a0e9a337a0b098679565d72545c367609 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/d2e9844ff70663a0440e530c28975e28cd64edff .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/5dc913535ef807113cb054b084452abfaf5be23e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/a9cacdfd725d6471bc90920ee298a55e9f60796e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/5c50c8794226094f76f40ceeb59d6bf1a6e046e3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/d878356c5652200141eb240cc49d291738a2accc .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Gyro_Process.o: ../../../BEPL_T/firmware/src/API/Gyro_Process.c  .generated_files/flags/default/987ef3f01347c48185fa66c8df4d62b704b1e918 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d" -o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o ../../../BEPL_T/firmware/src/API/Gyro_Process.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/fc3aa6a7f7a57be6cdd8df43e18b87773850bc28 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/89b03db50f710dbbadb59db6b0fcf7857eda18ff .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/bfc2d7ea8591ef624119ed0403619a71b8504bec .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/5192ff67ebc03ac49a325451ab6e31e0f21a7582 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/c144a55c415d0f5f0fd21ace07f4a1985db4ec36 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/dd6d30b4c5af0bb86d45e344daa10f4234d95e4d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/beae45959de040ef4a1e72a9409e12505d2cf332 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/41bdb21a49651d7f74c7fe62e95ce7555a94aa11 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/4323c86db000f138be7bb65fc4ef776d482541a8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/273d54a2b43e9abc345dd442371c2614ac1bc9b7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/f99a891da3be2f58c9e44deac24a0d1654c92c9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/a6d4b421c8a4f10fbb4c8fee6641a2de68963f64 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/1827b1a5487c0b1c1c4c4e463dc6b65d53510364 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/fccb0ef223332d46883b56c43ebd41e3ea072872 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/baa57a2528c24f5ae12c22bab7e98c280b6532fa .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/d30051d57401800bbbb332363ecdbb72840382f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/68bafd31232e86fe62ff8e458743a25d7af0dba8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/288409dc91b1d9acbe015d0621f55ca9ee97d323 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/ee3e86fe824ba4ac83cc968c743cfd62475d444e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/4930c171c05ef60b0416fc3b833f65b756571c13 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/f768886d973d638506e586b03dc0faaf255d8cb3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/e58a274c30575a1c6ce9d358bd5f90d6855c1c25 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/9e43a1af9de9dbdaba56496d71b7a5ba6e606a14 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/4a0d2812c0ca9bfdc1e4153fe8464cfb903e5594 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/46d289c8d3ab0f62494a67205f85624361eaec52 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/fe1a4a2664e4038ac158f7f38156fff1344a7bcc .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/4c7e3da3df2ddd87f19ae157b1eb61ebac5a3cf3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/63e1e3d889335e3d0525949d4670783a825631b4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/4ec5dd3733af5c78907ced6ccf2a69e58df9a464 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/721575fbe075a4a84200fff21a6941eeeee7d8cb .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/1689a74b705aaed6a17365767d69607cac3fdfb0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/d1215437b48a5e23069664d803d78ddca8daf7ee .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/7e20fb23d68fa50f502fe57defcda6800ba0e420 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/c0a22624d101ac88965b33a98316b18fc3c694e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/f9383518224348cd9658bed524069d1a5f8da4b4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/eba39233598cc10f7fe17ae25c5d3f0aa0f7ec .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/db228e3beed600cab3e19baa605b503780a6a6e7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/1ad5a02f72a89f8f1b7f8925117c9634e7ca88c8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/4cb38d76fb3fb5fd33ab86d929cc39658a152a9b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/ad2ddbcf0a40e106b39f93e0332d9255726334bf .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/f4321af3a877b850fa928f9f610aaccbc93705e9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/d050de556e16d2c6855d10094f87f5e5f65848f2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/139d09ae82affdfabd5215f676a4c4da85f13b7d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/efe63b5e77d586c99ba48d8c3da1fbaf31ed11a6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/93ecce0fa053b7bacf5efc21c92671fa737a8b89 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/bdad6f2b94437f1447e0684b17552fe45889c360 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/acd55d93fba8ae3563cf4a3447759a62e4118aa8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/a4c0b1571932cfd7826b65e44e9da0370f45cea6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/b7e8e1e18c5d26f066da838337cea4135a326207 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Gyro_Process.o: ../../../BEPL_T/firmware/src/API/Gyro_Process.c  .generated_files/flags/default/ad95ed8e65c5bb70328c8b8bccb40add1de3270e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/Custom" -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d" -o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o ../../../BEPL_T/firmware/src/API/Gyro_Process.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX795F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX795F512L.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/BEPL_161.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
