#ifndef DIJKSTRA_H
#define DIJKSTRA_H

#define N	8
#include <stdint.h>
#include "ap_int.h"

struct axi_interface_type{
    ap_uint<8>   data;
    ap_uint<1>   last;
  };

//struct axi_interface_type{
//    uint8_t  data;
//    uint8_t   last : 1;
//  };

void dijkstra(axi_interface_type in[N*N], ap_uint<8> start_point, axi_interface_type out[N]);

#endif
