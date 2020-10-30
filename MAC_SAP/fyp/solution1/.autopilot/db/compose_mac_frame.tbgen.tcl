set moduleName compose_mac_frame
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compose_mac_frame}
set C_modelType { void 0 }
set C_modelArgList {
	{ seqnumber uint 12 regular  }
	{ up uint 4 regular  }
	{ data int 8 regular {array 70 { 1 3 } 1 1 }  }
	{ mac_frame int 8 regular {array 100 { 0 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seqnumber", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "up", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "mac_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seqnumber sc_in sc_lv 12 signal 0 } 
	{ up sc_in sc_lv 4 signal 1 } 
	{ data_address0 sc_out sc_lv 7 signal 2 } 
	{ data_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_q0 sc_in sc_lv 8 signal 2 } 
	{ mac_frame_address0 sc_out sc_lv 7 signal 3 } 
	{ mac_frame_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_frame_we0 sc_out sc_logic 1 signal 3 } 
	{ mac_frame_d0 sc_out sc_lv 8 signal 3 } 
	{ mac_frame_address1 sc_out sc_lv 7 signal 3 } 
	{ mac_frame_ce1 sc_out sc_logic 1 signal 3 } 
	{ mac_frame_we1 sc_out sc_logic 1 signal 3 } 
	{ mac_frame_d1 sc_out sc_lv 8 signal 3 } 
	{ mac_frame_q1 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seqnumber", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seqnumber", "role": "default" }} , 
 	{ "name": "up", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "up", "role": "default" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "mac_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mac_frame", "role": "address0" }} , 
 	{ "name": "mac_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_frame", "role": "ce0" }} , 
 	{ "name": "mac_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_frame", "role": "we0" }} , 
 	{ "name": "mac_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_frame", "role": "d0" }} , 
 	{ "name": "mac_frame_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mac_frame", "role": "address1" }} , 
 	{ "name": "mac_frame_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_frame", "role": "ce1" }} , 
 	{ "name": "mac_frame_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_frame", "role": "we1" }} , 
 	{ "name": "mac_frame_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_frame", "role": "d1" }} , 
 	{ "name": "mac_frame_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_frame", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "compose_mac_frame",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1215", "EstimateLatencyMax" : "1215",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seqnumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "up", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_frame", "Type" : "Memory", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	compose_mac_frame {
		seqnumber {Type I LastRead 11 FirstWrite -1}
		up {Type I LastRead 12 FirstWrite -1}
		data {Type I LastRead 13 FirstWrite -1}
		mac_frame {Type IO LastRead 14 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1215", "Max" : "1215"}
	, {"Name" : "Interval", "Min" : "1215", "Max" : "1215"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seqnumber { ap_none {  { seqnumber in_data 0 12 } } }
	up { ap_none {  { up in_data 0 4 } } }
	data { ap_memory {  { data_address0 mem_address 1 7 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 } } }
	mac_frame { ap_memory {  { mac_frame_address0 mem_address 1 7 }  { mac_frame_ce0 mem_ce 1 1 }  { mac_frame_we0 mem_we 1 1 }  { mac_frame_d0 mem_din 1 8 }  { mac_frame_address1 MemPortADDR2 1 7 }  { mac_frame_ce1 MemPortCE2 1 1 }  { mac_frame_we1 MemPortWE2 1 1 }  { mac_frame_d1 MemPortDIN2 1 8 }  { mac_frame_q1 MemPortDOUT2 0 8 } } }
}
