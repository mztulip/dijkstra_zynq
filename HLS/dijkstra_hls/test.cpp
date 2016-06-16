#include "dijkstra.h"
#include <iostream>
#include "graph1.h"

using namespace std;

void init_matrix(axi_interface_type matrix[N*N]);
void init_result(axi_interface_type res[N]);
void print_result(axi_interface_type result[N]);
void fill_matrix(axi_interface_type m[N*N],uint8_t g[N][N]);
void init();
bool check_result(axi_interface_type result[N],uint8_t res[N]);

const uint8_t START_POINT = 0;
uint8_t graph1[N][N];
uint8_t graph1_res[N];

uint8_t graph2[N][N];


int main()
{
	axi_interface_type neigbour_matrix[N*N];
	axi_interface_type result[N];

	init();
	init_result(result);

	fill_matrix(neigbour_matrix,graph1);
	dijkstra(neigbour_matrix,START_POINT,result);

	print_result(result);
	if(!check_result(result,graph1_res))
	{
		cout<<"Incorrect result!";
	}
	return 0;
}

void init_matrix(uint8_t matrix[N][N])
{
	int i,e;
	for(i = 0; i < N;i++)
	{
		for(e = 0; e < N;e++)
		{
			matrix[i][e] = 255;
		}
	}
}
void init_result(axi_interface_type res[N])
{
	int i;
	for(i = 0; i < N;i++)
	{
		res[i].data = 0;
		res[i].last = 0;
	}
}
void print_result(axi_interface_type result[N])
{
	int i;
	for(i = 0; i < N;i++)
	{
		cout<<i+1<<":"<<(int)result[i].data+1<<","<<(int)result[i].last<<endl;
	}
}
void fill_matrix(axi_interface_type m[N*N],uint8_t g[N][N])
{
	int i,e;
	for(i = 0; i < N;i++)
	{
		for(e = 0; e < N;e++)
		{
			m[i*N+e].data=g[i][e];
		}
	}

}

void init()
{
	init_matrix(graph1);
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

bool check_result(axi_interface_type result[N],uint8_t res[N])
{
	int i;
	for(i = 0; i < N;i++)
	{
		if(result[i].data != res[i])
		{
			return false;
		}
	}
	return true;
}

