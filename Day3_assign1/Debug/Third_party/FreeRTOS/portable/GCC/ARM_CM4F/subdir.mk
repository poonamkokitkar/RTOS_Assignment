################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
Third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.o Third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.su Third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.cyclo: ../Third_party/FreeRTOS/portable/GCC/ARM_CM4F/%.c Third_party/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I../Third_party/FreeRTOS/include -I../Third_party/FreeRTOS/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Third_party-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-Third_party-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.cyclo ./Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./Third_party/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-Third_party-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

