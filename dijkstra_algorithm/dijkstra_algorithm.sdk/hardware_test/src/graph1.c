/*
 * graph1.c
 *
 *  Created on: 17 cze 2016
 *      Author: buleks
 */
#include <stdint.h>
#include "config.h"
#include "graph1.h"

uint8_t graph1[N][N];
uint8_t graph1_res[N];

void InitGraph1(void) {
	int i, e;
	for (i = 0; i < N; i++) {
		for (e = 0; e < N; e++) {
			graph1[i][e] = 255;
		}
	}

//	graph1[0][2] = 7;
//	graph1[1][2] = 1;
//	graph1[2][3] = 5;
//
//	graph1[2][0] = 7;
//	graph1[2][1] = 1;
//	graph1[3][2] = 5;

	graph1[0][1] = 3;
	graph1[0][2] = 1;
	graph1[0][6] = 7;
	graph1[0][7] = 2;

	graph1[1][0] = 3;
	graph1[1][2] = 1;
	graph1[1][3] = 1;
	graph1[1][4] = 3;
	graph1[1][5] = 4;
	graph1[1][6] = 5;

	graph1[2][0] = 1;
	graph1[2][1] = 1;
	graph1[2][3] = 5;
	graph1[2][4] = 5;

	graph1[3][1] = 1;
	graph1[3][2] = 5;
	graph1[3][4] = 1;
	graph1[3][7] = 2;

	graph1[4][1] = 3;
	graph1[4][2] = 5;
	graph1[4][3] = 1;
	graph1[4][5] = 1;

	graph1[5][1] = 4;
	graph1[5][4] = 1;
	graph1[5][6] = 1;

	graph1[6][0] = 7;
	graph1[6][1] = 5;
	graph1[6][5] = 1;

	graph1[7][0] = 2;
	graph1[7][3] = 2;

	graph1_res[0]=0;
	graph1_res[1]=2;
	graph1_res[2]=0;
	graph1_res[3]=1;
	graph1_res[4]=3;
	graph1_res[5]=4;
	graph1_res[6]=5;
	graph1_res[7]=0;


}
