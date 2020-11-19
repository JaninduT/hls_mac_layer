set moduleName backoff_vo
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
set C_modelName {backoff_vo}
set C_modelType { void 0 }
set C_modelArgList {
	{ current_txop_holder int 3 regular {pointer 1}  }
	{ available_spaces_vo int 3 regular {pointer 0} {global 0}  }
	{ vo_backoff_counter int 10 regular {pointer 2} {global 2}  }
	{ rand_state int 32 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "current_txop_holder", "interface" : "wire", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "available_spaces_vo", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "vo_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "rand_state", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ current_txop_holder sc_out sc_lv 3 signal 0 } 
	{ current_txop_holder_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ available_spaces_vo sc_in sc_lv 3 signal 1 } 
	{ vo_backoff_counter_i sc_in sc_lv 10 signal 2 } 
	{ vo_backoff_counter_o sc_out sc_lv 10 signal 2 } 
	{ vo_backoff_counter_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ rand_state_i sc_in sc_lv 32 signal 3 } 
	{ rand_state_o sc_out sc_lv 32 signal 3 } 
	{ rand_state_o_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "current_txop_holder", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "current_txop_holder", "role": "default" }} , 
 	{ "name": "current_txop_holder_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "current_txop_holder", "role": "ap_vld" }} , 
 	{ "name": "available_spaces_vo", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vo", "role": "default" }} , 
 	{ "name": "vo_backoff_counter_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vo_backoff_counter", "role": "i" }} , 
 	{ "name": "vo_backoff_counter_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vo_backoff_counter", "role": "o" }} , 
 	{ "name": "vo_backoff_counter_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vo_backoff_counter", "role": "o_ap_vld" }} , 
 	{ "name": "rand_state_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "i" }} , 
 	{ "name": "rand_state_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "o" }} , 
 	{ "name": "rand_state_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rand_state", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "backoff_vo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_random_int_gen_fu_32"}],
		"Port" : [
			{"Name" : "current_txop_holder", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "available_spaces_vo", "Type" : "None", "Direction" : "I"},
			{"Name" : "vo_backoff_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_random_int_gen_fu_32", "Port" : "rand_state"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_32", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_32.send_frame_urem_3bkb_U23", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_32.send_frame_mul_mucud_U24", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	backoff_vo {
		current_txop_holder {Type O LastRead -1 FirstWrite 1}
		available_spaces_vo {Type I LastRead 0 FirstWrite -1}
		vo_backoff_counter {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "38"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	current_txop_holder { ap_vld {  { current_txop_holder out_data 1 3 }  { current_txop_holder_ap_vld out_vld 1 1 } } }
	available_spaces_vo { ap_none {  { available_spaces_vo in_data 0 3 } } }
	vo_backoff_counter { ap_ovld {  { vo_backoff_counter_i in_data 0 10 }  { vo_backoff_counter_o out_data 1 10 }  { vo_backoff_counter_o_ap_vld out_vld 1 1 } } }
	rand_state { ap_ovld {  { rand_state_i in_data 0 32 }  { rand_state_o out_data 1 32 }  { rand_state_o_ap_vld out_vld 1 1 } } }
}
