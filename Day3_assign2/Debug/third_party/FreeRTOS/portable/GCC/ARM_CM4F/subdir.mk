################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.o third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.su third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.cyclo: ../third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.c third_party/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I../third_party/FreeRTOS/portable/GCC/ARM_CM4F -I../third_party/FreeRTOS/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-third_party-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-third_party-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.cyclo ./third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-third_party-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

