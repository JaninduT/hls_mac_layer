set moduleName ma_unitdatax_request
set isTopModule 1
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
set C_modelName {ma_unitdatax_request}
set C_modelType { void 0 }
set C_modelArgList {
	{ source_addr_mac int 8 unused {array 6 { } 0 1 }  }
	{ dest_addr_mac int 8 unused {array 6 { } 0 1 }  }
	{ data int 8 regular {array 70 { 1 3 } 1 1 }  }
	{ up uint 4 regular  }
	{ s_class uint 1 regular  }
	{ c_identifier_operating_class int 8 regular  }
	{ c_identifier_channel_number int 8 regular  }
	{ t_slot int 2 unused {pointer 0}  }
	{ d_rate int 7 regular {pointer 0}  }
	{ tx_power_lvl int 4 regular {pointer 0}  }
	{ expiry_time int 64 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "source_addr_mac", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "source_addr.mac","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_addr_mac", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dest_addr.mac","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 69,"step" : 1}]}]}]} , 
 	{ "Name" : "up", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "up","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_class", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_class","cData": "enum service_class","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c_identifier_operating_class", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "c_identifier.operating_class","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c_identifier_channel_number", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "c_identifier.channel_number","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "t_slot", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "t_slot","cData": "enum time_slot","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "d_rate", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY", "bitSlice":[{"low":0,"up":6,"cElement": [{"cName": "d_rate","cData": "uint7","bit_use": { "low": 0,"up": 6},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "tx_power_lvl", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "tx_power_lvl","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "expiry_time", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "expiry_time","cData": "long long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ source_addr_mac_address0 sc_out sc_lv 3 signal 0 } 
	{ source_addr_mac_ce0 sc_out sc_logic 1 signal 0 } 
	{ source_addr_mac_we0 sc_out sc_logic 1 signal 0 } 
	{ source_addr_mac_d0 sc_out sc_lv 8 signal 0 } 
	{ source_addr_mac_q0 sc_in sc_lv 8 signal 0 } 
	{ source_addr_mac_address1 sc_out sc_lv 3 signal 0 } 
	{ source_addr_mac_ce1 sc_out sc_logic 1 signal 0 } 
	{ source_addr_mac_we1 sc_out sc_logic 1 signal 0 } 
	{ source_addr_mac_d1 sc_out sc_lv 8 signal 0 } 
	{ source_addr_mac_q1 sc_in sc_lv 8 signal 0 } 
	{ dest_addr_mac_address0 sc_out sc_lv 3 signal 1 } 
	{ dest_addr_mac_ce0 sc_out sc_logic 1 signal 1 } 
	{ dest_addr_mac_we0 sc_out sc_logic 1 signal 1 } 
	{ dest_addr_mac_d0 sc_out sc_lv 8 signal 1 } 
	{ dest_addr_mac_q0 sc_in sc_lv 8 signal 1 } 
	{ dest_addr_mac_address1 sc_out sc_lv 3 signal 1 } 
	{ dest_addr_mac_ce1 sc_out sc_logic 1 signal 1 } 
	{ dest_addr_mac_we1 sc_out sc_logic 1 signal 1 } 
	{ dest_addr_mac_d1 sc_out sc_lv 8 signal 1 } 
	{ dest_addr_mac_q1 sc_in sc_lv 8 signal 1 } 
	{ data_address0 sc_out sc_lv 7 signal 2 } 
	{ data_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_q0 sc_in sc_lv 8 signal 2 } 
	{ up sc_in sc_lv 4 signal 3 } 
	{ s_class sc_in sc_lv 1 signal 4 } 
	{ c_identifier_operating_class sc_in sc_lv 8 signal 5 } 
	{ c_identifier_channel_number sc_in sc_lv 8 signal 6 } 
	{ t_slot sc_in sc_lv 2 signal 7 } 
	{ d_rate sc_in sc_lv 7 signal 8 } 
	{ tx_power_lvl sc_in sc_lv 4 signal 9 } 
	{ expiry_time sc_in sc_lv 64 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "source_addr_mac_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "address0" }} , 
 	{ "name": "source_addr_mac_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "ce0" }} , 
 	{ "name": "source_addr_mac_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "we0" }} , 
 	{ "name": "source_addr_mac_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "d0" }} , 
 	{ "name": "source_addr_mac_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "q0" }} , 
 	{ "name": "source_addr_mac_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "address1" }} , 
 	{ "name": "source_addr_mac_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "ce1" }} , 
 	{ "name": "source_addr_mac_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "we1" }} , 
 	{ "name": "source_addr_mac_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "d1" }} , 
 	{ "name": "source_addr_mac_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "q1" }} , 
 	{ "name": "dest_addr_mac_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "address0" }} , 
 	{ "name": "dest_addr_mac_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "ce0" }} , 
 	{ "name": "dest_addr_mac_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "we0" }} , 
 	{ "name": "dest_addr_mac_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "d0" }} , 
 	{ "name": "dest_addr_mac_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "q0" }} , 
 	{ "name": "dest_addr_mac_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "address1" }} , 
 	{ "name": "dest_addr_mac_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "ce1" }} , 
 	{ "name": "dest_addr_mac_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "we1" }} , 
 	{ "name": "dest_addr_mac_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "d1" }} , 
 	{ "name": "dest_addr_mac_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dest_addr_mac", "role": "q1" }} , 
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "up", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "up", "role": "default" }} , 
 	{ "name": "s_class", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_class", "role": "default" }} , 
 	{ "name": "c_identifier_operating_class", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_identifier_operating_class", "role": "default" }} , 
 	{ "name": "c_identifier_channel_number", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_identifier_channel_number", "role": "default" }} , 
 	{ "name": "t_slot", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "t_slot", "role": "default" }} , 
 	{ "name": "d_rate", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_rate", "role": "default" }} , 
 	{ "name": "tx_power_lvl", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx_power_lvl", "role": "default" }} , 
 	{ "name": "expiry_time", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expiry_time", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "7", "8", "9"],
		"CDFG" : "ma_unitdatax_request",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1563",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compose_mac_frame_fu_271"}],
		"Port" : [
			{"Name" : "source_addr_mac", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "dest_addr_mac", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "up", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_class", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_identifier_operating_class", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_identifier_channel_number", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_slot", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "tx_power_lvl", "Type" : "None", "Direction" : "I"},
			{"Name" : "expiry_time", "Type" : "None", "Direction" : "I"},
			{"Name" : "seq_number", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "write_pointer_bk"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "edca_queues"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_243", "Port" : "write_pointer_vo"}]},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.llc_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_enqueue_dequeue_fram_fu_243", "Parent" : "0", "Child" : ["4"],
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
			{"Name" : "ac", "Type" : "None", "Direction" : "I"},
			{"Name" : "inout_frame", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_enqueue_dequeue_fram_fu_243.edca_queues_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compose_mac_frame_fu_271", "Parent" : "0",
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
			{"Name" : "mac_frame", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ma_unitdatax_requeOg_U8", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ma_unitdatax_requeOg_U9", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ma_unitdatax_requeOg_U10", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ma_unitdatax_requeOg_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ma_unitdatax_request {
		source_addr_mac {Type X LastRead -1 FirstWrite -1}
		dest_addr_mac {Type X LastRead -1 FirstWrite -1}
		data {Type I LastRead 1 FirstWrite -1}
		up {Type I LastRead 0 FirstWrite -1}
		s_class {Type I LastRead 0 FirstWrite -1}
		c_identifier_operating_class {Type I LastRead 0 FirstWrite -1}
		c_identifier_channel_number {Type I LastRead 0 FirstWrite -1}
		t_slot {Type I LastRead -1 FirstWrite -1}
		d_rate {Type I LastRead 0 FirstWrite -1}
		tx_power_lvl {Type I LastRead 0 FirstWrite -1}
		expiry_time {Type I LastRead -1 FirstWrite -1}
		seq_number {Type IO LastRead -1 FirstWrite -1}
		available_spaces_bk {Type IO LastRead -1 FirstWrite -1}
		write_pointer_bk {Type IO LastRead -1 FirstWrite -1}
		edca_queues {Type O LastRead -1 FirstWrite -1}
		available_spaces_be {Type IO LastRead -1 FirstWrite -1}
		write_pointer_be {Type IO LastRead -1 FirstWrite -1}
		available_spaces_vi {Type IO LastRead -1 FirstWrite -1}
		write_pointer_vi {Type IO LastRead -1 FirstWrite -1}
		available_spaces_vo {Type IO LastRead -1 FirstWrite -1}
		write_pointer_vo {Type IO LastRead -1 FirstWrite -1}
		medium_state {Type I LastRead -1 FirstWrite -1}
		rand_state {Type IO LastRead -1 FirstWrite -1}}
	enqueue_dequeue_fram {
		ac {Type I LastRead 0 FirstWrite -1}
		inout_frame {Type I LastRead 2 FirstWrite -1}
		available_spaces_bk {Type IO LastRead -1 FirstWrite -1}
		write_pointer_bk {Type IO LastRead -1 FirstWrite -1}
		edca_queues {Type O LastRead -1 FirstWrite -1}
		available_spaces_be {Type IO LastRead -1 FirstWrite -1}
		write_pointer_be {Type IO LastRead -1 FirstWrite -1}
		available_spaces_vi {Type IO LastRead -1 FirstWrite -1}
		write_pointer_vi {Type IO LastRead -1 FirstWrite -1}
		available_spaces_vo {Type IO LastRead -1 FirstWrite -1}
		write_pointer_vo {Type IO LastRead -1 FirstWrite -1}}
	compose_mac_frame {
		seqnumber {Type I LastRead 11 FirstWrite -1}
		up {Type I LastRead 12 FirstWrite -1}
		data {Type I LastRead 13 FirstWrite -1}
		mac_frame {Type IO LastRead 14 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1563"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1564"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	source_addr_mac { ap_memory {  { source_addr_mac_address0 mem_address 1 3 }  { source_addr_mac_ce0 mem_ce 1 1 }  { source_addr_mac_we0 mem_we 1 1 }  { source_addr_mac_d0 mem_din 1 8 }  { source_addr_mac_q0 mem_dout 0 8 }  { source_addr_mac_address1 MemPortADDR2 1 3 }  { source_addr_mac_ce1 MemPortCE2 1 1 }  { source_addr_mac_we1 MemPortWE2 1 1 }  { source_addr_mac_d1 MemPortDIN2 1 8 }  { source_addr_mac_q1 MemPortDOUT2 0 8 } } }
	dest_addr_mac { ap_memory {  { dest_addr_mac_address0 mem_address 1 3 }  { dest_addr_mac_ce0 mem_ce 1 1 }  { dest_addr_mac_we0 mem_we 1 1 }  { dest_addr_mac_d0 mem_din 1 8 }  { dest_addr_mac_q0 mem_dout 0 8 }  { dest_addr_mac_address1 MemPortADDR2 1 3 }  { dest_addr_mac_ce1 MemPortCE2 1 1 }  { dest_addr_mac_we1 MemPortWE2 1 1 }  { dest_addr_mac_d1 MemPortDIN2 1 8 }  { dest_addr_mac_q1 MemPortDOUT2 0 8 } } }
	data { ap_memory {  { data_address0 mem_address 1 7 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 } } }
	up { ap_none {  { up in_data 0 4 } } }
	s_class { ap_none {  { s_class in_data 0 1 } } }
	c_identifier_operating_class { ap_none {  { c_identifier_operating_class in_data 0 8 } } }
	c_identifier_channel_number { ap_none {  { c_identifier_channel_number in_data 0 8 } } }
	t_slot { ap_none {  { t_slot in_data 0 2 } } }
	d_rate { ap_none {  { d_rate in_data 0 7 } } }
	tx_power_lvl { ap_none {  { tx_power_lvl in_data 0 4 } } }
	expiry_time { ap_none {  { expiry_time in_data 0 64 } } }
}

set busDeadlockParameterList { 
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
