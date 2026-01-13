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
SOURCEFILES_QUOTED_IF_SPACED=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/CAN_Enco_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/Global.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/Global.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o.d ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d ${OBJECTDIR}/_ext/1701374055/Protocol.o.d ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d ${OBJECTDIR}/_ext/1701374055/RTC.o.d ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d ${OBJECTDIR}/_ext/1701375116/Events.o.d ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Beeps.o.d ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d ${OBJECTDIR}/_ext/1342495810/Utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/Global.o.d ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d ${OBJECTDIR}/_ext/1360937237/First_Test.o.d ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/Global.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o

# Source Files
SOURCEFILES=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/CAN_Enco_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/Global.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c



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
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/285721994a15468d6f98ed9b46dcaa8814e9a8a2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/df3c120abb0382a9b7a51182ade6d75327958f16 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/API/CAN_Enco_Com.c  .generated_files/flags/default/6e827adc8ff140ab5fe4b0cf762c95d5e85bddf .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/API/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/6dbf83637eb128c4897ac161dfbba28425e11d82 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/f98e60500b05fce3e9866cbfa22da5246041f598 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/ea0c9d7e32e61c61e96f5a454117bd09dcfbbff1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/65d563e4814de83a965e79a6ea0f9cf902c79077 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/63f06226afcfb652b209867ab025187b434500e2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/74348cf75356c7501bba9b58777890efea0b91ab .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/aecb7ed37054220236bb81b4dbf519294e3d7106 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/f7798f47f9732f9a272d33fcb89ab33dea19692 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/6b175331ec0d8495b0c77ca567d2ee6f9d290ce0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/4cf99eeec1f035072a3257d61a90fc43eba88836 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/5bc1620e2480d338a8d22829eb4d54ec037a7f32 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/ff8afd5c511a36918717e72d05865cc3282e60dc .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/86c71d426d3af5a89acedf06ec49072a42090d9d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/132d588778acd03be971e2b4260c2a807f89ee60 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/a16a839c2841f939222370dd4fa8e964e779b817 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/a9eaa6771576ee71ab19692c329a6de87827a28e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/f02e5e99f21eb5e730387b1cde8fe12749d5ffdf .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/28a75c0c8c9a6fa12f57e0865a351ef2a1d79f1b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/493fc873f53e06e2b5438f4d5fd2ee9284f7617b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/200d83d55df6eb148300909bd76d013c12bf7aa9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/8068e7f894b06c87fcb7487bff66d3d8065576c0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/d5c7b7849036f183e28f30428bfdec31daaa986a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/ff38314da8de98c3e760743134ce915b01c04177 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/6d2d160a7ce0b6e08d651a01719fa732a8c4599f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/67778f7445793ab205a55a0f835aa6e1b7900468 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/7147ca0efcd6cb89a4bbd585efc44fe3e5a3ef85 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/e931166aa67cdb0e5a44442b1a1a343422863612 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/3927fbcaa51eb5270efa2c8a6b682b813e23db31 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/10756956cd53caf037ace960ef16405c8de1b191 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/d393e28234833d25b8716c81fb7ca53f5fe45798 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/35b189b526d2064c8084284b9dcbc419fe64edb1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/18d2a3edd66abb75f447d79f3e29b59db4a39148 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/ea0987753e5c8534b014cd344a904dc83c098582 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/dcc46ddda3ca0041ea3bd0db1607bc904e1bf1a9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/8b83ee7748d057895702d3a2f14698e8872c9cbb .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/32608dc42c30b7e46f4d672eea2253654e4fe8c8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/f5b8bbb9c9f4cea6720a8051903dfa4b42307c05 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/a1f8eb6e5e886ac16cbe43e46e0a7a2bb8c35c65 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/3b4500c53e70a6f387d45f734d90b474121483c7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/8571808ccc2728e37e735893e0be1dc8e6dfb628 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Global.o: ../src/Global.c  .generated_files/flags/default/cb1fdf9a28294f156158d936c00d08c14cfd8a79 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Global.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Global.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Global.o.d" -o ${OBJECTDIR}/_ext/1360937237/Global.o ../src/Global.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/1198ed77f10f293488af24c45228eea8187e25a3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/ee6786be334c7b575eb5753c829bc1653851917d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/c7c9c1a2f2b96697e583ad76dafdb6e846f654f2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/2b5ed4ff369d3e910ad5eab57f9e35f87971fdd .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/2f1eeae2741c88bd320c067b0d87d5d8dc27d390 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/54b2dba0cc00fc0a377ff8a31e0914633e7dcd3f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/API/CAN_Enco_Com.c  .generated_files/flags/default/f1c5a7756d45586df515f9223550b356e2b0c74a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/API/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/51d4c64d9c3ba9bb09956d014ce62df80f76c0d4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/60ba18cbf11b8e5a2c57ae1995b54b2140fcf327 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/ee4d1f31ef1a0cc3c624bf3c71b9369ea344173d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/aaf12ece78bbc38b0e56103b9ff60d12be141242 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/c71ce908eee4b23f2c7fc95a7611738d91ed18e1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/aee4ebc8db800cb39084d973f0042564ffab8d3b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/408747f3099165cbbf3cbfa7aa499b62cc54926 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/435ac5c23e271fba40fad0be66e2dad1461c213c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/2c095690b56f728abade329570f098a58a8ebc82 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/14760e549d7e11cc26bc645aa6a16ab8ab83bae4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/90f455c729a7d6d48a8e04260b633282392d22f0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/b9c9c53d6642fed73be2df8b27de1acc477416e0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/ee2c5c87711d8c1b48b523b6d3974a00f9e41714 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/a54415ae63a80d03b06813017ff4a90346831ae3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/e983daff124c7a3959f8dd57e4cadef0abb4fff9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/3b9f8b924224686596d47144e1e6989502a331a6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/6e8abfd23597e51d77704644712962c6fee866df .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/69b5a58a49139ef039c719aa97b4a92cd48e34a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/3716a9803bdaa11f04ce104b9a20b2c1bb4b746e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/f49d6fc380e77d201a7482a69d7fc74e6e520cd9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/a4c136dc3e586e318be9b9a4cc67aacc2f7a3e23 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/b355ddd54eb91204adda8f8441e8eae2b2b4cb02 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/bc36b83bfea7a4b29f73921835fab89ba13597cd .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/a3c6ae237be992c42bed1703f854304451c59bc3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/82621d916dd7b4f8bde20539b96a4b8de62950d7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/37e95d4b7e86ebbd541b1226187a632532b7bda5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/35cf0e97b4df080458580c9ba70ed5db10a1c7b3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/3073749fe1acf499639f31d3ed13a593ce84d85e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/ba6a05bd4a6f26e16efc9323cb8744394f2e1c40 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/3437a987cf6f0efb552f44a7fb7ed65fd20bb65c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/a3f49ed6961da8d89a78aab5c73742b8520753d8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/9492bfda5561bd3919526e1fa460814467b6038e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/f571ab0cb56ff0fda8a2f36e8a645849ea89f2eb .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/dc844a65dfee894661603b231563ddb3ba143abf .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/7c8061703ea03c1bf73b8c805b67c98ee11bf76e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/8f0796a13f98f988b48c37cf29422784286be1df .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/8e1d0b34a0e18e40c53396a4b28737cceee3f38c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/55975fcc8803f59a7a3ed9b34438a976eeb7e0e8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/242e21bc998f2a46fcafc0722c1755debd070de5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/580232beb9fcdf14f9db7af4e35207e42e4ba643 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Global.o: ../src/Global.c  .generated_files/flags/default/e940962643ffcf509f55f2cb228804c7ec144f85 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Global.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Global.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Global.o.d" -o ${OBJECTDIR}/_ext/1360937237/Global.o ../src/Global.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/c32b31de10c313795b64d3f47a2e880adc5ed329 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/81a03c3a462a62da732caad534e7b4bd4e4b4c00 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/b7fa97f9e45b8d92fe44d33f12f1c3b75b9c88ef .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/b1fe9f077eb766b5ff3079d82297846cfeefa54d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
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
