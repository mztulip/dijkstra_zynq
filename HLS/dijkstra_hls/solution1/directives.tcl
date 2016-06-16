############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
set_directive_interface -mode s_axilite "dijkstra"
set_directive_interface -mode s_axilite "dijkstra" start_point
set_directive_array_partition -type complete -dim 1 "dijkstra" vector
set_directive_array_partition -type complete -dim 2 "dijkstra" matrix
set_directive_array_partition -type complete -dim 1 "dijkstra" matrix
set_directive_unroll "dijkstra/reset"
set_directive_unroll "dijkstra/input_copy_i"
set_directive_unroll "dijkstra/input_copy_o"
set_directive_unroll "dijkstra/max_values_o"
set_directive_unroll "dijkstra/max_values_i"
set_directive_unroll "dijkstra/min_o"
set_directive_unroll "dijkstra/min_i"
set_directive_unroll "dijkstra/substract_i"
set_directive_unroll "dijkstra/substract_o"
set_directive_unroll "dijkstra/mark_vertex_o"
set_directive_unroll "dijkstra/mark_vertex_i"
set_directive_unroll "dijkstra/check"
set_directive_unroll "dijkstra/send_result"
set_directive_interface -mode axis "dijkstra" d_in
set_directive_interface -mode axis "dijkstra" d_out
