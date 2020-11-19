set moduleName start_tx
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
set C_modelName {start_tx}
set C_modelType { void 0 }
set C_modelArgList {
	{ current_txop_holder uint 3 regular  }
	{ tx_frame int 8 regular {array 100 { 2 3 } 1 1 }  }
	{ available_spaces_bk int 3 regular {pointer 2} {global 2}  }
	{ write_pointer_bk int 2 regular {pointer 2} {global 2}  }
	{ available_spaces_be int 3 regular {pointer 2} {global 2}  }
	{ write_pointer_be int 2 regular {pointer 2} {global 2}  }
	{ available_spaces_vi int 3 regular {pointer 2} {global 2}  }
	{ write_pointer_vi int 2 regular {pointer 2} {global 2}  }
	{ available_spaces_vo int 3 regular {pointer 2} {global 2}  }
	{ write_pointer_vo int 2 regular {pointer 2} {global 2}  }
	{ edca_queues int 8 regular {array 1600 { 2 3 } 1 1 } {global 2}  }
	{ read_pointer_bk int 2 regular {pointer 2} {global 2}  }
	{ read_pointer_be int 2 regular {pointer 2} {global 2}  }
	{ read_pointer_vi int 2 regular {pointer 2} {global 2}  }
	{ read_pointer_vo int 2 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "current_txop_holder", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tx_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "available_spaces_bk", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_bk", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "available_spaces_be", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_be", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "available_spaces_vi", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_vi", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "available_spaces_vo", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_vo", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "edca_queues", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_bk", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_be", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_vi", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_vo", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ current_txop_holder sc_in sc_lv 3 signal 0 } 
	{ tx_frame_address0 sc_out sc_lv 7 signal 1 } 
	{ tx_frame_ce0 sc_out sc_logic 1 signal 1 } 
	{ tx_frame_we0 sc_out sc_logic 1 signal 1 } 
	{ tx_frame_d0 sc_out sc_lv 8 signal 1 } 
	{ tx_frame_q0 sc_in sc_lv 8 signal 1 } 
	{ available_spaces_bk_i sc_in sc_lv 3 signal 2 } 
	{ available_spaces_bk_o sc_out sc_lv 3 signal 2 } 
	{ available_spaces_bk_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ write_pointer_bk_i sc_in sc_lv 2 signal 3 } 
	{ write_pointer_bk_o sc_out sc_lv 2 signal 3 } 
	{ write_pointer_bk_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ available_spaces_be_i sc_in sc_lv 3 signal 4 } 
	{ available_spaces_be_o sc_out sc_lv 3 signal 4 } 
	{ available_spaces_be_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ write_pointer_be_i sc_in sc_lv 2 signal 5 } 
	{ write_pointer_be_o sc_out sc_lv 2 signal 5 } 
	{ write_pointer_be_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ available_spaces_vi_i sc_in sc_lv 3 signal 6 } 
	{ available_spaces_vi_o sc_out sc_lv 3 signal 6 } 
	{ available_spaces_vi_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ write_pointer_vi_i sc_in sc_lv 2 signal 7 } 
	{ write_pointer_vi_o sc_out sc_lv 2 signal 7 } 
	{ write_pointer_vi_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ available_spaces_vo_i sc_in sc_lv 3 signal 8 } 
	{ available_spaces_vo_o sc_out sc_lv 3 signal 8 } 
	{ available_spaces_vo_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ write_pointer_vo_i sc_in sc_lv 2 signal 9 } 
	{ write_pointer_vo_o sc_out sc_lv 2 signal 9 } 
	{ write_pointer_vo_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ edca_queues_address0 sc_out sc_lv 11 signal 10 } 
	{ edca_queues_ce0 sc_out sc_logic 1 signal 10 } 
	{ edca_queues_we0 sc_out sc_logic 1 signal 10 } 
	{ edca_queues_d0 sc_out sc_lv 8 signal 10 } 
	{ edca_queues_q0 sc_in sc_lv 8 signal 10 } 
	{ read_pointer_bk_i sc_in sc_lv 2 signal 11 } 
	{ read_pointer_bk_o sc_out sc_lv 2 signal 11 } 
	{ read_pointer_bk_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ read_pointer_be_i sc_in sc_lv 2 signal 12 } 
	{ read_pointer_be_o sc_out sc_lv 2 signal 12 } 
	{ read_pointer_be_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ read_pointer_vi_i sc_in sc_lv 2 signal 13 } 
	{ read_pointer_vi_o sc_out sc_lv 2 signal 13 } 
	{ read_pointer_vi_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ read_pointer_vo_i sc_in sc_lv 2 signal 14 } 
	{ read_pointer_vo_o sc_out sc_lv 2 signal 14 } 
	{ read_pointer_vo_o_ap_vld sc_out sc_logic 1 outvld 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "current_txop_holder", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "current_txop_holder", "role": "default" }} , 
 	{ "name": "tx_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "tx_frame", "role": "address0" }} , 
 	{ "name": "tx_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_frame", "role": "ce0" }} , 
 	{ "name": "tx_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_frame", "role": "we0" }} , 
 	{ "name": "tx_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx_frame", "role": "d0" }} , 
 	{ "name": "tx_frame_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx_frame", "role": "q0" }} , 
 	{ "name": "available_spaces_bk_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_bk", "role": "i" }} , 
 	{ "name": "available_spaces_bk_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_bk", "role": "o" }} , 
 	{ "name": "available_spaces_bk_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_bk", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_bk_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_bk", "role": "i" }} , 
 	{ "name": "write_pointer_bk_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_bk", "role": "o" }} , 
 	{ "name": "write_pointer_bk_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_bk", "role": "o_ap_vld" }} , 
 	{ "name": "available_spaces_be_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_be", "role": "i" }} , 
 	{ "name": "available_spaces_be_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_be", "role": "o" }} , 
 	{ "name": "available_spaces_be_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_be", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_be_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_be", "role": "i" }} , 
 	{ "name": "write_pointer_be_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_be", "role": "o" }} , 
 	{ "name": "write_pointer_be_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_be", "role": "o_ap_vld" }} , 
 	{ "name": "available_spaces_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vi", "role": "i" }} , 
 	{ "name": "available_spaces_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vi", "role": "o" }} , 
 	{ "name": "available_spaces_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_vi", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_vi", "role": "i" }} , 
 	{ "name": "write_pointer_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_vi", "role": "o" }} , 
 	{ "name": "write_pointer_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_vi", "role": "o_ap_vld" }} , 
 	{ "name": "available_spaces_vo_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vo", "role": "i" }} , 
 	{ "name": "available_spaces_vo_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vo", "role": "o" }} , 
 	{ "name": "available_spaces_vo_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_vo", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_vo_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_vo", "role": "i" }} , 
 	{ "name": "write_pointer_vo_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_vo", "role": "o" }} , 
 	{ "name": "write_pointer_vo_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_vo", "role": "o_ap_vld" }} , 
 	{ "name": "edca_queues_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edca_queues", "role": "address0" }} , 
 	{ "name": "edca_queues_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edca_queues", "role": "ce0" }} , 
 	{ "name": "edca_queues_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edca_queues", "role": "we0" }} , 
 	{ "name": "edca_queues_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "edca_queues", "role": "d0" }} , 
 	{ "name": "edca_queues_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "edca_queues", "role": "q0" }} , 
 	{ "name": "read_pointer_bk_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_bk", "role": "i" }} , 
 	{ "name": "read_pointer_bk_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_bk", "role": "o" }} , 
 	{ "name": "read_pointer_bk_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_pointer_bk", "role": "o_ap_vld" }} , 
 	{ "name": "read_pointer_be_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_be", "role": "i" }} , 
 	{ "name": "read_pointer_be_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_be", "role": "o" }} , 
 	{ "name": "read_pointer_be_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_pointer_be", "role": "o_ap_vld" }} , 
 	{ "name": "read_pointer_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_vi", "role": "i" }} , 
 	{ "name": "read_pointer_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_vi", "role": "o" }} , 
 	{ "name": "read_pointer_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_pointer_vi", "role": "o_ap_vld" }} , 
 	{ "name": "read_pointer_vo_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_vo", "role": "i" }} , 
 	{ "name": "read_pointer_vo_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "read_pointer_vo", "role": "o" }} , 
 	{ "name": "read_pointer_vo_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_pointer_vo", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "start_tx",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44"}],
		"Port" : [
			{"Name" : "current_txop_holder", "Type" : "None", "Direction" : "I"},
			{"Name" : "tx_frame", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "inout_frame"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_enqueue_dequeue_fram_fu_44", "Parent" : "0",
		"CDFG" : "enqueue_dequeue_fram",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "202",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "operation", "Type" : "None", "Direction" : "I"},
			{"Name" : "ac", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout_frame", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	start_tx {
		current_txop_holder {Type I LastRead 0 FirstWrite -1}
		tx_frame {Type IO LastRead 2 FirstWrite 2}
		available_spaces_bk {Type IO LastRead 0 FirstWrite 1}
		write_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		available_spaces_be {Type IO LastRead 0 FirstWrite 1}
		write_pointer_be {Type IO LastRead 0 FirstWrite 1}
		available_spaces_vi {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		available_spaces_vo {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vo {Type IO LastRead 0 FirstWrite 1}
		edca_queues {Type IO LastRead 2 FirstWrite 2}
		read_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		read_pointer_be {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}
	enqueue_dequeue_fram {
		operation {Type I LastRead 0 FirstWrite -1}
		ac {Type I LastRead 0 FirstWrite -1}
		inout_frame {Type IO LastRead 2 FirstWrite 2}
		available_spaces_bk {Type IO LastRead 0 FirstWrite 1}
		write_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		available_spaces_be {Type IO LastRead 0 FirstWrite 1}
		write_pointer_be {Type IO LastRead 0 FirstWrite 1}
		available_spaces_vi {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		available_spaces_vo {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vo {Type IO LastRead 0 FirstWrite 1}
		edca_queues {Type IO LastRead 2 FirstWrite 2}
		read_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		read_pointer_be {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "203"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	current_txop_holder { ap_none {  { current_txop_holder in_data 0 3 } } }
	tx_frame { ap_memory {  { tx_frame_address0 mem_address 1 7 }  { tx_frame_ce0 mem_ce 1 1 }  { tx_frame_we0 mem_we 1 1 }  { tx_frame_d0 mem_din 1 8 }  { tx_frame_q0 mem_dout 0 8 } } }
	available_spaces_bk { ap_ovld {  { available_spaces_bk_i in_data 0 3 }  { available_spaces_bk_o out_data 1 3 }  { available_spaces_bk_o_ap_vld out_vld 1 1 } } }
	write_pointer_bk { ap_ovld {  { write_pointer_bk_i in_data 0 2 }  { write_pointer_bk_o out_data 1 2 }  { write_pointer_bk_o_ap_vld out_vld 1 1 } } }
	available_spaces_be { ap_ovld {  { available_spaces_be_i in_data 0 3 }  { available_spaces_be_o out_data 1 3 }  { available_spaces_be_o_ap_vld out_vld 1 1 } } }
	write_pointer_be { ap_ovld {  { write_pointer_be_i in_data 0 2 }  { write_pointer_be_o out_data 1 2 }  { write_pointer_be_o_ap_vld out_vld 1 1 } } }
	available_spaces_vi { ap_ovld {  { available_spaces_vi_i in_data 0 3 }  { available_spaces_vi_o out_data 1 3 }  { available_spaces_vi_o_ap_vld out_vld 1 1 } } }
	write_pointer_vi { ap_ovld {  { write_pointer_vi_i in_data 0 2 }  { write_pointer_vi_o out_data 1 2 }  { write_pointer_vi_o_ap_vld out_vld 1 1 } } }
	available_spaces_vo { ap_ovld {  { available_spaces_vo_i in_data 0 3 }  { available_spaces_vo_o out_data 1 3 }  { available_spaces_vo_o_ap_vld out_vld 1 1 } } }
	write_pointer_vo { ap_ovld {  { write_pointer_vo_i in_data 0 2 }  { write_pointer_vo_o out_data 1 2 }  { write_pointer_vo_o_ap_vld out_vld 1 1 } } }
	edca_queues { ap_memory {  { edca_queues_address0 mem_address 1 11 }  { edca_queues_ce0 mem_ce 1 1 }  { edca_queues_we0 mem_we 1 1 }  { edca_queues_d0 mem_din 1 8 }  { edca_queues_q0 mem_dout 0 8 } } }
	read_pointer_bk { ap_ovld {  { read_pointer_bk_i in_data 0 2 }  { read_pointer_bk_o out_data 1 2 }  { read_pointer_bk_o_ap_vld out_vld 1 1 } } }
	read_pointer_be { ap_ovld {  { read_pointer_be_i in_data 0 2 }  { read_pointer_be_o out_data 1 2 }  { read_pointer_be_o_ap_vld out_vld 1 1 } } }
	read_pointer_vi { ap_ovld {  { read_pointer_vi_i in_data 0 2 }  { read_pointer_vi_o out_data 1 2 }  { read_pointer_vi_o_ap_vld out_vld 1 1 } } }
	read_pointer_vo { ap_ovld {  { read_pointer_vo_i in_data 0 2 }  { read_pointer_vo_o out_data 1 2 }  { read_pointer_vo_o_ap_vld out_vld 1 1 } } }
}
