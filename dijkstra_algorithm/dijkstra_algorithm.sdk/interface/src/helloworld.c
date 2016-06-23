#include <stdio.h>
#include "platform.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "xdijkstra.h"
#include "config.h"
#include "xtime_l.h"
#include "buffer.h"
#include "xuartps_hw.h"

int DMAConfig(void);
int DijkstraConfig(void);
void WelcomeMenu(void);
void InitTable(void);
void InitResult(void);
void ScanTable(void);
void PrintTable(void);
void DijkstraCalculate(void);
void FillBuffer(uint8_t g[N][N]);
void PrintResult(void);
void SoftDijkstraCalculate(void);
void SoftDijkstra2Calculate(void);
int CheckResult(uint8_t a[N], uint8_t b[N]);

XAxiDma AxiDma;
XDijkstra Dijkstra;

u8 *TxBufferPtr = TX_BUFFER_BASE;
u8 *RxBufferPtr = RX_BUFFER_BASE;

uint8_t StartPoint;

XTime StartTime;
XTime StopTime;
XTime StartSoftTime;
XTime StopSoftTime;

uint8_t graph[N][N];
uint8_t result[N];

int main()
{
	init_platform();
	if (DMAConfig() == XST_FAILURE)
	{

		while (1)
		{
		}
	}
	if (DijkstraConfig() == XST_FAILURE)
	{
		while (1)
		{
		}
	}
	do
	{
		WelcomeMenu();
		InitTable();
		ScanTable();
		PrintTable();

		FillBuffer(graph);
		XTime_GetTime(&StartTime);
		DijkstraCalculate();
		XTime_GetTime(&StopTime);
		XTime_GetTime(&StartSoftTime);
		SoftDijkstraCalculate();
		XTime_GetTime(&StopSoftTime);
		PrintResult();
		printf("\nFinish.");

	} while(1);
	cleanup_platform();
	return 0;
}

void WelcomeMenu(void)
{
	printf("\nDijkstra Algorithm\n");
	printf("Please enter verticles and distance between\n"
			"them in following order: \n"
			"X Y D\n"
			"where:\n"
			"X - first verticle (0 - %d)\n"
			"Y - second verticle (0 - %d)\n"
			"D - distance between them (1 - %d)\n"
			"to start algorithm type:\n"
			"X X 0\n"
			"where X is the starting point "
			"for the algorithm\n", N - 1, N - 1, MAX);
}

void InitTable(void)
{
	int i, e;
	for (i = 0; i < N; i++)
		for (e = 0; e < N; e++)
			graph[i][e] = MAX;
}

void ScanTable()
{
	unsigned x, y, d;
	do
	{
		if (BufferPut())
		{
			if(sscanf((const char *)buffer,"%d %d %d",&x,&y,&d) == 3)
			{
				if (x >= N || y >= N)
				{
					printf("\nIndex one of the entered verticle too high!\n"
							"Please try again.\n");
				}
				else if (x == y && d != 0)
				{
					printf("\nIndexes of the entered verticles are the same!\n"
							"Please try again.\n");
				}
				else if (x == y && d == 0)
				{
					StartPoint = x;
					break;
				}
				else
				{
					result[x] = 1;
					result[y] = 1;
					graph[x][y] = d;
					graph[y][x] = d;
					printf("\n");
				}

				printf("\n\n");
				PrintTable();
			}else
			{
				printf("Incorrect values.\n");
			}
		}
	} while (1);
}

void PrintTable()
{
	int i, e;
	for (i = 0; i < N; i++)
	{
		for (e = 0; e < N; e++)
		{
//			if (graph[i][e] != MAX)
//				printf("%3d ", graph[i][e]);
//			else
//				printf("%3d ", 0);
			printf("%3d ", graph[i][e]);
		}
		printf("\n");
	}
}

int CheckResult(uint8_t a[N], uint8_t b[N])
{
	int i;
	for (i = 0; i < N; i++)
	{
		if (a[i] != b[i])
		{
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}

void FillBuffer(uint8_t g[N][N])
{
	int i, e;
	for (i = 0; i < N; i++)
	{
		for (e = 0; e < N; e++)
		{
			TxBufferPtr[i * N + e] = g[i][e];
		}
	}
	Xil_DCacheFlushRange((u32) TxBufferPtr, N * N);
}

void PrintResult(void)
{
	int i;
	Xil_DCacheInvalidateRange((u32) RxBufferPtr, 32);
	for (i = 0; i < N; i++)
	{
		if (result[i] == 1)
			printf("%d:%d\n", i, RxBufferPtr[i]);
		else
			printf("%d:-\n",i);
	}
	XTime temp = ((StopTime - StartTime) * 1000000000) / COUNTS_PER_SECOND;
	printf("\nExecution time:%llu ns", (unsigned long long) (temp));
	temp = ((StopSoftTime - StartSoftTime) * 1000000000) / COUNTS_PER_SECOND;
	printf("\nSoft Execution time:%llu ns", (unsigned long long) (temp));
}

void SoftDijkstraCalculate(void)
{
	uint8_t (*tab)[N] = graph;
	int i, j;
	int p = 1;
	char list[N];
	char prev[N];

	for (i = 0; i < N; i++)
	{
		list[i] = 0;
	}
	list[0] = 1;

	for (i = 0; i < N; i++)
	{
		if (list[i] == 1)
		{
			for (j = 0; j < N; j++)
			{
				if (tab[i][j] > 0)
				{
					if (prev[j] == 0)
						prev[j] = i;

					if (list[j] == 0)
						list[j] = 1;

					if (tab[p][j] == 0)
					{
						tab[p][j] = tab[p][i] + tab[i][j];
					}
					else
					{
						if (tab[p][j] > tab[p][i] + tab[i][j])
						{
							tab[p][j] = tab[p][i] + tab[i][j];
							prev[j] = i;
						}
					}
				}
			}
			list[i] = 2;
		}
	}
}


void DijkstraCalculate(void)
{
	int Status;
	XDijkstra_Set_start_point_V(&Dijkstra, StartPoint);
	XDijkstra_Start(&Dijkstra);

	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32) TxBufferPtr,
	N * N, XAXIDMA_DMA_TO_DEVICE);

	if (Status != XST_SUCCESS)
	{
		while (1)
		{
		}
	}

	while ((XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)))
	{
		/* Wait */
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32) RxBufferPtr, N,
	XAXIDMA_DEVICE_TO_DMA);

	if (Status != XST_SUCCESS)
	{
		while (1)
		{
		}
	}

	while ((XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)))
	{
		/* Wait */
	}

	while (XDijkstra_IsDone(&Dijkstra) == 0)
	{
	}
}

int DijkstraConfig(void)
{
	if (XDijkstra_Initialize(&Dijkstra,
	XPAR_DIJKSTRA_1_DEVICE_ID) == XST_DEVICE_NOT_FOUND)
	{
		xil_printf("XDijkstra_Initialize failed \r\n");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

int DMAConfig(void)
{
	int Status;
	XAxiDma_Config *CfgPtr;
	CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_DEVICE_ID);
	if (!CfgPtr)
	{
		xil_printf("No config found for %d\r\n", XPAR_AXI_DMA_0_DEVICE_ID);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(&AxiDma))
	{
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	/* Disable interrupts, we use polling mode
	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS;
}
