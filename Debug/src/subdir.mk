################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/buttonhw.c \
../src/buttontask.c \
../src/dma.c \
../src/ledhardware.c \
../src/ledtask.c \
../src/main.c \
../src/peripheralinit.c \
../src/syscalls.c \
../src/system_stm32f4xx.c \
../src/taskcommon.c \
../src/taskhandler.c \
../src/uart.c \
../src/uart_task.c 

OBJS += \
./src/buttonhw.o \
./src/buttontask.o \
./src/dma.o \
./src/ledhardware.o \
./src/ledtask.o \
./src/main.o \
./src/peripheralinit.o \
./src/syscalls.o \
./src/system_stm32f4xx.o \
./src/taskcommon.o \
./src/taskhandler.o \
./src/uart.o \
./src/uart_task.o 

C_DEPS += \
./src/buttonhw.d \
./src/buttontask.d \
./src/dma.d \
./src/ledhardware.d \
./src/ledtask.d \
./src/main.d \
./src/peripheralinit.d \
./src/syscalls.d \
./src/system_stm32f4xx.d \
./src/taskcommon.d \
./src/taskhandler.d \
./src/uart.d \
./src/uart_task.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F446RETx -DNUCLEO_F446RE -DDEBUG -DSTM32F446xx -DUSE_STDPERIPH_DRIVER -I"C:/work/workspace_stm/Test_FreeRTOS_f446re/src/FreeRTOS/include" -I"C:/work/workspace_stm/Test_FreeRTOS_f446re/src/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/work/workspace_stm/Test_FreeRTOS_f446re/inc" -I"C:/work/workspace_stm/Test_FreeRTOS_f446re/src" -I"C:/work/workspace_stm/nucleo-f446re_stdperiph_lib" -I"C:/work/workspace_stm/nucleo-f446re_stdperiph_lib/CMSIS/core" -I"C:/work/workspace_stm/nucleo-f446re_stdperiph_lib/CMSIS/device" -I"C:/work/workspace_stm/nucleo-f446re_stdperiph_lib/StdPeriph_Driver/inc" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


