/*
 * buffer.c
 *
 *  Created on: 23 cze 2016
 *      Author: buleks
 */

#include "buffer.h"
#include "xuartps_hw.h"

uint8_t buffer[100];

uint32_t buffer_index = 0;

bool BufferPut()
{
	uint8_t c;

	c = XUartPs_RecvByte(XPAR_PS7_UART_1_BASEADDR);
	buffer[buffer_index%100] = c;
	if(c == '\r')
	{
		buffer_index = 0;
		return true;
	}
	++buffer_index;
	return false;
}

