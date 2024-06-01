################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../third_party/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./third_party/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./third_party/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
third_party/FreeRTOS/portable/MemMang/%.o third_party/FreeRTOS/portable/MemMang/%.su third_party/FreeRTOS/portable/MemMang/%.cyclo: ../third_party/FreeRTOS/portable/MemMang/%.c third_party/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I../Inc -I../third_party/FreeRTOS/portable/GCC/ARM_CM4F -I../third_party/FreeRTOS/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-third_party-2f-FreeRTOS-2f-portable-2f-MemMang

clean-third_party-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./third_party/FreeRTOS/portable/MemMang/heap_4.cyclo ./third_party/FreeRTOS/portable/MemMang/heap_4.d ./third_party/FreeRTOS/portable/MemMang/heap_4.o ./third_party/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-third_party-2f-FreeRTOS-2f-portable-2f-MemMang

