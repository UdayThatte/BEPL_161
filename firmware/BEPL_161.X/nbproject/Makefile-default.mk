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
SOURCEFILES_QUOTED_IF_SPACED=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/API/Gyro_Process.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../src/App_Globals.c ../src/App_Protocol.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d ${OBJECTDIR}/_ext/1701374055/Protocol.o.d ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d ${OBJECTDIR}/_ext/1701374055/RTC.o.d ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d ${OBJECTDIR}/_ext/1701375116/Events.o.d ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Beeps.o.d ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d ${OBJECTDIR}/_ext/1342495810/Utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d ${OBJECTDIR}/_ext/1360937237/First_Test.o.d ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o

# Source Files
SOURCEFILES=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/API/Gyro_Process.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../src/App_Globals.c ../src/App_Protocol.c



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
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/3bf0b15d37b272f25e30224c508cc7af99b7e4e1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/5b9a1fd7ae5b43ae342b96190fe30b8b22f8189a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/8e8e82f690c0bdeaec60b2bdf3641ed454c4e3da .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/f7af6dd188ae19a210861e0135a9100fbd3fcb88 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/1bc5c7477221a19205c73ad74724bb9e5ff0dc62 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/e03223c0d827860710ef397b0faa1837d0226745 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/ec9ab2f5a74a7f44355aa6c1980ca1e636b7e567 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/ec19458161cf64772c63aac75bb074591c2b3b90 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/5e80a4fbc43b4fe38f5f0f568afc6d67547bc2ef .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/26c81f303586db611b3bdbe349a6762b7012ef5c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/ca08e3fa1ec6d525e8e6049e873887a71f9bd18b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Gyro_Process.o: ../../../BEPL_T/firmware/src/API/Gyro_Process.c  .generated_files/flags/default/a45f1a89797fff705621a99f3da61743118dc0ee .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d" -o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o ../../../BEPL_T/firmware/src/API/Gyro_Process.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/d677f4a8e2fe91946bf66159e678f1d9c8ea2cc5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/2d240bc6b1f8d44051a1d6052b2cc8e6a1d9d341 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/8a1987bf5aa11541254af3b9f821e28ed89c1c22 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/227ada6307eaa4444460ee5b9ac2c0adfb093dc1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/4909001c93f872a227d2c4f517fc25400079e161 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/8a8d04923d04eccddc108191e77eabe0e14b12b8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/d01de068aaf3bf08e6ed442e0a71d2b635370e51 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/a4711f3117137b99aabc03a9271dd1c0794de7e8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/e0842ac430d911288bfe666d6e62bfdee1b4dc4c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/8704d350fecb3017b551307e19440585f171a253 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/5cb8cdcb521b3d10abf3c872165bd051c7c16563 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/6418432ac766b7fcc2ff162e6dee6d4632bfeb50 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/6af1ea068252b69a01b61610c25983a3f4f7840a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/1babed800fb33a666504f36d7334acd18b351a58 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/ea3b08ff07a606521a29a2e907ac33fe942d2d3d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/11f1bfd70d50f0d2edf719a4cb83067eaa8db15 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/5740a5bcb31b2f120708727162090ecc0c6844d4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/c645e4013c1d769e85d1179dcfbee3a680a38ae6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/cc24ef36e3d651576188400170907638bf4552f0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/834904d8ec5e880eef6afdf5a6f2e9d981b7e54f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/12b774448b456a2df096509776ce324d4d265014 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/ba076d1785c2d5ab0c535284b08d3bb41bea0a74 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/b1677b59413135de47baa78c598f51094d23e7a7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/c3073dd8c5f1809418ed8d5b6fe2837d89f83c6f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/d58929d331accd4cdb70a298ea613dc02abc6c12 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/5a41b1a08080008f21b8807209a21d3bd233f2a5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/730118dc7f2a4eb8bcb9060bcf3daa49478e825e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/fb3df2f7b4ef3a71727d02f374e3731093c549c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/43a9edd2a0bd356a5c3fe9af70d3a85848d19e4c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/b5a2beea2ffa717a2638a54df31452ed58e67009 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/288eca10bc278ae917f4363ad36ff217bc30f17d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/a4b7d74b1f3434e4f4ded4644a4472ad2e59b679 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/7d39f8026b2bac01304757cc5c78ae8843c84863 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/1d173f78a4cfd81aa940aac8146bbd3fc69dfd88 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/414296b81446839077f77b094439611ad2dfdff5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/cf6b475865545a0fd301bc44835a3910bab284fc .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/9e1ff13e0032c7e74071af3aad81e584a9844de4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/b775a555273bfbcee270cef6f1f207bc476744b3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/30024e958a9321cd785a3fd7777a89af39b3c99 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/82c42511e9ac7c711b4af7af7f6befc915deb87 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/f649e956e40c967b473612790f22d3180eedac9b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/a681db8cf0541038fdf72985994b8e5b119f3fc4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/be153f9594e19e4558fd9442dbd6e24397135016 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/e5f591407634ca92f00b9372472c5e4ce4c52d75 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/cb15cdc7d43c0533cef0d9aa9f7be5637994efb8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/bce136e631ae6c0592a9fac8dbeeff93f325c3fd .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/6a93b58a55e926e1146c4f44c5bd45f5a2d27130 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/4013142675cbeaa77f3b12c575ce0b70740c6fbe .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/5001c8ee17232e305bdca8bfafabf7889575b5e6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Gyro_Process.o: ../../../BEPL_T/firmware/src/API/Gyro_Process.c  .generated_files/flags/default/fc86c4b4eec3cc04778a420f898a4c29ff1851e4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Gyro_Process.o.d" -o ${OBJECTDIR}/_ext/1701374055/Gyro_Process.o ../../../BEPL_T/firmware/src/API/Gyro_Process.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/6ec9f5a516e436fb1cfbf103e116df7c08cba762 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/f9dccfc28b9df8ad4e564e5b72a3d04d036a33d3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/4650a35496fb8f98e30a88115945e4e3159dd6db .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/580cd9a96315096297e77ca3cebf5e7cde7d4dde .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/3168bc1938c5d96cced454641925b9ae2d72d5e5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/9747b42b23709d7843d21f90139ed7de9cd670ae .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/9d77b527e444ed402ee6233dd27e10ab30226af4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/742eab7bed1f3c5e0c13a62a299e2b1284b0a13d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/af1876d063403e971e119b49f1e211d2425cbc1f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/e88f4aac5a711dd56ca1b911c32f85475654fad .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/5c5cf9f4730681c9f10869e6988feb0044d38976 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/b1681171190388e5fb9d37fc162697f5650506ac .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/f1e438b99a1a7fa2d2f12454819742c119eda981 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/a243c00e080cd6da8c047c404dad151f7e2d7ca3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/9187de185945df25debe91b833f9fbba9caa67b6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/e94e15b1ab287d2ec1fe952427ade558e1c6b211 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/8b70676385319b2949ae7a753afc7ade9e179d2b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/d1489942929e23c856a11af5d3913f2459395249 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/c0d45b157dfcd2b9d596a9c04f3206cf1d60fb8d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/4aedc5cff016804ef76db57839a64c2017669b30 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/223c759b5afa33c7207bf312dc1711338b46b6ff .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/608a9235a9197f2a0fa049b059a886ea2b50ee8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/af37b07075dcc74e5426f564a58e141d58340566 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/24e7efbf5a13e6983e8ff5e950857b7caad704b2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/1e4b49a02316191369b348bc16dd8dcee86df0df .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/afff956eab9be6fee4bfcecf3c495f058b220fea .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/536c293a4d82295c59556bdc937d7033029c93b6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/b47c24b44216a6fccbb1ccb75afef0ecc9a2da8d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/af6cb9e4c7ec63dc45401ed054282e7d00144672 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/583fe380f745f87e8873a2f27755a95adc3a6a4a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/23c90e409b6746028b211453944db109e73811a4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/e70f12f13ff518f14fe5539dc5295d49520f60a7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/ed9dc9f1f77ccbbfbe23dff972dbd7d12cfdbea8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/4e1361a61dc4df6b86ca89137ed45a4bd462d68e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/2e42664f92aa21a7e90b05e3bf0dae87b8d0ece9 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/faaaf9d372fcd76865dcc66fbc0a40701ea54ceb .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/4c9a2681c0f9931da9003a30297f74e4628dd581 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/5142d7cd77c32a86b31fa227a2fdd42a6df7020c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
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
