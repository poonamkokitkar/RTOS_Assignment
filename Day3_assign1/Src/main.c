/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2022 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "FreeRTOS.h"
#include "task.h"
#include "FreeRTOSConfig.h"
#include "led.h"
#include "uart.h"


#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif

void vUARTPeriodicTask(void *pvParam)
{
	char str[32];
	UartPuts("Enter a string....\r\n");
	while(1)
	{
		UartGets(str);
		strupr(str);
		UartPuts(str);
	}
}


int main(void)
{
	UartInit(BAUD_9600);
	xTaskCreate(vUARTPeriodicTask, "UART Data", configMINIMAL_STACK_SIZE, NULL, 2, NULL);
	vTaskStartScheduler();
	while(1);
	return 0;
}







