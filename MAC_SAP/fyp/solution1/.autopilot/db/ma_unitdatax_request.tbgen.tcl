set moduleName ma_unitdatax_request
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
set C_modelName {ma_unitdatax_request}
set C_modelType { void 0 }
set C_modelArgList {
	{ source_addr_mac int 8 regular {array 6 { 1 1 } 1 1 }  }
	{ data int 8 regular {array 70 { 1 3 } 1 1 }  }
	{ up uint 4 regular  }
	{ s_class uint 1 regular  }
	{ c_identifier_operating_class int 8 regular  }
	{ c_identifier_channel_number int 8 regular  }
	{ d_rate uint 7 regular  }
	{ tx_power_lvl uint 4 regular  }
	{ medium_state int 1 regular {pointer 0 volatile }  }
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
	{ CW_bk int 10 regular {pointer 0} {global 0}  }
	{ rand_state int 32 regular {pointer 2} {global 2}  }
	{ bk_backoff_counter int 10 regular {pointer 1} {global 1}  }
	{ CW_be int 10 regular {pointer 0} {global 0}  }
	{ be_backoff_counter int 10 regular {pointer 1} {global 1}  }
	{ CW_vi int 10 regular {pointer 0} {global 0}  }
	{ vi_backoff_counter int 10 regular {pointer 1} {global 1}  }
	{ vo_backoff_counter int 10 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "source_addr_mac", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "up", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_class", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "c_identifier_operating_class", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "c_identifier_channel_number", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "d_rate", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "tx_power_lvl", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "medium_state", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
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
 	{ "Name" : "read_pointer_vo", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "CW_bk", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rand_state", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "bk_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "CW_be", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "be_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "CW_vi", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "vi_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "vo_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 77
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
	{ data_address0 sc_out sc_lv 7 signal 1 } 
	{ data_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_q0 sc_in sc_lv 8 signal 1 } 
	{ up sc_in sc_lv 4 signal 2 } 
	{ s_class sc_in sc_lv 1 signal 3 } 
	{ c_identifier_operating_class sc_in sc_lv 8 signal 4 } 
	{ c_identifier_channel_number sc_in sc_lv 8 signal 5 } 
	{ d_rate sc_in sc_lv 7 signal 6 } 
	{ tx_power_lvl sc_in sc_lv 4 signal 7 } 
	{ medium_state sc_in sc_lv 1 signal 8 } 
	{ available_spaces_bk_i sc_in sc_lv 3 signal 9 } 
	{ available_spaces_bk_o sc_out sc_lv 3 signal 9 } 
	{ available_spaces_bk_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ write_pointer_bk_i sc_in sc_lv 2 signal 10 } 
	{ write_pointer_bk_o sc_out sc_lv 2 signal 10 } 
	{ write_pointer_bk_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ available_spaces_be_i sc_in sc_lv 3 signal 11 } 
	{ available_spaces_be_o sc_out sc_lv 3 signal 11 } 
	{ available_spaces_be_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ write_pointer_be_i sc_in sc_lv 2 signal 12 } 
	{ write_pointer_be_o sc_out sc_lv 2 signal 12 } 
	{ write_pointer_be_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ available_spaces_vi_i sc_in sc_lv 3 signal 13 } 
	{ available_spaces_vi_o sc_out sc_lv 3 signal 13 } 
	{ available_spaces_vi_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ write_pointer_vi_i sc_in sc_lv 2 signal 14 } 
	{ write_pointer_vi_o sc_out sc_lv 2 signal 14 } 
	{ write_pointer_vi_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ available_spaces_vo_i sc_in sc_lv 3 signal 15 } 
	{ available_spaces_vo_o sc_out sc_lv 3 signal 15 } 
	{ available_spaces_vo_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ write_pointer_vo_i sc_in sc_lv 2 signal 16 } 
	{ write_pointer_vo_o sc_out sc_lv 2 signal 16 } 
	{ write_pointer_vo_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ edca_queues_address0 sc_out sc_lv 11 signal 17 } 
	{ edca_queues_ce0 sc_out sc_logic 1 signal 17 } 
	{ edca_queues_we0 sc_out sc_logic 1 signal 17 } 
	{ edca_queues_d0 sc_out sc_lv 8 signal 17 } 
	{ edca_queues_q0 sc_in sc_lv 8 signal 17 } 
	{ read_pointer_bk_i sc_in sc_lv 2 signal 18 } 
	{ read_pointer_bk_o sc_out sc_lv 2 signal 18 } 
	{ read_pointer_bk_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ read_pointer_be_i sc_in sc_lv 2 signal 19 } 
	{ read_pointer_be_o sc_out sc_lv 2 signal 19 } 
	{ read_pointer_be_o_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ read_pointer_vi_i sc_in sc_lv 2 signal 20 } 
	{ read_pointer_vi_o sc_out sc_lv 2 signal 20 } 
	{ read_pointer_vi_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ read_pointer_vo_i sc_in sc_lv 2 signal 21 } 
	{ read_pointer_vo_o sc_out sc_lv 2 signal 21 } 
	{ read_pointer_vo_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ CW_bk sc_in sc_lv 10 signal 22 } 
	{ rand_state_i sc_in sc_lv 32 signal 23 } 
	{ rand_state_o sc_out sc_lv 32 signal 23 } 
	{ rand_state_o_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ bk_backoff_counter sc_out sc_lv 10 signal 24 } 
	{ bk_backoff_counter_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ CW_be sc_in sc_lv 10 signal 25 } 
	{ be_backoff_counter sc_out sc_lv 10 signal 26 } 
	{ be_backoff_counter_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ CW_vi sc_in sc_lv 10 signal 27 } 
	{ vi_backoff_counter sc_out sc_lv 10 signal 28 } 
	{ vi_backoff_counter_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ vo_backoff_counter sc_out sc_lv 10 signal 29 } 
	{ vo_backoff_counter_ap_vld sc_out sc_logic 1 outvld 29 } 
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
 	{ "name": "data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "data", "role": "address0" }} , 
 	{ "name": "data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ce0" }} , 
 	{ "name": "data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "q0" }} , 
 	{ "name": "up", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "up", "role": "default" }} , 
 	{ "name": "s_class", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_class", "role": "default" }} , 
 	{ "name": "c_identifier_operating_class", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_identifier_operating_class", "role": "default" }} , 
 	{ "name": "c_identifier_channel_number", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_identifier_channel_number", "role": "default" }} , 
 	{ "name": "d_rate", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "d_rate", "role": "default" }} , 
 	{ "name": "tx_power_lvl", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tx_power_lvl", "role": "default" }} , 
 	{ "name": "medium_state", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "medium_state", "role": "default" }} , 
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
 	{ "name": "read_pointer_vo_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "read_pointer_vo", "role": "o_ap_vld" }} , 
 	{ "name": "CW_bk", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_bk", "role": "default" }} , 
 	{ "name": "rand_state_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "i" }} , 
 	{ "name": "rand_state_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "o" }} , 
 	{ "name": "rand_state_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rand_state", "role": "o_ap_vld" }} , 
 	{ "name": "bk_backoff_counter", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bk_backoff_counter", "role": "default" }} , 
 	{ "name": "bk_backoff_counter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bk_backoff_counter", "role": "ap_vld" }} , 
 	{ "name": "CW_be", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_be", "role": "default" }} , 
 	{ "name": "be_backoff_counter", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "be_backoff_counter", "role": "default" }} , 
 	{ "name": "be_backoff_counter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "be_backoff_counter", "role": "ap_vld" }} , 
 	{ "name": "CW_vi", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_vi", "role": "default" }} , 
 	{ "name": "vi_backoff_counter", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vi_backoff_counter", "role": "default" }} , 
 	{ "name": "vi_backoff_counter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vi_backoff_counter", "role": "ap_vld" }} , 
 	{ "name": "vo_backoff_counter", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vo_backoff_counter", "role": "default" }} , 
 	{ "name": "vo_backoff_counter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vo_backoff_counter", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "8"],
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
					{"ID" : "7", "SubInstance" : "grp_compose_mac_frame_fu_303", "Port" : "source_addr_mac"}]},
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
					{"ID" : "8", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "successful"}]},
			{"Name" : "unsupported_priority", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_priority"}]},
			{"Name" : "unsupported_service_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_service_s"}]},
			{"Name" : "unsupported_channel_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_channel_s"}]},
			{"Name" : "unsupported_tx_param", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "unsupported_tx_param"}]},
			{"Name" : "queue_full", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_ma_unitdatax_status_s_fu_313", "Port" : "queue_full"}]},
			{"Name" : "seq_number", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_enqueue_dequeue_fram_fu_257", "Port" : "read_pointer_vo"}]},
			{"Name" : "CW_bk", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_random_int_gen_fu_295", "Port" : "rand_state"}]},
			{"Name" : "bk_backoff_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CW_be", "Type" : "None", "Direction" : "I"},
			{"Name" : "be_backoff_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "CW_vi", "Type" : "None", "Direction" : "I"},
			{"Name" : "vi_backoff_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "vo_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.llc_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_data_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_enqueue_dequeue_fram_fu_257", "Parent" : "0",
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
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_295", "Parent" : "0", "Child" : ["5", "6"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_295.send_frame_urem_3bkb_U23", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_random_int_gen_fu_295.send_frame_mul_mucud_U24", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compose_mac_frame_fu_303", "Parent" : "0",
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
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ma_unitdatax_status_s_fu_313", "Parent" : "0",
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
			{"Name" : "queue_full", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
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
		queue_full {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "1599"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "1599"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	source_addr_mac { ap_memory {  { source_addr_mac_address0 mem_address 1 3 }  { source_addr_mac_ce0 mem_ce 1 1 }  { source_addr_mac_q0 mem_dout 0 8 }  { source_addr_mac_address1 MemPortADDR2 1 3 }  { source_addr_mac_ce1 MemPortCE2 1 1 }  { source_addr_mac_q1 MemPortDOUT2 0 8 } } }
	data { ap_memory {  { data_address0 mem_address 1 7 }  { data_ce0 mem_ce 1 1 }  { data_q0 mem_dout 0 8 } } }
	up { ap_none {  { up in_data 0 4 } } }
	s_class { ap_none {  { s_class in_data 0 1 } } }
	c_identifier_operating_class { ap_none {  { c_identifier_operating_class in_data 0 8 } } }
	c_identifier_channel_number { ap_none {  { c_identifier_channel_number in_data 0 8 } } }
	d_rate { ap_none {  { d_rate in_data 0 7 } } }
	tx_power_lvl { ap_none {  { tx_power_lvl in_data 0 4 } } }
	medium_state { ap_none {  { medium_state in_data 0 1 } } }
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
	CW_bk { ap_none {  { CW_bk in_data 0 10 } } }
	rand_state { ap_ovld {  { rand_state_i in_data 0 32 }  { rand_state_o out_data 1 32 }  { rand_state_o_ap_vld out_vld 1 1 } } }
	bk_backoff_counter { ap_vld {  { bk_backoff_counter out_data 1 10 }  { bk_backoff_counter_ap_vld out_vld 1 1 } } }
	CW_be { ap_none {  { CW_be in_data 0 10 } } }
	be_backoff_counter { ap_vld {  { be_backoff_counter out_data 1 10 }  { be_backoff_counter_ap_vld out_vld 1 1 } } }
	CW_vi { ap_none {  { CW_vi in_data 0 10 } } }
	vi_backoff_counter { ap_vld {  { vi_backoff_counter out_data 1 10 }  { vi_backoff_counter_ap_vld out_vld 1 1 } } }
	vo_backoff_counter { ap_vld {  { vo_backoff_counter out_data 1 10 }  { vo_backoff_counter_ap_vld out_vld 1 1 } } }
}
