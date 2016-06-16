#ifndef DIJKSTRA_H
#define DIJKSTRA_H

#define N	8
#include <stdint.h>
#include "ap_int.h"

struct axi_interface_type{
    ap_uint<8>   data;
    ap_uint<1>   last;
  };

void dijkstra(axi_interface_type d_in[N*N], ap_uint<8> start_point, axi_interface_type d_out[N]);

#endif
