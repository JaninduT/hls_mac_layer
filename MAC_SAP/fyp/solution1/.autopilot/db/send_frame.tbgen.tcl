set moduleName send_frame
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
set C_modelName {send_frame}
set C_modelType { void 0 }
set C_modelArgList {
	{ source_addr_mac int 8 regular {array 6 { 1 1 } 1 1 }  }
	{ dest_addr_mac int 8 unused {array 6 { } 0 1 }  }
	{ data int 8 regular {array 70 { 1 3 } 1 1 }  }
	{ up uint 4 regular  }
	{ s_class uint 1 regular  }
	{ c_identifier_operating_class int 8 regular  }
	{ c_identifier_channel_number int 8 regular  }
	{ t_slot uint 2 unused  }
	{ d_rate uint 7 regular  }
	{ tx_power_lvl uint 4 regular  }
	{ expiry_time int 64 unused  }
	{ mac_frame int 8 regular {array 100 { 2 3 } 1 1 }  }
	{ medium_state int 1 regular {pointer 0 volatile }  }
	{ current_txop_holder int 3 regular {pointer 2}  }
	{ received_frame int 8 unused {array 100 { } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "source_addr_mac", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "source_addr.mac","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_addr_mac", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dest_addr.mac","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 69,"step" : 1}]}]}]} , 
 	{ "Name" : "up", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "up","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "s_class", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "s_class","cData": "enum service_class","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c_identifier_operating_class", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "c_identifier.operating_class","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "c_identifier_channel_number", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "c_identifier.channel_number","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "t_slot", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "t_slot","cData": "enum time_slot","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "d_rate", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY", "bitSlice":[{"low":0,"up":6,"cElement": [{"cName": "d_rate","cData": "uint7","bit_use": { "low": 0,"up": 6},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "tx_power_lvl", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "tx_power_lvl","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "expiry_time", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "expiry_time","cData": "long long int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "mac_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "mac_frame","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "medium_state", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "medium_state","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "current_txop_holder", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "current_txop_holder","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "received_frame", "interface" : "memory", "bitwidth" : 8, "direction" : "NONE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "received_frame","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 52
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ source_addr_mac_address0 sc_out sc_lv 3 signal 0 } 
	{ source_addr_mac_ce0 sc_out sc_logic 1 signal 0 } 
	{ source_addr_mac_q0 sc_in sc_lv 8 signal 0 } 
	{ source_addr_mac_address1 sc_out sc_lv 3 signal 0 } 
	{ source_addr_mac_ce1 sc_out sc_logic 1 signal 0 } 
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
	{ mac_frame_address0 sc_out sc_lv 7 signal 11 } 
	{ mac_frame_ce0 sc_out sc_logic 1 signal 11 } 
	{ mac_frame_we0 sc_out sc_logic 1 signal 11 } 
	{ mac_frame_d0 sc_out sc_lv 8 signal 11 } 
	{ mac_frame_q0 sc_in sc_lv 8 signal 11 } 
	{ medium_state sc_in sc_lv 1 signal 12 } 
	{ current_txop_holder_i sc_in sc_lv 3 signal 13 } 
	{ current_txop_holder_o sc_out sc_lv 3 signal 13 } 
	{ current_txop_holder_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ received_frame_address0 sc_out sc_lv 7 signal 14 } 
	{ received_frame_ce0 sc_out sc_logic 1 signal 14 } 
	{ received_frame_we0 sc_out sc_logic 1 signal 14 } 
	{ received_frame_d0 sc_out sc_lv 8 signal 14 } 
	{ received_frame_q0 sc_in sc_lv 8 signal 14 } 
	{ received_frame_address1 sc_out sc_lv 7 signal 14 } 
	{ received_frame_ce1 sc_out sc_logic 1 signal 14 } 
	{ received_frame_we1 sc_out sc_logic 1 signal 14 } 
	{ received_frame_d1 sc_out sc_lv 8 signal 14 } 
	{ received_frame_q1 sc_in sc_lv 8 signal 14 } 
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
 	{ "name": "source_addr_mac_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "q0" }} , 
 	{ "name": "source_addr_mac_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "address1" }} , 
 	{ "name": "source_addr_mac_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "source_addr_mac", "role": "ce1" }} , 
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
 	{ "name": "expiry_time", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "expiry_time", "role": "default" }} , 
 	{ "name": "mac_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "mac_frame", "role": "address0" }} , 
 	{ "name": "mac_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_frame", "role": "ce0" }} , 
 	{ "name": "mac_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_frame", "role": "we0" }} , 
 	{ "name": "mac_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_frame", "role": "d0" }} , 
 	{ "name": "mac_frame_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_frame", "role": "q0" }} , 
 	{ "name": "medium_state", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "medium_state", "role": "default" }} , 
 	{ "name": "current_txop_holder_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "current_txop_holder", "role": "i" }} , 
 	{ "name": "current_txop_holder_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "current_txop_holder", "role": "o" }} , 
 	{ "name": "current_txop_holder_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "current_txop_holder", "role": "o_ap_vld" }} , 
 	{ "name": "received_frame_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "received_frame", "role": "address0" }} , 
 	{ "name": "received_frame_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "received_frame", "role": "ce0" }} , 
 	{ "name": "received_frame_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "received_frame", "role": "we0" }} , 
 	{ "name": "received_frame_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "received_frame", "role": "d0" }} , 
 	{ "name": "received_frame_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "received_frame", "role": "q0" }} , 
 	{ "name": "received_frame_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "received_frame", "role": "address1" }} , 
 	{ "name": "received_frame_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "received_frame", "role": "ce1" }} , 
 	{ "name": "received_frame_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "received_frame", "role": "we1" }} , 
 	{ "name": "received_frame_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "received_frame", "role": "d1" }} , 
 	{ "name": "received_frame_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "received_frame", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "24", "45", "54", "55", "56"],
		"CDFG" : "send_frame",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_initial_edca_process_fu_240"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_phy_txend_confirm_fu_292"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ma_unitdatax_request_fu_344"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_ma_unitdatax_request_fu_344"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_phy_data_request_fu_422"}],
		"Port" : [
			{"Name" : "source_addr_mac", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "source_addr_mac"}]},
			{"Name" : "dest_addr_mac", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "data"}]},
			{"Name" : "up", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_class", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_identifier_operating_class", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_identifier_channel_number", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_slot", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "tx_power_lvl", "Type" : "None", "Direction" : "I"},
			{"Name" : "expiry_time", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_frame", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "frame_to_transfer"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "frame_to_transfer"}]},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "medium_state"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "medium_state"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "medium_state"}]},
			{"Name" : "current_txop_holder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "current_txop_holder"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "current_txop_holder"}]},
			{"Name" : "received_frame", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "successful", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "successful"}]},
			{"Name" : "unsupported_priority", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "unsupported_priority"}]},
			{"Name" : "unsupported_service_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "unsupported_service_s"}]},
			{"Name" : "unsupported_channel_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "unsupported_channel_s"}]},
			{"Name" : "unsupported_tx_param", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "unsupported_tx_param"}]},
			{"Name" : "queue_full", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "queue_full"}]},
			{"Name" : "seq_number", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "seq_number"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "available_spaces_bk"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "available_spaces_bk"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "write_pointer_bk"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "write_pointer_bk"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "available_spaces_be"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "available_spaces_be"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "write_pointer_be"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "write_pointer_be"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "available_spaces_vi"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "available_spaces_vi"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "write_pointer_vi"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "write_pointer_vi"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "available_spaces_vo"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "available_spaces_vo"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "write_pointer_vo"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "write_pointer_vo"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "edca_queues"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "edca_queues"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "read_pointer_bk"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "read_pointer_bk"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "read_pointer_be"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "read_pointer_be"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "read_pointer_vi"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "read_pointer_vi"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "read_pointer_vo"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "read_pointer_vo"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "read_pointer_vo"}]},
			{"Name" : "CW_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "CW_bk"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "CW_bk"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "CW_bk"}]},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "rand_state"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "rand_state"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "rand_state"}]},
			{"Name" : "bk_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "bk_backoff_counter"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "bk_backoff_counter"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "bk_backoff_counter"}]},
			{"Name" : "CW_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "CW_be"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "CW_be"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "CW_be"}]},
			{"Name" : "be_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "be_backoff_counter"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "be_backoff_counter"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "be_backoff_counter"}]},
			{"Name" : "CW_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "CW_vi"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "CW_vi"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "CW_vi"}]},
			{"Name" : "vi_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "vi_backoff_counter"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "vi_backoff_counter"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "vi_backoff_counter"}]},
			{"Name" : "vo_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_initial_edca_process_fu_240", "Port" : "vo_backoff_counter"},
					{"ID" : "24", "SubInstance" : "grp_phy_txend_confirm_fu_292", "Port" : "vo_backoff_counter"},
					{"ID" : "45", "SubInstance" : "grp_ma_unitdatax_request_fu_344", "Port" : "vo_backoff_counter"}]},
			{"Name" : "count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "frame", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_phy_data_request_fu_422", "Port" : "data"}]},
			{"Name" : "stop_tx", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "call_ln17_phy_txend_request_fu_429", "Port" : "stop_tx"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edca_queues_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240", "Parent" : "0", "Child" : ["4", "6", "10", "14", "18", "22"],
		"CDFG" : "initial_edca_process",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_tx_fu_119"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_backoff_vo_fu_153"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_vi_fu_165"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_vi_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_be_fu_178"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_be_fu_178"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_bk_fu_191"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_bk_fu_191"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_slot_boundary_timing_fu_204"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_slot_boundary_timing_fu_204"}],
		"Port" : [
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_slot_boundary_timing_fu_204", "Port" : "medium_state"}]},
			{"Name" : "current_txop_holder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_backoff_vo_fu_153", "Port" : "current_txop_holder"}]},
			{"Name" : "frame_to_transfer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "tx_frame"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "available_spaces_vo"},
					{"ID" : "6", "SubInstance" : "grp_backoff_vo_fu_153", "Port" : "available_spaces_vo"}]},
			{"Name" : "vo_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_backoff_vo_fu_153", "Port" : "vo_backoff_counter"}]},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_backoff_vo_fu_153", "Port" : "rand_state"},
					{"ID" : "10", "SubInstance" : "grp_start_backoff_vi_fu_165", "Port" : "rand_state"},
					{"ID" : "14", "SubInstance" : "grp_start_backoff_be_fu_178", "Port" : "rand_state"},
					{"ID" : "18", "SubInstance" : "grp_start_backoff_bk_fu_191", "Port" : "rand_state"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "available_spaces_vi"}]},
			{"Name" : "vi_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_start_backoff_vi_fu_165", "Port" : "vi_backoff_counter"}]},
			{"Name" : "CW_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_start_backoff_vi_fu_165", "Port" : "CW_vi"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "available_spaces_be"}]},
			{"Name" : "be_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_start_backoff_be_fu_178", "Port" : "be_backoff_counter"}]},
			{"Name" : "CW_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_start_backoff_be_fu_178", "Port" : "CW_be"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "available_spaces_bk"}]},
			{"Name" : "bk_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_start_backoff_bk_fu_191", "Port" : "bk_backoff_counter"}]},
			{"Name" : "CW_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_start_backoff_bk_fu_191", "Port" : "CW_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "write_pointer_bk"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "write_pointer_be"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "write_pointer_vi"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_start_tx_fu_119", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_tx_fu_119", "Parent" : "3", "Child" : ["5"],
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
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "inout_frame"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_tx_fu_119.grp_enqueue_dequeue_fram_fu_44", "Parent" : "4",
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
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_backoff_vo_fu_153", "Parent" : "3", "Child" : ["7"],
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
					{"ID" : "7", "SubInstance" : "grp_random_int_gen_fu_32", "Port" : "rand_state"}]}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_backoff_vo_fu_153.grp_random_int_gen_fu_32", "Parent" : "6", "Child" : ["8", "9"],
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
	{"ID" : "8", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_backoff_vo_fu_153.grp_random_int_gen_fu_32.send_frame_urem_3bkb_U23", "Parent" : "7"},
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_backoff_vo_fu_153.grp_random_int_gen_fu_32.send_frame_mul_mucud_U24", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_vi_fu_165", "Parent" : "3", "Child" : ["11"],
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
					{"ID" : "11", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "vi_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_vi_fu_165.grp_random_int_gen_fu_37", "Parent" : "10", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_vi_fu_165.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_vi_fu_165.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_be_fu_178", "Parent" : "3", "Child" : ["15"],
		"CDFG" : "start_backoff_be",
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
			{"Name" : "CW_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "be_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_be_fu_178.grp_random_int_gen_fu_37", "Parent" : "14", "Child" : ["16", "17"],
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_be_fu_178.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "15"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_be_fu_178.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_bk_fu_191", "Parent" : "3", "Child" : ["19"],
		"CDFG" : "start_backoff_bk",
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
			{"Name" : "CW_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "bk_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_bk_fu_191.grp_random_int_gen_fu_37", "Parent" : "18", "Child" : ["20", "21"],
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
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_bk_fu_191.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "19"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_start_backoff_bk_fu_191.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_slot_boundary_timing_fu_204", "Parent" : "3", "Child" : ["23"],
		"CDFG" : "slot_boundary_timing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"}],
		"Port" : [
			{"Name" : "timing_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_start_timer_fu_53", "Port" : "medium_state"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_initial_edca_process_fu_240.grp_slot_boundary_timing_fu_204.grp_start_timer_fu_53", "Parent" : "22",
		"CDFG" : "start_timer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "count_idle", "Type" : "None", "Direction" : "I"},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292", "Parent" : "0", "Child" : ["25", "27", "31", "35", "39", "43"],
		"CDFG" : "phy_txend_confirm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_tx_fu_117"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_backoff_vo_fu_151"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_vi_fu_163"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_vi_fu_163"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_be_fu_176"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_be_fu_176"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_bk_fu_189"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_backoff_bk_fu_189"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_slot_boundary_timing_fu_202"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_slot_boundary_timing_fu_202"}],
		"Port" : [
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_slot_boundary_timing_fu_202", "Port" : "medium_state"}]},
			{"Name" : "current_txop_holder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "current_txop_holder"}]},
			{"Name" : "frame_to_transfer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "tx_frame"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_vo"},
					{"ID" : "27", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "available_spaces_vo"}]},
			{"Name" : "vo_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "vo_backoff_counter"}]},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_start_backoff_bk_fu_189", "Port" : "rand_state"},
					{"ID" : "31", "SubInstance" : "grp_start_backoff_vi_fu_163", "Port" : "rand_state"},
					{"ID" : "27", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "rand_state"},
					{"ID" : "35", "SubInstance" : "grp_start_backoff_be_fu_176", "Port" : "rand_state"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_vi"}]},
			{"Name" : "vi_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_start_backoff_vi_fu_163", "Port" : "vi_backoff_counter"}]},
			{"Name" : "CW_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_start_backoff_vi_fu_163", "Port" : "CW_vi"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_be"}]},
			{"Name" : "be_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_start_backoff_be_fu_176", "Port" : "be_backoff_counter"}]},
			{"Name" : "CW_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_start_backoff_be_fu_176", "Port" : "CW_be"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_bk"}]},
			{"Name" : "bk_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_start_backoff_bk_fu_189", "Port" : "bk_backoff_counter"}]},
			{"Name" : "CW_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_start_backoff_bk_fu_189", "Port" : "CW_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_bk"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_be"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_vi"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_tx_fu_117", "Parent" : "24", "Child" : ["26"],
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
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "inout_frame"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_tx_fu_117.grp_enqueue_dequeue_fram_fu_44", "Parent" : "25",
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
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_backoff_vo_fu_151", "Parent" : "24", "Child" : ["28"],
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
					{"ID" : "28", "SubInstance" : "grp_random_int_gen_fu_32", "Port" : "rand_state"}]}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_backoff_vo_fu_151.grp_random_int_gen_fu_32", "Parent" : "27", "Child" : ["29", "30"],
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
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_backoff_vo_fu_151.grp_random_int_gen_fu_32.send_frame_urem_3bkb_U23", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_backoff_vo_fu_151.grp_random_int_gen_fu_32.send_frame_mul_mucud_U24", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_vi_fu_163", "Parent" : "24", "Child" : ["32"],
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
					{"ID" : "32", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "vi_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_vi_fu_163.grp_random_int_gen_fu_37", "Parent" : "31", "Child" : ["33", "34"],
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
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_vi_fu_163.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "32"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_vi_fu_163.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_be_fu_176", "Parent" : "24", "Child" : ["36"],
		"CDFG" : "start_backoff_be",
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
			{"Name" : "CW_be", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "be_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_be_fu_176.grp_random_int_gen_fu_37", "Parent" : "35", "Child" : ["37", "38"],
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
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_be_fu_176.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_be_fu_176.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "36"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_bk_fu_189", "Parent" : "24", "Child" : ["40"],
		"CDFG" : "start_backoff_bk",
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
			{"Name" : "CW_bk", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "bk_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_bk_fu_189.grp_random_int_gen_fu_37", "Parent" : "39", "Child" : ["41", "42"],
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
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_bk_fu_189.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "40"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_start_backoff_bk_fu_189.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_slot_boundary_timing_fu_202", "Parent" : "24", "Child" : ["44"],
		"CDFG" : "slot_boundary_timing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_start_timer_fu_53"}],
		"Port" : [
			{"Name" : "timing_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_start_timer_fu_53", "Port" : "medium_state"}]}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_phy_txend_confirm_fu_292.grp_slot_boundary_timing_fu_202.grp_start_timer_fu_53", "Parent" : "43",
		"CDFG" : "start_timer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "count_idle", "Type" : "None", "Direction" : "I"},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344", "Parent" : "0", "Child" : ["46", "47", "48", "49", "52", "53"],
		"CDFG" : "ma_unitdatax_request",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "1599",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_random_int_gen_fu_295"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_random_int_gen_fu_295"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_random_int_gen_fu_295"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_random_int_gen_fu_295"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compose_mac_frame_fu_303"}],
		"Port" : [
			{"Name" : "source_addr_mac", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_compose_mac_frame_fu_303", "Port" : "source_addr_mac"}]},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "up", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_class", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_identifier_operating_class", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_identifier_channel_number", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_rate", "Type" : "None", "Direction" : "I"},
			{"Name" : "tx_power_lvl", "Type" : "None", "Direction" : "I"},
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I"},
			{"Name" : "successful", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "successful"}]},
			{"Name" : "unsupported_priority", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_priority"}]},
			{"Name" : "unsupported_service_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_service_s"}]},
			{"Name" : "unsupported_channel_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_channel_s"}]},
			{"Name" : "unsupported_tx_param", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_tx_param"}]},
			{"Name" : "queue_full", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "queue_full"}]},
			{"Name" : "seq_number", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_vo"}]},
			{"Name" : "CW_bk", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_random_int_gen_fu_295", "Port" : "rand_state"}]},
			{"Name" : "bk_backoff_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CW_be", "Type" : "None", "Direction" : "I"},
			{"Name" : "be_backoff_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CW_vi", "Type" : "None", "Direction" : "I"},
			{"Name" : "vi_backoff_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vo_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.llc_data_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.mac_data_U", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.grp_enqueue_dequeue_fram_fu_257", "Parent" : "45",
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
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.grp_random_int_gen_fu_295", "Parent" : "45", "Child" : ["50", "51"],
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.grp_random_int_gen_fu_295.send_frame_urem_3bkb_U23", "Parent" : "49"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.grp_random_int_gen_fu_295.send_frame_mul_mucud_U24", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.grp_compose_mac_frame_fu_303", "Parent" : "45",
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
			{"Name" : "source_addr_mac", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seqnumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "up", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_frame", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_request_fu_344.grp_ma_unitdatax_status_s_fu_313", "Parent" : "45",
		"CDFG" : "ma_unitdatax_status_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trans_sts", "Type" : "None", "Direction" : "I"},
			{"Name" : "successful", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "unsupported_priority", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "unsupported_service_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "unsupported_channel_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "unsupported_tx_param", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "queue_full", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_phy_data_request_fu_422", "Parent" : "0",
		"CDFG" : "phy_data_request",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln17_phy_txend_request_fu_429", "Parent" : "0",
		"CDFG" : "phy_txend_request",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stop_tx", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln6_phy_data_request_1_fu_435", "Parent" : "0",
		"CDFG" : "phy_data_request_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	send_frame {
		source_addr_mac {Type I LastRead 12 FirstWrite -1}
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
		mac_frame {Type IO LastRead 10 FirstWrite 2}
		medium_state {Type I LastRead 4 FirstWrite -1}
		current_txop_holder {Type IO LastRead 11 FirstWrite 1}
		received_frame {Type X LastRead -1 FirstWrite -1}
		successful {Type IO LastRead -1 FirstWrite -1}
		unsupported_priority {Type IO LastRead -1 FirstWrite -1}
		unsupported_service_s {Type IO LastRead -1 FirstWrite -1}
		unsupported_channel_s {Type IO LastRead -1 FirstWrite -1}
		unsupported_tx_param {Type IO LastRead -1 FirstWrite -1}
		queue_full {Type IO LastRead -1 FirstWrite -1}
		seq_number {Type IO LastRead -1 FirstWrite -1}
		available_spaces_bk {Type IO LastRead -1 FirstWrite -1}
		write_pointer_bk {Type IO LastRead -1 FirstWrite -1}
		available_spaces_be {Type IO LastRead -1 FirstWrite -1}
		write_pointer_be {Type IO LastRead -1 FirstWrite -1}
		available_spaces_vi {Type IO LastRead -1 FirstWrite -1}
		write_pointer_vi {Type IO LastRead -1 FirstWrite -1}
		available_spaces_vo {Type IO LastRead -1 FirstWrite -1}
		write_pointer_vo {Type IO LastRead -1 FirstWrite -1}
		edca_queues {Type IO LastRead -1 FirstWrite -1}
		read_pointer_bk {Type IO LastRead -1 FirstWrite -1}
		read_pointer_be {Type IO LastRead -1 FirstWrite -1}
		read_pointer_vi {Type IO LastRead -1 FirstWrite -1}
		read_pointer_vo {Type IO LastRead -1 FirstWrite -1}
		CW_bk {Type IO LastRead -1 FirstWrite -1}
		rand_state {Type IO LastRead -1 FirstWrite -1}
		bk_backoff_counter {Type IO LastRead -1 FirstWrite -1}
		CW_be {Type IO LastRead -1 FirstWrite -1}
		be_backoff_counter {Type IO LastRead -1 FirstWrite -1}
		CW_vi {Type IO LastRead -1 FirstWrite -1}
		vi_backoff_counter {Type IO LastRead -1 FirstWrite -1}
		vo_backoff_counter {Type IO LastRead -1 FirstWrite -1}
		count {Type IO LastRead -1 FirstWrite -1}
		frame {Type IO LastRead -1 FirstWrite -1}
		stop_tx {Type IO LastRead -1 FirstWrite -1}}
	initial_edca_process {
		medium_state {Type I LastRead 2 FirstWrite -1}
		current_txop_holder {Type IO LastRead 11 FirstWrite 1}
		frame_to_transfer {Type IO LastRead 2 FirstWrite 2}
		available_spaces_vo {Type IO LastRead 0 FirstWrite -1}
		vo_backoff_counter {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		available_spaces_vi {Type IO LastRead 5 FirstWrite 1}
		vi_backoff_counter {Type IO LastRead 5 FirstWrite 1}
		CW_vi {Type IO LastRead 0 FirstWrite 0}
		available_spaces_be {Type IO LastRead 7 FirstWrite 1}
		be_backoff_counter {Type IO LastRead 7 FirstWrite 1}
		CW_be {Type IO LastRead 0 FirstWrite 0}
		available_spaces_bk {Type IO LastRead 9 FirstWrite 1}
		bk_backoff_counter {Type IO LastRead 9 FirstWrite 1}
		CW_bk {Type IO LastRead 0 FirstWrite 0}
		write_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		write_pointer_be {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vo {Type IO LastRead 0 FirstWrite 1}
		edca_queues {Type IO LastRead 2 FirstWrite 2}
		read_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		read_pointer_be {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}
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
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}
	backoff_vo {
		current_txop_holder {Type O LastRead -1 FirstWrite 1}
		available_spaces_vo {Type I LastRead 0 FirstWrite -1}
		vo_backoff_counter {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	start_backoff_vi {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_vi {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		vi_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	start_backoff_be {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_be {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		be_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	start_backoff_bk {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_bk {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		bk_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	slot_boundary_timing {
		timing_mode {Type I LastRead 0 FirstWrite -1}
		medium_state {Type I LastRead 2 FirstWrite -1}}
	start_timer {
		count_idle {Type I LastRead 1 FirstWrite -1}
		medium_state {Type I LastRead 2 FirstWrite -1}}
	phy_txend_confirm {
		medium_state {Type I LastRead 2 FirstWrite -1}
		current_txop_holder {Type IO LastRead 11 FirstWrite 1}
		frame_to_transfer {Type IO LastRead 2 FirstWrite 2}
		available_spaces_vo {Type IO LastRead 0 FirstWrite -1}
		vo_backoff_counter {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		available_spaces_vi {Type IO LastRead 5 FirstWrite 1}
		vi_backoff_counter {Type IO LastRead 5 FirstWrite 1}
		CW_vi {Type IO LastRead 0 FirstWrite 0}
		available_spaces_be {Type IO LastRead 7 FirstWrite 1}
		be_backoff_counter {Type IO LastRead 7 FirstWrite 1}
		CW_be {Type IO LastRead 0 FirstWrite 0}
		available_spaces_bk {Type IO LastRead 9 FirstWrite 1}
		bk_backoff_counter {Type IO LastRead 9 FirstWrite 1}
		CW_bk {Type IO LastRead 0 FirstWrite 0}
		write_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		write_pointer_be {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		write_pointer_vo {Type IO LastRead 0 FirstWrite 1}
		edca_queues {Type IO LastRead 2 FirstWrite 2}
		read_pointer_bk {Type IO LastRead 0 FirstWrite 1}
		read_pointer_be {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vi {Type IO LastRead 0 FirstWrite 1}
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}
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
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}
	backoff_vo {
		current_txop_holder {Type O LastRead -1 FirstWrite 1}
		available_spaces_vo {Type I LastRead 0 FirstWrite -1}
		vo_backoff_counter {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	start_backoff_vi {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_vi {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		vi_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	start_backoff_be {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_be {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		be_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	start_backoff_bk {
		invoke_reason {Type I LastRead 0 FirstWrite -1}
		CW_bk {Type IO LastRead 0 FirstWrite 0}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		bk_backoff_counter {Type O LastRead -1 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	slot_boundary_timing {
		timing_mode {Type I LastRead 0 FirstWrite -1}
		medium_state {Type I LastRead 2 FirstWrite -1}}
	start_timer {
		count_idle {Type I LastRead 1 FirstWrite -1}
		medium_state {Type I LastRead 2 FirstWrite -1}}
	ma_unitdatax_request {
		source_addr_mac {Type I LastRead 12 FirstWrite -1}
		data {Type I LastRead 1 FirstWrite -1}
		up {Type I LastRead 0 FirstWrite -1}
		s_class {Type I LastRead 0 FirstWrite -1}
		c_identifier_operating_class {Type I LastRead 0 FirstWrite -1}
		c_identifier_channel_number {Type I LastRead 0 FirstWrite -1}
		d_rate {Type I LastRead 0 FirstWrite -1}
		tx_power_lvl {Type I LastRead 0 FirstWrite -1}
		medium_state {Type I LastRead 4 FirstWrite -1}
		successful {Type IO LastRead -1 FirstWrite -1}
		unsupported_priority {Type IO LastRead -1 FirstWrite -1}
		unsupported_service_s {Type IO LastRead -1 FirstWrite -1}
		unsupported_channel_s {Type IO LastRead -1 FirstWrite -1}
		unsupported_tx_param {Type IO LastRead -1 FirstWrite -1}
		queue_full {Type IO LastRead -1 FirstWrite -1}
		seq_number {Type IO LastRead -1 FirstWrite -1}
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
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}
		CW_bk {Type I LastRead 4 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}
		bk_backoff_counter {Type O LastRead -1 FirstWrite 5}
		CW_be {Type I LastRead 4 FirstWrite -1}
		be_backoff_counter {Type O LastRead -1 FirstWrite 5}
		CW_vi {Type I LastRead 4 FirstWrite -1}
		vi_backoff_counter {Type O LastRead -1 FirstWrite 5}
		vo_backoff_counter {Type O LastRead -1 FirstWrite 5}}
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
		read_pointer_vo {Type IO LastRead 0 FirstWrite 1}}
	random_int_gen {
		max_val {Type I LastRead 2 FirstWrite -1}
		rand_state {Type IO LastRead 0 FirstWrite 2}}
	compose_mac_frame {
		source_addr_mac {Type I LastRead 12 FirstWrite -1}
		seqnumber {Type I LastRead 8 FirstWrite -1}
		up {Type I LastRead 9 FirstWrite -1}
		data {Type I LastRead 13 FirstWrite -1}
		mac_frame {Type IO LastRead 14 FirstWrite 0}}
	ma_unitdatax_status_s {
		trans_sts {Type I LastRead 0 FirstWrite -1}
		successful {Type IO LastRead -1 FirstWrite -1}
		unsupported_priority {Type IO LastRead -1 FirstWrite -1}
		unsupported_service_s {Type IO LastRead -1 FirstWrite -1}
		unsupported_channel_s {Type IO LastRead -1 FirstWrite -1}
		unsupported_tx_param {Type IO LastRead -1 FirstWrite -1}
		queue_full {Type IO LastRead -1 FirstWrite -1}}
	phy_data_request {
		data {Type I LastRead 0 FirstWrite -1}
		data_offset {Type I LastRead 0 FirstWrite -1}}
	phy_txend_request {
		stop_tx {Type IO LastRead -1 FirstWrite -1}}
	phy_data_request_1 {
		data {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	source_addr_mac { ap_memory {  { source_addr_mac_address0 mem_address 1 3 }  { source_addr_mac_ce0 mem_ce 1 1 }  { source_addr_mac_q0 mem_dout 0 8 }  { source_addr_mac_address1 MemPortADDR2 1 3 }  { source_addr_mac_ce1 MemPortCE2 1 1 }  { source_addr_mac_q1 MemPortDOUT2 0 8 } } }
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
	mac_frame { ap_memory {  { mac_frame_address0 mem_address 1 7 }  { mac_frame_ce0 mem_ce 1 1 }  { mac_frame_we0 mem_we 1 1 }  { mac_frame_d0 mem_din 1 8 }  { mac_frame_q0 mem_dout 0 8 } } }
	medium_state { ap_none {  { medium_state in_data 0 1 } } }
	current_txop_holder { ap_ovld {  { current_txop_holder_i in_data 0 3 }  { current_txop_holder_o out_data 1 3 }  { current_txop_holder_o_ap_vld out_vld 1 1 } } }
	received_frame { ap_memory {  { received_frame_address0 mem_address 1 7 }  { received_frame_ce0 mem_ce 1 1 }  { received_frame_we0 mem_we 1 1 }  { received_frame_d0 mem_din 1 8 }  { received_frame_q0 mem_dout 0 8 }  { received_frame_address1 MemPortADDR2 1 7 }  { received_frame_ce1 MemPortCE2 1 1 }  { received_frame_we1 MemPortWE2 1 1 }  { received_frame_d1 MemPortDIN2 1 8 }  { received_frame_q1 MemPortDOUT2 0 8 } } }
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
