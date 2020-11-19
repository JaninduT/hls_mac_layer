// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: jt:hls:send_frame:1.0
// IP Revision: 2011191226

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  source_addr_mac_ce0,
  source_addr_mac_ce1,
  dest_addr_mac_ce0,
  dest_addr_mac_we0,
  dest_addr_mac_ce1,
  dest_addr_mac_we1,
  data_ce0,
  mac_frame_ce0,
  mac_frame_we0,
  current_txop_holder_o_ap_vld,
  received_frame_ce0,
  received_frame_we0,
  received_frame_ce1,
  received_frame_we1,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  source_addr_mac_address0,
  source_addr_mac_q0,
  source_addr_mac_address1,
  source_addr_mac_q1,
  dest_addr_mac_address0,
  dest_addr_mac_d0,
  dest_addr_mac_q0,
  dest_addr_mac_address1,
  dest_addr_mac_d1,
  dest_addr_mac_q1,
  data_address0,
  data_q0,
  up,
  s_class,
  c_identifier_operating_class,
  c_identifier_channel_number,
  t_slot,
  d_rate,
  tx_power_lvl,
  expiry_time,
  mac_frame_address0,
  mac_frame_d0,
  mac_frame_q0,
  medium_state,
  current_txop_holder_i,
  current_txop_holder_o,
  received_frame_address0,
  received_frame_d0,
  received_frame_q0,
  received_frame_address1,
  received_frame_d1,
  received_frame_q1
);

output wire source_addr_mac_ce0;
output wire source_addr_mac_ce1;
output wire dest_addr_mac_ce0;
output wire dest_addr_mac_we0;
output wire dest_addr_mac_ce1;
output wire dest_addr_mac_we1;
output wire data_ce0;
output wire mac_frame_ce0;
output wire mac_frame_we0;
output wire current_txop_holder_o_ap_vld;
output wire received_frame_ce0;
output wire received_frame_we0;
output wire received_frame_ce1;
output wire received_frame_we1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_address0 DATA" *)
output wire [2 : 0] source_addr_mac_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_q0 DATA" *)
input wire [7 : 0] source_addr_mac_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_address1 DATA" *)
output wire [2 : 0] source_addr_mac_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_q1 DATA" *)
input wire [7 : 0] source_addr_mac_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_address0 DATA" *)
output wire [2 : 0] dest_addr_mac_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_d0 DATA" *)
output wire [7 : 0] dest_addr_mac_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_q0 DATA" *)
input wire [7 : 0] dest_addr_mac_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_address1 DATA" *)
output wire [2 : 0] dest_addr_mac_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_d1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_d1 DATA" *)
output wire [7 : 0] dest_addr_mac_d1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_q1 DATA" *)
input wire [7 : 0] dest_addr_mac_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_address0 DATA" *)
output wire [6 : 0] data_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_q0 DATA" *)
input wire [7 : 0] data_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 up DATA" *)
input wire [3 : 0] up;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_class, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 s_class DATA" *)
input wire [0 : 0] s_class;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_identifier_operating_class, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_identifier_operating_class DATA" *)
input wire [7 : 0] c_identifier_operating_class;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_identifier_channel_number, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_identifier_channel_number DATA" *)
input wire [7 : 0] c_identifier_channel_number;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME t_slot, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 t_slot DATA" *)
input wire [1 : 0] t_slot;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_rate, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_rate DATA" *)
input wire [6 : 0] d_rate;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_power_lvl, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_power_lvl DATA" *)
input wire [3 : 0] tx_power_lvl;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME expiry_time, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 expiry_time DATA" *)
input wire [63 : 0] expiry_time;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mac_frame_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mac_frame_address0 DATA" *)
output wire [6 : 0] mac_frame_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mac_frame_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mac_frame_d0 DATA" *)
output wire [7 : 0] mac_frame_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mac_frame_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mac_frame_q0 DATA" *)
input wire [7 : 0] mac_frame_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME medium_state, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 medium_state DATA" *)
input wire [0 : 0] medium_state;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME current_txop_holder_i, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 current_txop_holder_i DATA" *)
input wire [2 : 0] current_txop_holder_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME current_txop_holder_o, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 current_txop_holder_o DATA" *)
output wire [2 : 0] current_txop_holder_o;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME received_frame_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 received_frame_address0 DATA" *)
output wire [6 : 0] received_frame_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME received_frame_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 received_frame_d0 DATA" *)
output wire [7 : 0] received_frame_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME received_frame_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 received_frame_q0 DATA" *)
input wire [7 : 0] received_frame_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME received_frame_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 received_frame_address1 DATA" *)
output wire [6 : 0] received_frame_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME received_frame_d1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 received_frame_d1 DATA" *)
output wire [7 : 0] received_frame_d1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME received_frame_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 received_frame_q1 DATA" *)
input wire [7 : 0] received_frame_q1;

  send_frame inst (
    .source_addr_mac_ce0(source_addr_mac_ce0),
    .source_addr_mac_ce1(source_addr_mac_ce1),
    .dest_addr_mac_ce0(dest_addr_mac_ce0),
    .dest_addr_mac_we0(dest_addr_mac_we0),
    .dest_addr_mac_ce1(dest_addr_mac_ce1),
    .dest_addr_mac_we1(dest_addr_mac_we1),
    .data_ce0(data_ce0),
    .mac_frame_ce0(mac_frame_ce0),
    .mac_frame_we0(mac_frame_we0),
    .current_txop_holder_o_ap_vld(current_txop_holder_o_ap_vld),
    .received_frame_ce0(received_frame_ce0),
    .received_frame_we0(received_frame_we0),
    .received_frame_ce1(received_frame_ce1),
    .received_frame_we1(received_frame_we1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .source_addr_mac_address0(source_addr_mac_address0),
    .source_addr_mac_q0(source_addr_mac_q0),
    .source_addr_mac_address1(source_addr_mac_address1),
    .source_addr_mac_q1(source_addr_mac_q1),
    .dest_addr_mac_address0(dest_addr_mac_address0),
    .dest_addr_mac_d0(dest_addr_mac_d0),
    .dest_addr_mac_q0(dest_addr_mac_q0),
    .dest_addr_mac_address1(dest_addr_mac_address1),
    .dest_addr_mac_d1(dest_addr_mac_d1),
    .dest_addr_mac_q1(dest_addr_mac_q1),
    .data_address0(data_address0),
    .data_q0(data_q0),
    .up(up),
    .s_class(s_class),
    .c_identifier_operating_class(c_identifier_operating_class),
    .c_identifier_channel_number(c_identifier_channel_number),
    .t_slot(t_slot),
    .d_rate(d_rate),
    .tx_power_lvl(tx_power_lvl),
    .expiry_time(expiry_time),
    .mac_frame_address0(mac_frame_address0),
    .mac_frame_d0(mac_frame_d0),
    .mac_frame_q0(mac_frame_q0),
    .medium_state(medium_state),
    .current_txop_holder_i(current_txop_holder_i),
    .current_txop_holder_o(current_txop_holder_o),
    .received_frame_address0(received_frame_address0),
    .received_frame_d0(received_frame_d0),
    .received_frame_q0(received_frame_q0),
    .received_frame_address1(received_frame_address1),
    .received_frame_d1(received_frame_d1),
    .received_frame_q1(received_frame_q1)
  );
endmodule
