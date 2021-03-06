/*
 *  @file  : dma.h
 *	
 *  @brief	
 *
 *  @author: franc
 *  @date  : 10 feb 2020
 */

#ifndef INC_DMA_H_
#define INC_DMA_H_

/* FreeRTOS include */
#include "FreeRTOS.h"
#include "semphr.h"

#include "stm32f4xx_dma.h"
#include "stdint.h"

#define BUFFER_SIZE	(100u)

extern void vDMA_USART2_Configuration( void );
extern void vDMA_USART2_SendData(uint8_t* pString, uint8_t n_byte);
extern void vDMA_USART2_Set_Sem(SemaphoreHandle_t *pSem);
extern void vDMA_USART2_Clr_Index(void);
extern uint8_t uiDMA_USART2_Get_Index(void);
extern void vDMA_USART2_Get_Buffer(uint8_t *buf, uint8_t nrBytes);

#endif /* INC_DMA_H_ */
