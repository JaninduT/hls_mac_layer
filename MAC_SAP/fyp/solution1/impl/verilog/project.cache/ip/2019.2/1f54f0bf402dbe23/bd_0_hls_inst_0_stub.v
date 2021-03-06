// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov 19 12:28:57 2020
// Host        : DESKTOP-V5A9UPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "send_frame,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(source_addr_mac_ce0, source_addr_mac_ce1, 
  dest_addr_mac_ce0, dest_addr_mac_we0, dest_addr_mac_ce1, dest_addr_mac_we1, data_ce0, 
  mac_frame_ce0, mac_frame_we0, current_txop_holder_o_ap_vld, received_frame_ce0, 
  received_frame_we0, received_frame_ce1, received_frame_we1, ap_clk, ap_rst, ap_start, 
  ap_done, ap_idle, ap_ready, source_addr_mac_address0, source_addr_mac_q0, 
  source_addr_mac_address1, source_addr_mac_q1, dest_addr_mac_address0, dest_addr_mac_d0, 
  dest_addr_mac_q0, dest_addr_mac_address1, dest_addr_mac_d1, dest_addr_mac_q1, 
  data_address0, data_q0, up, s_class, c_identifier_operating_class, 
  c_identifier_channel_number, t_slot, d_rate, tx_power_lvl, expiry_time, mac_frame_address0, 
  mac_frame_d0, mac_frame_q0, medium_state, current_txop_holder_i, current_txop_holder_o, 
  received_frame_address0, received_frame_d0, received_frame_q0, received_frame_address1, 
  received_frame_d1, received_frame_q1)
/* synthesis syn_black_box black_box_pad_pin="source_addr_mac_ce0,source_addr_mac_ce1,dest_addr_mac_ce0,dest_addr_mac_we0,dest_addr_mac_ce1,dest_addr_mac_we1,data_ce0,mac_frame_ce0,mac_frame_we0,current_txop_holder_o_ap_vld,received_frame_ce0,received_frame_we0,received_frame_ce1,received_frame_we1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,source_addr_mac_address0[2:0],source_addr_mac_q0[7:0],source_addr_mac_address1[2:0],source_addr_mac_q1[7:0],dest_addr_mac_address0[2:0],dest_addr_mac_d0[7:0],dest_addr_mac_q0[7:0],dest_addr_mac_address1[2:0],dest_addr_mac_d1[7:0],dest_addr_mac_q1[7:0],data_address0[6:0],data_q0[7:0],up[3:0],s_class[0:0],c_identifier_operating_class[7:0],c_identifier_channel_number[7:0],t_slot[1:0],d_rate[6:0],tx_power_lvl[3:0],expiry_time[63:0],mac_frame_address0[6:0],mac_frame_d0[7:0],mac_frame_q0[7:0],medium_state[0:0],current_txop_holder_i[2:0],current_txop_holder_o[2:0],received_frame_address0[6:0],received_frame_d0[7:0],received_frame_q0[7:0],received_frame_address1[6:0],received_frame_d1[7:0],received_frame_q1[7:0]" */;
  output source_addr_mac_ce0;
  output source_addr_mac_ce1;
  output dest_addr_mac_ce0;
  output dest_addr_mac_we0;
  output dest_addr_mac_ce1;
  output dest_addr_mac_we1;
  output data_ce0;
  output mac_frame_ce0;
  output mac_frame_we0;
  output current_txop_holder_o_ap_vld;
  output received_frame_ce0;
  output received_frame_we0;
  output received_frame_ce1;
  output received_frame_we1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [2:0]source_addr_mac_address0;
  input [7:0]source_addr_mac_q0;
  output [2:0]source_addr_mac_address1;
  input [7:0]source_addr_mac_q1;
  output [2:0]dest_addr_mac_address0;
  output [7:0]dest_addr_mac_d0;
  input [7:0]dest_addr_mac_q0;
  output [2:0]dest_addr_mac_address1;
  output [7:0]dest_addr_mac_d1;
  input [7:0]dest_addr_mac_q1;
  output [6:0]data_address0;
  input [7:0]data_q0;
  input [3:0]up;
  input [0:0]s_class;
  input [7:0]c_identifier_operating_class;
  input [7:0]c_identifier_channel_number;
  input [1:0]t_slot;
  input [6:0]d_rate;
  input [3:0]tx_power_lvl;
  input [63:0]expiry_time;
  output [6:0]mac_frame_address0;
  output [7:0]mac_frame_d0;
  input [7:0]mac_frame_q0;
  input [0:0]medium_state;
  input [2:0]current_txop_holder_i;
  output [2:0]current_txop_holder_o;
  output [6:0]received_frame_address0;
  output [7:0]received_frame_d0;
  input [7:0]received_frame_q0;
  output [6:0]received_frame_address1;
  output [7:0]received_frame_d1;
  input [7:0]received_frame_q1;
endmodule
