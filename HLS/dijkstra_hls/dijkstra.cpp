#include "dijkstra.h"

void dijkstra(axi_interface_type d_in[N*N], ap_uint<8> start_point, axi_interface_type d_out[N])
{
 static uint8_t vector[N];
 static uint8_t matrix[N][N];
 static uint8_t result[N];

 uint8_t i,e;

 reset: for(i=0;i<N;i++)
 {
	 vector[i]=0;
 }
 vector[start_point] = 1;

 input_copy_o: for(i=0;i< N;i++)
 {
	 input_copy_i: for(e = 0; e < N;e++)
	 {
		 matrix[i][e] = d_in[e+i*N].data;
	 }

 }

 main_loop: while(1)
 {
	 //for vertex currently processed remove links in reverse direction
	 max_values_o: for(i =0 ;i< N;i++)
	 {

		 if(vector[i] == 1)
		 {
			 max_values_i: for(e = 0;e < N;e++)
			 {
				 matrix[e][i]=255;
			 }
		 }
	 }

	 uint8_t min = 255;
	 min_o: for(i = 0;i < N;i++) // row iterator
	 {
		 if(vector[i] == 1)
		 {
			 min_i: for(e = 0;e < N;e++)
			 {
				 if(matrix[i][e] < min)
				 {
					min = matrix[i][e];
				 }
			 }
		 }
	 }

	 //for all elements in row sibstract minimum for rows where vector == 1
	 substract_o: for(i = 0;i < N;i++)
	 {
		 if(vector[i] == 1)
		 {
			 substract_i: for(e = 0;e < N;e++)
			 {
				matrix[i][e] -= min;
			 }
		 }
	 }

	 mark_vertex_o :for(i = 0;i < N;i++)
	 {
		 if(vector[i] == 1)
		 {
			 mark_vertex_i:for(e = 0;e < N;e++)
			 {
				 if(matrix[i][e] == 0)
				 {
					 vector[e] = 1;
					 result[e] = i;
				 }
			 }
		 }
	 }

	 //if all vertex(elements of vector) is equal 1, it could break main loop and send result
	 bool end = true;
	 check:for(i = 1; i < N;i++)
	 {
		 if(vector[i] != 1)
		 {
			 end = false;
		 }
	 }
	 if(end) break;
 }

 send_result: for(i = 0;i < N;i++)
 {
	 d_out[i].data = result[i];
	 if(i < N-1)
	 {
		 d_out[i].last = 0;
	 }else
	 {
		 d_out[i].last = 1;
	 }
 }

}
