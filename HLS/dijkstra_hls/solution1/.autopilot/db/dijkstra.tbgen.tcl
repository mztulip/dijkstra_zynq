set moduleName dijkstra
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName dijkstra
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_data_V int 8 regular {array 64 { 1 3 } 1 1 }  }
	{ in_last_V int 1 unused {array 64 { } 0 1 }  }
	{ start_point_V int 8 regular  }
	{ out_data_V int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ out_last_V int 1 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data_V", "interface" : "memory", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "in_last_V", "interface" : "memory", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "start_point_V", "interface" : "wire", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "start_point.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_data_V", "interface" : "memory", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "out_last_V", "interface" : "memory", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_data_V_address0 sc_out sc_lv 6 signal 0 } 
	{ in_data_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_data_V_q0 sc_in sc_lv 8 signal 0 } 
	{ in_last_V_address0 sc_out sc_lv 6 signal 1 } 
	{ in_last_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_last_V_we0 sc_out sc_logic 1 signal 1 } 
	{ in_last_V_d0 sc_out sc_lv 1 signal 1 } 
	{ in_last_V_q0 sc_in sc_lv 1 signal 1 } 
	{ in_last_V_address1 sc_out sc_lv 6 signal 1 } 
	{ in_last_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ in_last_V_we1 sc_out sc_logic 1 signal 1 } 
	{ in_last_V_d1 sc_out sc_lv 1 signal 1 } 
	{ in_last_V_q1 sc_in sc_lv 1 signal 1 } 
	{ start_point_V sc_in sc_lv 8 signal 2 } 
	{ out_data_V_address0 sc_out sc_lv 3 signal 3 } 
	{ out_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ out_data_V_d0 sc_out sc_lv 8 signal 3 } 
	{ out_last_V_address0 sc_out sc_lv 3 signal 4 } 
	{ out_last_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_last_V_we0 sc_out sc_logic 1 signal 4 } 
	{ out_last_V_d0 sc_out sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_data_V", "role": "address0" }} , 
 	{ "name": "in_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_data_V", "role": "ce0" }} , 
 	{ "name": "in_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_V", "role": "q0" }} , 
 	{ "name": "in_last_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_last_V", "role": "address0" }} , 
 	{ "name": "in_last_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "ce0" }} , 
 	{ "name": "in_last_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "we0" }} , 
 	{ "name": "in_last_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "d0" }} , 
 	{ "name": "in_last_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "q0" }} , 
 	{ "name": "in_last_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_last_V", "role": "address1" }} , 
 	{ "name": "in_last_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "ce1" }} , 
 	{ "name": "in_last_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "we1" }} , 
 	{ "name": "in_last_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "d1" }} , 
 	{ "name": "in_last_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "q1" }} , 
 	{ "name": "start_point_V", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "start_point_V", "role": "default" }} , 
 	{ "name": "out_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_V", "role": "address0" }} , 
 	{ "name": "out_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V", "role": "ce0" }} , 
 	{ "name": "out_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V", "role": "we0" }} , 
 	{ "name": "out_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_data_V", "role": "d0" }} , 
 	{ "name": "out_last_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_last_V", "role": "address0" }} , 
 	{ "name": "out_last_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "ce0" }} , 
 	{ "name": "out_last_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "we0" }} , 
 	{ "name": "out_last_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "d0" }}  ]}
set Spec2ImplPortList { 
	in_data_V { ap_memory {  { in_data_V_address0 mem_address 1 6 }  { in_data_V_ce0 mem_ce 1 1 }  { in_data_V_q0 mem_dout 0 8 } } }
	in_last_V { ap_memory {  { in_last_V_address0 mem_address 1 6 }  { in_last_V_ce0 mem_ce 1 1 }  { in_last_V_we0 mem_we 1 1 }  { in_last_V_d0 mem_din 1 1 }  { in_last_V_q0 mem_dout 0 1 }  { in_last_V_address1 mem_address 1 6 }  { in_last_V_ce1 mem_ce 1 1 }  { in_last_V_we1 mem_we 1 1 }  { in_last_V_d1 mem_din 1 1 }  { in_last_V_q1 mem_dout 0 1 } } }
	start_point_V { ap_none {  { start_point_V in_data 0 8 } } }
	out_data_V { ap_memory {  { out_data_V_address0 mem_address 1 3 }  { out_data_V_ce0 mem_ce 1 1 }  { out_data_V_we0 mem_we 1 1 }  { out_data_V_d0 mem_din 1 8 } } }
	out_last_V { ap_memory {  { out_last_V_address0 mem_address 1 3 }  { out_last_V_ce0 mem_ce 1 1 }  { out_last_V_we0 mem_we 1 1 }  { out_last_V_d0 mem_din 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
