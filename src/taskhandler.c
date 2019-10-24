/*
 * taskhandler.c
 *
 *  Created on: 15 ott 2019
 *      Author: franc
 */

/* Scheduler includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "taskhandler.h"
#include "ledtask.h"
#include "buttontask.h"

#define TOTAL_TASK 	(2u)

static TaskHandle_t * taskArray[TOTAL_TASK];

uint8_t uiTaskhandler_CreateAllTasks(void)
{
	uint8_t retVal = 0;

	xTaskCreate( vLedTask,	/* function*/
			"Led Task", 	/* name */
			1000, 			/* stack size */
			NULL, 			/* param */
			2, 				/* prio */
			taskArray[0] );			/* handler */
#if 1
	xTaskCreate( vButtonTask,	/* function*/
			"Button Task", 	/* name */
			1000, 			/* stack size */
			NULL, 			/* param */
			1, 				/* prio */
			taskArray[1] );			/* handler */
#endif

	return retVal;
}

