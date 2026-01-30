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
SOURCEFILES_QUOTED_IF_SPACED=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../src/App_Globals.c ../src/App_Protocol.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c ../../../BEPL_T/firmware/src/BSP/Enco_Handling.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d ${OBJECTDIR}/_ext/1701374055/Protocol.o.d ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d ${OBJECTDIR}/_ext/1701374055/RTC.o.d ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d ${OBJECTDIR}/_ext/1701375116/Events.o.d ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Beeps.o.d ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d ${OBJECTDIR}/_ext/60163342/plib_adc.o.d ${OBJECTDIR}/_ext/60165182/plib_can1.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d ${OBJECTDIR}/_ext/1342495810/Utils.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d ${OBJECTDIR}/_ext/1360937237/First_Test.o.d ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ${OBJECTDIR}/_ext/1701374055/Protocol.o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ${OBJECTDIR}/_ext/1701374055/RTC.o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ${OBJECTDIR}/_ext/1701375116/Events.o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ${OBJECTDIR}/_ext/1701375116/Beeps.o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ${OBJECTDIR}/_ext/60163342/plib_adc.o ${OBJECTDIR}/_ext/60165182/plib_can1.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ${OBJECTDIR}/_ext/1342495810/Utils.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ${OBJECTDIR}/_ext/1360937237/First_Test.o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o

# Source Files
SOURCEFILES=../../../BEPL_T/firmware/src/API/Ampli_functions.c ../../../BEPL_T/firmware/src/API/Amplifier_Com.c ../../../BEPL_T/firmware/src/API/Global_Vars.c ../../../BEPL_T/firmware/src/API/Protocol.c ../../../BEPL_T/firmware/src/API/BoardTemp.c ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c ../../../BEPL_T/firmware/src/API/RTC.c ../../../BEPL_T/firmware/src/API/KBD_5X8.c ../../../BEPL_T/firmware/src/API/LCD_functions.c ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c ../../../BEPL_T/firmware/src/API/Para_Calculations.c ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c ../../../BEPL_T/firmware/src/BSP/Events.c ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c ../../../BEPL_T/firmware/src/BSP/I2C_comm.c ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c ../../../BEPL_T/firmware/src/BSP/Beeps.c ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c ../src/config/default/peripheral/adc/plib_adc.c ../src/config/default/peripheral/can/plib_can1.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/default/peripheral/uart/plib_uart3.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/peripheral/uart/plib_uart5.c ../src/config/default/peripheral/uart/plib_uart4.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart6.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c ../../../BEPL_T/firmware/src/Utils/Utils.c ../src/main.c ../src/App_Utils.c ../src/HW_Testing.c ../src/First_Test.c ../src/App_Globals.c ../src/App_Protocol.c ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c ../../../BEPL_T/firmware/src/BSP/Enco_Handling.c



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
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/3117a9f7353ec1ed148a7cf82443b640d887fe8f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/783188cab1c5df28fe3f78bda992bd9922e0ffea .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/3a26ca0b8f71dfcba725aca1df5c5c7d19a71835 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/4393c692cc466d058bd78b43307ad1ff5a1645e0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/4559fce69bf41760a3202851702f45bc482dd3c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/b51ab57acf974deeffe191b1950ee90a1ef0fbee .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/901f3f6f8ecf39f95c9b84061adb96ed41bb6b49 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/16de8f4c6941e3cd8c080ef9c8bb8689d9f743ae .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/3d744b27c78014c40916e4fa0c12cfbf971da204 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/68de2f8013f516918cad5f5df688417edd58fbd4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/f7496c4c9f9243d45c324d3af0784079c719b898 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/e7e2976f5289459385b21e9d88ba528bb05f970 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/21bafe7f79e948b1edf69a691630620dbf00d404 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/63e0eca5e9d0abeadcf5a62c1e0bd6c2e92ed04c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/17a4bf3a40a47e2baf96e5edfa6e9cb7f09f3a59 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/f583cef76a4d7c907136313e35642c8194061cde .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/374a8dac12201cb50293e6dd2adce053f80c38ef .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/54b6646e0e896d4eb6a8a651e88dc7de70d75dd6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/9a7cf621e4400735a799f6892bd5d85814d0581a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/efcc5c589f0eafa3540580e149330fdb8dc09dad .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/7906d8bc87dc8b269924945610e368e2e16a9244 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/c010206158e368156ce2b079ca63b2a512a7210 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/3515ace63efe35330ff180718c8e6caf3a4f3695 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/39584805bf5bf31914508debaa1b74807edcbc16 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/2f5ea6f019651a69cdfefcafe61a164d78c96a1a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/bd415de9906429a47e8d283368d8938f17851f4c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/4786a686f3eccf306c5e9368a824214f78d4cb17 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/a7eb628c008558e6260c13626ece8fef62db83f8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/3cfe1130aa3187ec14791350712152380bdf1600 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/40a91b2fdaba668682176a8092edddf9118e6a52 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/9f4ac69e9680ce2c4e125d29c356951ad06cdc1a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/5d02b60c80edbd79535d362d0a9c1b4e5152154b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/1a0f640b1fff777d964679f3663d0f8587752af8 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/b04c1c6ed397f4cfdfed7ffcccd7d7f96d7b623d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/7a7c5a76f57cd01f808dcf4bc7c939ae4689d6cc .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/87d0b647e177c99c46280e98f2bd2e1c30ed0968 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/58fde6c2943cfc8ddcd7b6cf08df874d8ef6a959 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/410ec8b377b38b71e48d84b4f94d44599f7b15eb .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/5e600830107c3f66ebee9e8c733bae6dd9d987eb .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/e5411edfac6134a9ed38e210dc1bdd8195b0d4e1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/8d526f67bdf52013ee54e44bc145293c6114ea37 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/d4ded9e6d7be17a17003c91c99ac0b5e6385bc8c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/14660363c003dfaa360c0ee03f65e4fce8ba24e3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/8093766c7f74d015e5e52d0237935b25e27b5ed7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/74cb329d71b267de6601b2f564b5ad63a2e0f7ab .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/4636974fcb02266d0b50d8bd11f9b5ec80f5b66a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/6fa01dc0da769040542d2710085a0899199c3ebf .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/305ff983e7668458a6645279657af06736574557 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/1d1386a374fac999a39c6aa0759c00c76375ec58 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Enco_Handling.o: ../../../BEPL_T/firmware/src/BSP/Enco_Handling.c  .generated_files/flags/default/3257ab94fe1d05c14576c4dcf3f5d80224262969 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Enco_Handling.o.d" -o ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o ../../../BEPL_T/firmware/src/BSP/Enco_Handling.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1701374055/Ampli_functions.o: ../../../BEPL_T/firmware/src/API/Ampli_functions.c  .generated_files/flags/default/9fc5bcc47ab861089d9fd5e8f46d5f2658afc918 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Ampli_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/Ampli_functions.o ../../../BEPL_T/firmware/src/API/Ampli_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o: ../../../BEPL_T/firmware/src/API/Amplifier_Com.c  .generated_files/flags/default/2bd4db5e52344271e734f676686df452f8cc919a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o.d" -o ${OBJECTDIR}/_ext/1701374055/Amplifier_Com.o ../../../BEPL_T/firmware/src/API/Amplifier_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Global_Vars.o: ../../../BEPL_T/firmware/src/API/Global_Vars.c  .generated_files/flags/default/f9ddba702b32bb95ddd99201030ca47f2abb924f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Global_Vars.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Global_Vars.o.d" -o ${OBJECTDIR}/_ext/1701374055/Global_Vars.o ../../../BEPL_T/firmware/src/API/Global_Vars.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Protocol.o: ../../../BEPL_T/firmware/src/API/Protocol.c  .generated_files/flags/default/c3212cf65334ba32d8945a0e41742e1e1eec0b3a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Protocol.o.d" -o ${OBJECTDIR}/_ext/1701374055/Protocol.o ../../../BEPL_T/firmware/src/API/Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/BoardTemp.o: ../../../BEPL_T/firmware/src/API/BoardTemp.c  .generated_files/flags/default/274f29b463d70d971cceccc1d1228b40ac1ec370 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/BoardTemp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/BoardTemp.o.d" -o ${OBJECTDIR}/_ext/1701374055/BoardTemp.o ../../../BEPL_T/firmware/src/API/BoardTemp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o: ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c  .generated_files/flags/default/1e23e7d666ba4297f6785cff45eb6af244f15ff3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o.d" -o ${OBJECTDIR}/_ext/1701374055/AtmelFlashMem.o ../../../BEPL_T/firmware/src/API/AtmelFlashMem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/RTC.o: ../../../BEPL_T/firmware/src/API/RTC.c  .generated_files/flags/default/c0f3c82c67af4a30f8939545f3f9ffa49122ad97 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/RTC.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/RTC.o.d" -o ${OBJECTDIR}/_ext/1701374055/RTC.o ../../../BEPL_T/firmware/src/API/RTC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/KBD_5X8.o: ../../../BEPL_T/firmware/src/API/KBD_5X8.c  .generated_files/flags/default/a7c08d8f2a9d2f2161530327e93c6a815d118a52 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/KBD_5X8.o.d" -o ${OBJECTDIR}/_ext/1701374055/KBD_5X8.o ../../../BEPL_T/firmware/src/API/KBD_5X8.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/LCD_functions.o: ../../../BEPL_T/firmware/src/API/LCD_functions.c  .generated_files/flags/default/8a71a96ff20f3c4cff657de72187de9e93a2407 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/LCD_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/LCD_functions.o.d" -o ${OBJECTDIR}/_ext/1701374055/LCD_functions.o ../../../BEPL_T/firmware/src/API/LCD_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o: ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c  .generated_files/flags/default/a2ea204b3fcd188122a07674f7f3837fa1a97f7a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o.d" -o ${OBJECTDIR}/_ext/1701374055/ETH_NetBurner.o ../../../BEPL_T/firmware/src/API/ETH_NetBurner.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701374055/Para_Calculations.o: ../../../BEPL_T/firmware/src/API/Para_Calculations.c  .generated_files/flags/default/3e892cac3747ffac6122b80b41ff93aed0cc2431 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701374055" 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701374055/Para_Calculations.o.d" -o ${OBJECTDIR}/_ext/1701374055/Para_Calculations.o ../../../BEPL_T/firmware/src/API/Para_Calculations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Comm.o: ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c  .generated_files/flags/default/b27b8f9dcfa113cf42b9f9b340696a0ec203361a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Comm.o ../../../BEPL_T/firmware/src/BSP/CAN_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o: ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c  .generated_files/flags/default/5d5ece7e6b9e9ad23d0104ccd0cad93722c489e6 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/ETH_Module_Com.o ../../../BEPL_T/firmware/src/BSP/ETH_Module_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Events.o: ../../../BEPL_T/firmware/src/BSP/Events.c  .generated_files/flags/default/69f3f38a7f224ae3534dcbbf91c28acf01cccd2f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Events.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Events.o.d" -o ${OBJECTDIR}/_ext/1701375116/Events.o ../../../BEPL_T/firmware/src/BSP/Events.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/SSI_Enco.o: ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c  .generated_files/flags/default/b80455964cf58996f4c0570bcd7cc8cbb54222a2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/SSI_Enco.o.d" -o ${OBJECTDIR}/_ext/1701375116/SSI_Enco.o ../../../BEPL_T/firmware/src/BSP/SSI_Enco.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/I2C_comm.o: ../../../BEPL_T/firmware/src/BSP/I2C_comm.c  .generated_files/flags/default/6af32be0c2d387be61dddb5e6b7be350eef94ca3 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/I2C_comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/I2C_comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/I2C_comm.o ../../../BEPL_T/firmware/src/BSP/I2C_comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o: ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c  .generated_files/flags/default/ab89c75efb9b60ab614d0daa882f2a9b5ff740a1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/DataFlash_Comm.o ../../../BEPL_T/firmware/src/BSP/DataFlash_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Beeps.o: ../../../BEPL_T/firmware/src/BSP/Beeps.c  .generated_files/flags/default/acde24487d38db21e040e41c17575310977e9d4a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Beeps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Beeps.o.d" -o ${OBJECTDIR}/_ext/1701375116/Beeps.o ../../../BEPL_T/firmware/src/BSP/Beeps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/RTC_Comm.o: ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c  .generated_files/flags/default/c4673a483908f6049511bb058a9ac092d71e0871 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/RTC_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/RTC_Comm.o ../../../BEPL_T/firmware/src/BSP/RTC_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o: ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c  .generated_files/flags/default/e559b50a9adb10a2c531f14e7692393827ad674b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o.d" -o ${OBJECTDIR}/_ext/1701375116/KBD_5X8_rd.o ../../../BEPL_T/firmware/src/BSP/KBD_5X8_rd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/LCD_Comm.o: ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c  .generated_files/flags/default/3e9b7e880c7b4c250e9245b5ebd43e3d89716f76 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/LCD_Comm.o.d" -o ${OBJECTDIR}/_ext/1701375116/LCD_Comm.o ../../../BEPL_T/firmware/src/BSP/LCD_Comm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Sys_Inits.o: ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c  .generated_files/flags/default/811485c07aef21904e5200f0fdb238e02fa70944 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Sys_Inits.o.d" -o ${OBJECTDIR}/_ext/1701375116/Sys_Inits.o ../../../BEPL_T/firmware/src/BSP/Sys_Inits.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60163342/plib_adc.o: ../src/config/default/peripheral/adc/plib_adc.c  .generated_files/flags/default/e37c6f4d787b8c9219f85f85f38da0eb15970d28 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60163342" 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60163342/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60163342/plib_adc.o.d" -o ${OBJECTDIR}/_ext/60163342/plib_adc.o ../src/config/default/peripheral/adc/plib_adc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165182/plib_can1.o: ../src/config/default/peripheral/can/plib_can1.c  .generated_files/flags/default/8bd063cf653e33c05e079474310f4491310bfb1f .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165182" 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165182/plib_can1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165182/plib_can1.o.d" -o ${OBJECTDIR}/_ext/60165182/plib_can1.o ../src/config/default/peripheral/can/plib_can1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/cd5574d8a69304778037a7286774388868a51731 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/default/d0b132468c01616d770ee5302a1ac7b2a0ea13b5 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/flags/default/cc34eac5ba4e090253d7585c97123e731913730 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/7dfd3b790aea78964fd6e46c6a1edcb9803b914d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o: ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/default/3322689e51393f0e6770c5bb6352c7e008ce3a1d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/513455433" 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/513455433/plib_i2c2_master.o ../src/config/default/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi1_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/default/1c814c0638069cf06c5900e31b5a1279c8bbe71c .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi1_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart3.o: ../src/config/default/peripheral/uart/plib_uart3.c  .generated_files/flags/default/93663c052cf12db8b0d5919b0db9a993aa38d333 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart3.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart3.o ../src/config/default/peripheral/uart/plib_uart3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/5b289bc4d9217e7ddd4388abd48da7c5212ccdce .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart5.o: ../src/config/default/peripheral/uart/plib_uart5.c  .generated_files/flags/default/ba9258e37ba13dc611336c1278de4cf2b153bb57 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart5.o ../src/config/default/peripheral/uart/plib_uart5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart4.o: ../src/config/default/peripheral/uart/plib_uart4.c  .generated_files/flags/default/41560961474f1fde1682e9730f2b4a23e32128d7 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart4.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart4.o ../src/config/default/peripheral/uart/plib_uart4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/d86de37b5992c8117f905665267ed628c143f344 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart6.o: ../src/config/default/peripheral/uart/plib_uart6.c  .generated_files/flags/default/3add7db1ff61816380c69cef5ce613e01ffd73e0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart6.o ../src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/4f38cd0c140fea03f2d5eae1f80d4fd00fdbc550 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/28ce208ced5c6c21ef75a925d05ff363b3e1614 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/d9f9e7b81ce44b76eff97cf35bf82176f6a6b1e1 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/a4d39a1b5d87b9f3355c8f908e5ad6898b870a2e .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/BCD_Utils.o: ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c  .generated_files/flags/default/36c3a31c538fdb4b27501e648f7240926c439c50 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/BCD_Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/BCD_Utils.o ../../../BEPL_T/firmware/src/Utils/BCD_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1342495810/Utils.o: ../../../BEPL_T/firmware/src/Utils/Utils.c  .generated_files/flags/default/a4f2131c60230c0fc7992d204df56afbeea978a0 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1342495810" 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1342495810/Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1342495810/Utils.o.d" -o ${OBJECTDIR}/_ext/1342495810/Utils.o ../../../BEPL_T/firmware/src/Utils/Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/898247098ada415b69b3d10f9730aadccdccfa13 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Utils.o: ../src/App_Utils.c  .generated_files/flags/default/c59d28595cc1ec7209ec6f82180dc102e80880c2 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Utils.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Utils.o ../src/App_Utils.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/HW_Testing.o: ../src/HW_Testing.c  .generated_files/flags/default/7fcf9d30d31354b733587bf63d93981276e8797a .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/HW_Testing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/HW_Testing.o.d" -o ${OBJECTDIR}/_ext/1360937237/HW_Testing.o ../src/HW_Testing.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/First_Test.o: ../src/First_Test.c  .generated_files/flags/default/65860e47ba0aa4a1a326c0cd6c5f2073f1a7532d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/First_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/First_Test.o.d" -o ${OBJECTDIR}/_ext/1360937237/First_Test.o ../src/First_Test.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Globals.o: ../src/App_Globals.c  .generated_files/flags/default/bb96b60acf53492992679292383bdee1ea6a543b .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Globals.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Globals.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Globals.o ../src/App_Globals.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/App_Protocol.o: ../src/App_Protocol.c  .generated_files/flags/default/fc59ed2b0ddc1adda3806818c6d734ac4e518b59 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/App_Protocol.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/App_Protocol.o.d" -o ${OBJECTDIR}/_ext/1360937237/App_Protocol.o ../src/App_Protocol.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o: ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c  .generated_files/flags/default/25104c1246a853d4a9c4331fb3f86e67f28308d .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o.d" -o ${OBJECTDIR}/_ext/1701375116/CAN_Enco_Com.o ../../../BEPL_T/firmware/src/BSP/CAN_Enco_Com.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1701375116/Enco_Handling.o: ../../../BEPL_T/firmware/src/BSP/Enco_Handling.c  .generated_files/flags/default/4b7b11d395a58d9d68da51d3f1f67b25716611d4 .generated_files/flags/default/1636d0887e51a7903cbfc8fb1735b9454f0add0e
	@${MKDIR} "${OBJECTDIR}/_ext/1701375116" 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o.d 
	@${RM} ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../BEPL_T/firmware/src/API" -I"../../../BEPL_T/firmware/src/BSP" -I"../../../BEPL_T/firmware/src/Utils" -I"../src" -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/default" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1701375116/Enco_Handling.o.d" -o ${OBJECTDIR}/_ext/1701375116/Enco_Handling.o ../../../BEPL_T/firmware/src/BSP/Enco_Handling.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wno-missing-braces  -Wno-pointer-sign -Wno-uninitialized -Wno-unused-but-set-variable -Wno-unused-variable -Wno-implicit-function-declaration -mdfp="${DFP_DIR}"  
	
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
