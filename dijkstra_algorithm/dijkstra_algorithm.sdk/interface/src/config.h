/*
 * config.h
 *
 *  Created on: 17 cze 2016
 *      Author: buleks
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#define MAX 255
#define N 8

#define MEM_BASE_ADDR		0x01000000
#define TX_BUFFER_BASE		(u8 *)(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(u8 *)(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)




#endif /* CONFIG_H_ */
