set moduleName start_backoff_vi
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
set C_modelName {start_backoff_vi}
set C_modelType { void 0 }
set C_modelArgList {
	{ invoke_reason uint 1 regular  }
	{ CW_vi int 10 regular {pointer 2} {global 2}  }
	{ rand_state int 32 regular {pointer 2} {global 2}  }
	{ vi_backoff_counter int 10 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "invoke_reason", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "CW_vi", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "rand_state", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "vi_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ invoke_reason sc_in sc_lv 1 signal 0 } 
	{ CW_vi_i sc_in sc_lv 10 signal 1 } 
	{ CW_vi_o sc_out sc_lv 10 signal 1 } 
	{ CW_vi_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ rand_state_i sc_in sc_lv 32 signal 2 } 
	{ rand_state_o sc_out sc_lv 32 signal 2 } 
	{ rand_state_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ vi_backoff_counter sc_out sc_lv 10 signal 3 } 
	{ vi_backoff_counter_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "invoke_reason", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "invoke_reason", "role": "default" }} , 
 	{ "name": "CW_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_vi", "role": "i" }} , 
 	{ "name": "CW_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_vi", "role": "o" }} , 
 	{ "name": "CW_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "CW_vi", "role": "o_ap_vld" }} , 
 	{ "name": "rand_state_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "i" }} , 
 	{ "name": "rand_state_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "o" }} , 
 	{ "name": "rand_state_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rand_state", "role": "o_ap_vld" }} , 
 	{ "name": "vi_backoff_counter", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vi_backoff_counter", "role": "default" }} , 
 	{ "name": "vi_backoff_counter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vi_backoff_counter", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "start_backoff_vi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_random_int_gen_fu_37"}],
		"Port" : [
			{"Name" : "invoke_reason", "Type" : "None", "Direction" : "I"},
			{"Name" : "CW_vi", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "vi_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_37", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "random_int_gen",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "max_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	start_backoff_vi {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_vi {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		vi_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "38", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "38", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	invoke_reason { ap_none {  { invoke_reason in_data 0 1 } } }
	CW_vi { ap_ovld {  { CW_vi_i in_data 0 10 }  { CW_vi_o out_data 1 10 }  { CW_vi_o_ap_vld out_vld 1 1 } } }
	rand_state { ap_ovld {  { rand_state_i in_data 0 32 }  { rand_state_o out_data 1 32 }  { rand_state_o_ap_vld out_vld 1 1 } } }
	vi_backoff_counter { ap_vld {  { vi_backoff_counter out_data 1 10 }  { vi_backoff_counter_ap_vld out_vld 1 1 } } }
}
