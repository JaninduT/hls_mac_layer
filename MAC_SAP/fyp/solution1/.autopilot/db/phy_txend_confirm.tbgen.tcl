set moduleName phy_txend_confirm
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
set C_modelName {phy_txend_confirm}
set C_modelType { void 0 }
set C_modelArgList {
	{ medium_state int 1 regular {pointer 0 volatile }  }
	{ current_txop_holder int 3 regular {pointer 2}  }
	{ frame_to_transfer int 8 regular {array 100 { 2 3 } 1 1 }  }
	{ available_spaces_vo int 3 regular {pointer 2} {global 2}  }
	{ vo_backoff_counter int 10 regular {pointer 2} {global 2}  }
	{ rand_state int 32 regular {pointer 2} {global 2}  }
	{ available_spaces_vi int 3 regular {pointer 2} {global 2}  }
	{ vi_backoff_counter int 10 regular {pointer 2} {global 2}  }
	{ CW_vi int 10 regular {pointer 2} {global 2}  }
	{ available_spaces_be int 3 regular {pointer 2} {global 2}  }
	{ be_backoff_counter int 10 regular {pointer 2} {global 2}  }
	{ CW_be int 10 regular {pointer 2} {global 2}  }
	{ available_spaces_bk int 3 regular {pointer 2} {global 2}  }
	{ bk_backoff_counter int 10 regular {pointer 2} {global 2}  }
	{ CW_bk int 10 regular {pointer 2} {global 2}  }
	{ write_pointer_bk int 2 regular {pointer 2} {global 2}  }
	{ write_pointer_be int 2 regular {pointer 2} {global 2}  }
	{ write_pointer_vi int 2 regular {pointer 2} {global 2}  }
	{ write_pointer_vo int 2 regular {pointer 2} {global 2}  }
	{ edca_queues int 8 regular {array 1600 { 2 3 } 1 1 } {global 2}  }
	{ read_pointer_bk int 2 regular {pointer 2} {global 2}  }
	{ read_pointer_be int 2 regular {pointer 2} {global 2}  }
	{ read_pointer_vi int 2 regular {pointer 2} {global 2}  }
	{ read_pointer_vo int 2 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "medium_state", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "current_txop_holder", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE"} , 
 	{ "Name" : "frame_to_transfer", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "available_spaces_vo", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "vo_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "rand_state", "interface" : "wire", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "available_spaces_vi", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "vi_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "CW_vi", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "available_spaces_be", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "be_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "CW_be", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "available_spaces_bk", "interface" : "wire", "bitwidth" : 3, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "bk_backoff_counter", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "CW_bk", "interface" : "wire", "bitwidth" : 10, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_bk", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_be", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_vi", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "write_pointer_vo", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "edca_queues", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_bk", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_be", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_vi", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "read_pointer_vo", "interface" : "wire", "bitwidth" : 2, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 80
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ medium_state sc_in sc_lv 1 signal 0 } 
	{ current_txop_holder_i sc_in sc_lv 3 signal 1 } 
	{ current_txop_holder_o sc_out sc_lv 3 signal 1 } 
	{ current_txop_holder_o_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ frame_to_transfer_address0 sc_out sc_lv 7 signal 2 } 
	{ frame_to_transfer_ce0 sc_out sc_logic 1 signal 2 } 
	{ frame_to_transfer_we0 sc_out sc_logic 1 signal 2 } 
	{ frame_to_transfer_d0 sc_out sc_lv 8 signal 2 } 
	{ frame_to_transfer_q0 sc_in sc_lv 8 signal 2 } 
	{ available_spaces_vo_i sc_in sc_lv 3 signal 3 } 
	{ available_spaces_vo_o sc_out sc_lv 3 signal 3 } 
	{ available_spaces_vo_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ vo_backoff_counter_i sc_in sc_lv 10 signal 4 } 
	{ vo_backoff_counter_o sc_out sc_lv 10 signal 4 } 
	{ vo_backoff_counter_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ rand_state_i sc_in sc_lv 32 signal 5 } 
	{ rand_state_o sc_out sc_lv 32 signal 5 } 
	{ rand_state_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ available_spaces_vi_i sc_in sc_lv 3 signal 6 } 
	{ available_spaces_vi_o sc_out sc_lv 3 signal 6 } 
	{ available_spaces_vi_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ vi_backoff_counter_i sc_in sc_lv 10 signal 7 } 
	{ vi_backoff_counter_o sc_out sc_lv 10 signal 7 } 
	{ vi_backoff_counter_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ CW_vi_i sc_in sc_lv 10 signal 8 } 
	{ CW_vi_o sc_out sc_lv 10 signal 8 } 
	{ CW_vi_o_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ available_spaces_be_i sc_in sc_lv 3 signal 9 } 
	{ available_spaces_be_o sc_out sc_lv 3 signal 9 } 
	{ available_spaces_be_o_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ be_backoff_counter_i sc_in sc_lv 10 signal 10 } 
	{ be_backoff_counter_o sc_out sc_lv 10 signal 10 } 
	{ be_backoff_counter_o_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ CW_be_i sc_in sc_lv 10 signal 11 } 
	{ CW_be_o sc_out sc_lv 10 signal 11 } 
	{ CW_be_o_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ available_spaces_bk_i sc_in sc_lv 3 signal 12 } 
	{ available_spaces_bk_o sc_out sc_lv 3 signal 12 } 
	{ available_spaces_bk_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ bk_backoff_counter_i sc_in sc_lv 10 signal 13 } 
	{ bk_backoff_counter_o sc_out sc_lv 10 signal 13 } 
	{ bk_backoff_counter_o_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ CW_bk_i sc_in sc_lv 10 signal 14 } 
	{ CW_bk_o sc_out sc_lv 10 signal 14 } 
	{ CW_bk_o_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ write_pointer_bk_i sc_in sc_lv 2 signal 15 } 
	{ write_pointer_bk_o sc_out sc_lv 2 signal 15 } 
	{ write_pointer_bk_o_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ write_pointer_be_i sc_in sc_lv 2 signal 16 } 
	{ write_pointer_be_o sc_out sc_lv 2 signal 16 } 
	{ write_pointer_be_o_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ write_pointer_vi_i sc_in sc_lv 2 signal 17 } 
	{ write_pointer_vi_o sc_out sc_lv 2 signal 17 } 
	{ write_pointer_vi_o_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ write_pointer_vo_i sc_in sc_lv 2 signal 18 } 
	{ write_pointer_vo_o sc_out sc_lv 2 signal 18 } 
	{ write_pointer_vo_o_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ edca_queues_address0 sc_out sc_lv 11 signal 19 } 
	{ edca_queues_ce0 sc_out sc_logic 1 signal 19 } 
	{ edca_queues_we0 sc_out sc_logic 1 signal 19 } 
	{ edca_queues_d0 sc_out sc_lv 8 signal 19 } 
	{ edca_queues_q0 sc_in sc_lv 8 signal 19 } 
	{ read_pointer_bk_i sc_in sc_lv 2 signal 20 } 
	{ read_pointer_bk_o sc_out sc_lv 2 signal 20 } 
	{ read_pointer_bk_o_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ read_pointer_be_i sc_in sc_lv 2 signal 21 } 
	{ read_pointer_be_o sc_out sc_lv 2 signal 21 } 
	{ read_pointer_be_o_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ read_pointer_vi_i sc_in sc_lv 2 signal 22 } 
	{ read_pointer_vi_o sc_out sc_lv 2 signal 22 } 
	{ read_pointer_vi_o_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ read_pointer_vo_i sc_in sc_lv 2 signal 23 } 
	{ read_pointer_vo_o sc_out sc_lv 2 signal 23 } 
	{ read_pointer_vo_o_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "medium_state", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "medium_state", "role": "default" }} , 
 	{ "name": "current_txop_holder_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "current_txop_holder", "role": "i" }} , 
 	{ "name": "current_txop_holder_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "current_txop_holder", "role": "o" }} , 
 	{ "name": "current_txop_holder_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "current_txop_holder", "role": "o_ap_vld" }} , 
 	{ "name": "frame_to_transfer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "frame_to_transfer", "role": "address0" }} , 
 	{ "name": "frame_to_transfer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_to_transfer", "role": "ce0" }} , 
 	{ "name": "frame_to_transfer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame_to_transfer", "role": "we0" }} , 
 	{ "name": "frame_to_transfer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_to_transfer", "role": "d0" }} , 
 	{ "name": "frame_to_transfer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame_to_transfer", "role": "q0" }} , 
 	{ "name": "available_spaces_vo_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vo", "role": "i" }} , 
 	{ "name": "available_spaces_vo_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vo", "role": "o" }} , 
 	{ "name": "available_spaces_vo_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_vo", "role": "o_ap_vld" }} , 
 	{ "name": "vo_backoff_counter_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vo_backoff_counter", "role": "i" }} , 
 	{ "name": "vo_backoff_counter_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vo_backoff_counter", "role": "o" }} , 
 	{ "name": "vo_backoff_counter_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vo_backoff_counter", "role": "o_ap_vld" }} , 
 	{ "name": "rand_state_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "i" }} , 
 	{ "name": "rand_state_o", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_state", "role": "o" }} , 
 	{ "name": "rand_state_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rand_state", "role": "o_ap_vld" }} , 
 	{ "name": "available_spaces_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vi", "role": "i" }} , 
 	{ "name": "available_spaces_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_vi", "role": "o" }} , 
 	{ "name": "available_spaces_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_vi", "role": "o_ap_vld" }} , 
 	{ "name": "vi_backoff_counter_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vi_backoff_counter", "role": "i" }} , 
 	{ "name": "vi_backoff_counter_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "vi_backoff_counter", "role": "o" }} , 
 	{ "name": "vi_backoff_counter_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "vi_backoff_counter", "role": "o_ap_vld" }} , 
 	{ "name": "CW_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_vi", "role": "i" }} , 
 	{ "name": "CW_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_vi", "role": "o" }} , 
 	{ "name": "CW_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "CW_vi", "role": "o_ap_vld" }} , 
 	{ "name": "available_spaces_be_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_be", "role": "i" }} , 
 	{ "name": "available_spaces_be_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_be", "role": "o" }} , 
 	{ "name": "available_spaces_be_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_be", "role": "o_ap_vld" }} , 
 	{ "name": "be_backoff_counter_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "be_backoff_counter", "role": "i" }} , 
 	{ "name": "be_backoff_counter_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "be_backoff_counter", "role": "o" }} , 
 	{ "name": "be_backoff_counter_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "be_backoff_counter", "role": "o_ap_vld" }} , 
 	{ "name": "CW_be_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_be", "role": "i" }} , 
 	{ "name": "CW_be_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_be", "role": "o" }} , 
 	{ "name": "CW_be_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "CW_be", "role": "o_ap_vld" }} , 
 	{ "name": "available_spaces_bk_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_bk", "role": "i" }} , 
 	{ "name": "available_spaces_bk_o", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "available_spaces_bk", "role": "o" }} , 
 	{ "name": "available_spaces_bk_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "available_spaces_bk", "role": "o_ap_vld" }} , 
 	{ "name": "bk_backoff_counter_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bk_backoff_counter", "role": "i" }} , 
 	{ "name": "bk_backoff_counter_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "bk_backoff_counter", "role": "o" }} , 
 	{ "name": "bk_backoff_counter_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bk_backoff_counter", "role": "o_ap_vld" }} , 
 	{ "name": "CW_bk_i", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_bk", "role": "i" }} , 
 	{ "name": "CW_bk_o", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CW_bk", "role": "o" }} , 
 	{ "name": "CW_bk_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "CW_bk", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_bk_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_bk", "role": "i" }} , 
 	{ "name": "write_pointer_bk_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_bk", "role": "o" }} , 
 	{ "name": "write_pointer_bk_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_bk", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_be_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_be", "role": "i" }} , 
 	{ "name": "write_pointer_be_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_be", "role": "o" }} , 
 	{ "name": "write_pointer_be_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_be", "role": "o_ap_vld" }} , 
 	{ "name": "write_pointer_vi_i", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_vi", "role": "i" }} , 
 	{ "name": "write_pointer_vi_o", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "write_pointer_vi", "role": "o" }} , 
 	{ "name": "write_pointer_vi_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "write_pointer_vi", "role": "o_ap_vld" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "7", "11", "15", "19"],
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
					{"ID" : "19", "SubInstance" : "grp_slot_boundary_timing_fu_202", "Port" : "medium_state"}]},
			{"Name" : "current_txop_holder", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "current_txop_holder"}]},
			{"Name" : "frame_to_transfer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "tx_frame"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_vo"},
					{"ID" : "3", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "available_spaces_vo"}]},
			{"Name" : "vo_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "vo_backoff_counter"}]},
			{"Name" : "rand_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_start_backoff_bk_fu_189", "Port" : "rand_state"},
					{"ID" : "7", "SubInstance" : "grp_start_backoff_vi_fu_163", "Port" : "rand_state"},
					{"ID" : "3", "SubInstance" : "grp_backoff_vo_fu_151", "Port" : "rand_state"},
					{"ID" : "11", "SubInstance" : "grp_start_backoff_be_fu_176", "Port" : "rand_state"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_vi"}]},
			{"Name" : "vi_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_start_backoff_vi_fu_163", "Port" : "vi_backoff_counter"}]},
			{"Name" : "CW_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_start_backoff_vi_fu_163", "Port" : "CW_vi"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_be"}]},
			{"Name" : "be_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_start_backoff_be_fu_176", "Port" : "be_backoff_counter"}]},
			{"Name" : "CW_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_start_backoff_be_fu_176", "Port" : "CW_be"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "available_spaces_bk"}]},
			{"Name" : "bk_backoff_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_start_backoff_bk_fu_189", "Port" : "bk_backoff_counter"}]},
			{"Name" : "CW_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_start_backoff_bk_fu_189", "Port" : "CW_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_bk"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_be"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_vi"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_start_tx_fu_117", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_start_tx_fu_117", "Parent" : "0", "Child" : ["2"],
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
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "inout_frame"}]},
			{"Name" : "available_spaces_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_bk"}]},
			{"Name" : "write_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_bk"}]},
			{"Name" : "available_spaces_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_be"}]},
			{"Name" : "write_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_be"}]},
			{"Name" : "available_spaces_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vi"}]},
			{"Name" : "write_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vi"}]},
			{"Name" : "available_spaces_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "available_spaces_vo"}]},
			{"Name" : "write_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "write_pointer_vo"}]},
			{"Name" : "edca_queues", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "edca_queues"}]},
			{"Name" : "read_pointer_bk", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_bk"}]},
			{"Name" : "read_pointer_be", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_be"}]},
			{"Name" : "read_pointer_vi", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vi"}]},
			{"Name" : "read_pointer_vo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_enqueue_dequeue_fram_fu_44", "Port" : "read_pointer_vo"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_start_tx_fu_117.grp_enqueue_dequeue_fram_fu_44", "Parent" : "1",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backoff_vo_fu_151", "Parent" : "0", "Child" : ["4"],
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
					{"ID" : "4", "SubInstance" : "grp_random_int_gen_fu_32", "Port" : "rand_state"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backoff_vo_fu_151.grp_random_int_gen_fu_32", "Parent" : "3", "Child" : ["5", "6"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backoff_vo_fu_151.grp_random_int_gen_fu_32.send_frame_urem_3bkb_U23", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_backoff_vo_fu_151.grp_random_int_gen_fu_32.send_frame_mul_mucud_U24", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_vi_fu_163", "Parent" : "0", "Child" : ["8"],
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
					{"ID" : "8", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "vi_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_vi_fu_163.grp_random_int_gen_fu_37", "Parent" : "7", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_vi_fu_163.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_vi_fu_163.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_be_fu_176", "Parent" : "0", "Child" : ["12"],
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
					{"ID" : "12", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "be_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_be_fu_176.grp_random_int_gen_fu_37", "Parent" : "11", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_be_fu_176.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_be_fu_176.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_bk_fu_189", "Parent" : "0", "Child" : ["16"],
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
					{"ID" : "16", "SubInstance" : "grp_random_int_gen_fu_37", "Port" : "rand_state"}]},
			{"Name" : "bk_backoff_counter", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_bk_fu_189.grp_random_int_gen_fu_37", "Parent" : "15", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_bk_fu_189.grp_random_int_gen_fu_37.send_frame_urem_3bkb_U23", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_start_backoff_bk_fu_189.grp_random_int_gen_fu_37.send_frame_mul_mucud_U24", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_slot_boundary_timing_fu_202", "Parent" : "0", "Child" : ["20"],
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
					{"ID" : "20", "SubInstance" : "grp_start_timer_fu_53", "Port" : "medium_state"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_slot_boundary_timing_fu_202.grp_start_timer_fu_53", "Parent" : "19",
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
			{"Name" : "medium_state", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		medium_state {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	medium_state { ap_none {  { medium_state in_data 0 1 } } }
	current_txop_holder { ap_ovld {  { current_txop_holder_i in_data 0 3 }  { current_txop_holder_o out_data 1 3 }  { current_txop_holder_o_ap_vld out_vld 1 1 } } }
	frame_to_transfer { ap_memory {  { frame_to_transfer_address0 mem_address 1 7 }  { frame_to_transfer_ce0 mem_ce 1 1 }  { frame_to_transfer_we0 mem_we 1 1 }  { frame_to_transfer_d0 mem_din 1 8 }  { frame_to_transfer_q0 mem_dout 0 8 } } }
	available_spaces_vo { ap_ovld {  { available_spaces_vo_i in_data 0 3 }  { available_spaces_vo_o out_data 1 3 }  { available_spaces_vo_o_ap_vld out_vld 1 1 } } }
	vo_backoff_counter { ap_ovld {  { vo_backoff_counter_i in_data 0 10 }  { vo_backoff_counter_o out_data 1 10 }  { vo_backoff_counter_o_ap_vld out_vld 1 1 } } }
	rand_state { ap_ovld {  { rand_state_i in_data 0 32 }  { rand_state_o out_data 1 32 }  { rand_state_o_ap_vld out_vld 1 1 } } }
	available_spaces_vi { ap_ovld {  { available_spaces_vi_i in_data 0 3 }  { available_spaces_vi_o out_data 1 3 }  { available_spaces_vi_o_ap_vld out_vld 1 1 } } }
	vi_backoff_counter { ap_ovld {  { vi_backoff_counter_i in_data 0 10 }  { vi_backoff_counter_o out_data 1 10 }  { vi_backoff_counter_o_ap_vld out_vld 1 1 } } }
	CW_vi { ap_ovld {  { CW_vi_i in_data 0 10 }  { CW_vi_o out_data 1 10 }  { CW_vi_o_ap_vld out_vld 1 1 } } }
	available_spaces_be { ap_ovld {  { available_spaces_be_i in_data 0 3 }  { available_spaces_be_o out_data 1 3 }  { available_spaces_be_o_ap_vld out_vld 1 1 } } }
	be_backoff_counter { ap_ovld {  { be_backoff_counter_i in_data 0 10 }  { be_backoff_counter_o out_data 1 10 }  { be_backoff_counter_o_ap_vld out_vld 1 1 } } }
	CW_be { ap_ovld {  { CW_be_i in_data 0 10 }  { CW_be_o out_data 1 10 }  { CW_be_o_ap_vld out_vld 1 1 } } }
	available_spaces_bk { ap_ovld {  { available_spaces_bk_i in_data 0 3 }  { available_spaces_bk_o out_data 1 3 }  { available_spaces_bk_o_ap_vld out_vld 1 1 } } }
	bk_backoff_counter { ap_ovld {  { bk_backoff_counter_i in_data 0 10 }  { bk_backoff_counter_o out_data 1 10 }  { bk_backoff_counter_o_ap_vld out_vld 1 1 } } }
	CW_bk { ap_ovld {  { CW_bk_i in_data 0 10 }  { CW_bk_o out_data 1 10 }  { CW_bk_o_ap_vld out_vld 1 1 } } }
	write_pointer_bk { ap_ovld {  { write_pointer_bk_i in_data 0 2 }  { write_pointer_bk_o out_data 1 2 }  { write_pointer_bk_o_ap_vld out_vld 1 1 } } }
	write_pointer_be { ap_ovld {  { write_pointer_be_i in_data 0 2 }  { write_pointer_be_o out_data 1 2 }  { write_pointer_be_o_ap_vld out_vld 1 1 } } }
	write_pointer_vi { ap_ovld {  { write_pointer_vi_i in_data 0 2 }  { write_pointer_vi_o out_data 1 2 }  { write_pointer_vi_o_ap_vld out_vld 1 1 } } }
	write_pointer_vo { ap_ovld {  { write_pointer_vo_i in_data 0 2 }  { write_pointer_vo_o out_data 1 2 }  { write_pointer_vo_o_ap_vld out_vld 1 1 } } }
	edca_queues { ap_memory {  { edca_queues_address0 mem_address 1 11 }  { edca_queues_ce0 mem_ce 1 1 }  { edca_queues_we0 mem_we 1 1 }  { edca_queues_d0 mem_din 1 8 }  { edca_queues_q0 mem_dout 0 8 } } }
	read_pointer_bk { ap_ovld {  { read_pointer_bk_i in_data 0 2 }  { read_pointer_bk_o out_data 1 2 }  { read_pointer_bk_o_ap_vld out_vld 1 1 } } }
	read_pointer_be { ap_ovld {  { read_pointer_be_i in_data 0 2 }  { read_pointer_be_o out_data 1 2 }  { read_pointer_be_o_ap_vld out_vld 1 1 } } }
	read_pointer_vi { ap_ovld {  { read_pointer_vi_i in_data 0 2 }  { read_pointer_vi_o out_data 1 2 }  { read_pointer_vi_o_ap_vld out_vld 1 1 } } }
	read_pointer_vo { ap_ovld {  { read_pointer_vo_i in_data 0 2 }  { read_pointer_vo_o out_data 1 2 }  { read_pointer_vo_o_ap_vld out_vld 1 1 } } }
}
