############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project dijkstra_hls
set_top dijkstra
add_files dijkstra_hls/dijkstra.cpp
add_files dijkstra_hls/dijkstra.h
add_files -tb dijkstra_hls/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./dijkstra_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
