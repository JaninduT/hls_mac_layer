#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("source_addr_mac_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("source_addr_mac_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("source_addr_mac_q0", 8, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("source_addr_mac_address1", 3, hls_out, 0, "ap_memory", "MemPortADDR2", 1),
	Port_Property("source_addr_mac_ce1", 1, hls_out, 0, "ap_memory", "MemPortCE2", 1),
	Port_Property("source_addr_mac_q1", 8, hls_in, 0, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("dest_addr_mac_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("dest_addr_mac_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("dest_addr_mac_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("dest_addr_mac_d0", 8, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("dest_addr_mac_q0", 8, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("dest_addr_mac_address1", 3, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("dest_addr_mac_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("dest_addr_mac_we1", 1, hls_out, 1, "ap_memory", "MemPortWE2", 1),
	Port_Property("dest_addr_mac_d1", 8, hls_out, 1, "ap_memory", "MemPortDIN2", 1),
	Port_Property("dest_addr_mac_q1", 8, hls_in, 1, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("data_address0", 7, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("data_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("data_q0", 8, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("up", 4, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("s_class", 1, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("c_identifier_operating_class", 8, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("c_identifier_channel_number", 8, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("t_slot", 2, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("d_rate", 7, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("tx_power_lvl", 4, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("expiry_time", 64, hls_in, 10, "ap_none", "in_data", 1),
	Port_Property("mac_frame_address0", 7, hls_out, 11, "ap_memory", "mem_address", 1),
	Port_Property("mac_frame_ce0", 1, hls_out, 11, "ap_memory", "mem_ce", 1),
	Port_Property("mac_frame_we0", 1, hls_out, 11, "ap_memory", "mem_we", 1),
	Port_Property("mac_frame_d0", 8, hls_out, 11, "ap_memory", "mem_din", 1),
	Port_Property("mac_frame_q0", 8, hls_in, 11, "ap_memory", "mem_dout", 1),
	Port_Property("medium_state", 1, hls_in, 12, "ap_none", "in_data", 1),
	Port_Property("current_txop_holder_i", 3, hls_in, 13, "ap_ovld", "in_data", 1),
	Port_Property("current_txop_holder_o", 3, hls_out, 13, "ap_ovld", "out_data", 1),
	Port_Property("current_txop_holder_o_ap_vld", 1, hls_out, 13, "ap_ovld", "out_vld", 1),
	Port_Property("received_frame_address0", 7, hls_out, 14, "ap_memory", "mem_address", 1),
	Port_Property("received_frame_ce0", 1, hls_out, 14, "ap_memory", "mem_ce", 1),
	Port_Property("received_frame_we0", 1, hls_out, 14, "ap_memory", "mem_we", 1),
	Port_Property("received_frame_d0", 8, hls_out, 14, "ap_memory", "mem_din", 1),
	Port_Property("received_frame_q0", 8, hls_in, 14, "ap_memory", "mem_dout", 1),
	Port_Property("received_frame_address1", 7, hls_out, 14, "ap_memory", "MemPortADDR2", 1),
	Port_Property("received_frame_ce1", 1, hls_out, 14, "ap_memory", "MemPortCE2", 1),
	Port_Property("received_frame_we1", 1, hls_out, 14, "ap_memory", "MemPortWE2", 1),
	Port_Property("received_frame_d1", 8, hls_out, 14, "ap_memory", "MemPortDIN2", 1),
	Port_Property("received_frame_q1", 8, hls_in, 14, "ap_memory", "MemPortDOUT2", 1),
};
const char* HLS_Design_Meta::dut_name = "send_frame";
