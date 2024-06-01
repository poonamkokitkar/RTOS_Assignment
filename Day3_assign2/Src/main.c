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



#if !defined(__SOFT_FP__) && defined(__ARM_FP)
  #warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif

void vLEDGAperiodicTask(void *pvParam)
{
	while(1)
	{
		LedBlink(LED_GREEN, 200);
		vTaskDelay(1000);
	}
	vTaskDelete(NULL);
}

void vLEDOAperiodicTask(void *pvParam)
{
	while(1)
	{
		LedBlink(LED_ORANGE, 200);
		vTaskDelay(1000);
	}
	vTaskDelete(NULL);
}
void vLEDRAperiodicTask(void *pvParam)
{
	while(1)
	{
		LedBlink(LED_RED, 200);
		vTaskDelay(1000);
	}
	vTaskDelete(NULL);
}

void vLEDBAperiodicTask(void *pvParam)
{
	while(1)
	{
		LedBlink(LED_BLUE, 200);
		vTaskDelay(1000);
	}
	vTaskDelete(NULL);
}


int main(void)
{
		//led_init();
		LedInit(LED_GREEN);
		LedInit(LED_ORANGE);
		LedInit(LED_RED);
		LedInit(LED_BLUE);

		xTaskCreate(vLEDGAperiodicTask, "LED-G Toggle", configMINIMAL_STACK_SIZE, NULL, 2, NULL);
		xTaskCreate(vLEDOAperiodicTask, "LED-O Toggle", configMINIMAL_STACK_SIZE, NULL, 2, NULL);
		xTaskCreate(vLEDRAperiodicTask, "LED-R Toggle", configMINIMAL_STACK_SIZE, NULL, 2, NULL);
		xTaskCreate(vLEDBAperiodicTask, "LED-B Toggle", configMINIMAL_STACK_SIZE, NULL, 2, NULL);

		vTaskStartScheduler();
		while(1);
		return 0;
}







