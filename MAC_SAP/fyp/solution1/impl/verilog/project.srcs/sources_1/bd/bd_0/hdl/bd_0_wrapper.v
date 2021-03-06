//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Nov 19 12:27:22 2020
//Host        : DESKTOP-V5A9UPS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    c_identifier_channel_number,
    c_identifier_operating_class,
    current_txop_holder_i,
    current_txop_holder_o,
    current_txop_holder_o_ap_vld,
    d_rate,
    data_address0,
    data_ce0,
    data_q0,
    dest_addr_mac_address0,
    dest_addr_mac_address1,
    dest_addr_mac_ce0,
    dest_addr_mac_ce1,
    dest_addr_mac_d0,
    dest_addr_mac_d1,
    dest_addr_mac_q0,
    dest_addr_mac_q1,
    dest_addr_mac_we0,
    dest_addr_mac_we1,
    expiry_time,
    mac_frame_address0,
    mac_frame_ce0,
    mac_frame_d0,
    mac_frame_q0,
    mac_frame_we0,
    medium_state,
    received_frame_address0,
    received_frame_address1,
    received_frame_ce0,
    received_frame_ce1,
    received_frame_d0,
    received_frame_d1,
    received_frame_q0,
    received_frame_q1,
    received_frame_we0,
    received_frame_we1,
    s_class,
    source_addr_mac_address0,
    source_addr_mac_address1,
    source_addr_mac_ce0,
    source_addr_mac_ce1,
    source_addr_mac_q0,
    source_addr_mac_q1,
    t_slot,
    tx_power_lvl,
    up);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  input [7:0]c_identifier_channel_number;
  input [7:0]c_identifier_operating_class;
  input [2:0]current_txop_holder_i;
  output [2:0]current_txop_holder_o;
  output current_txop_holder_o_ap_vld;
  input [6:0]d_rate;
  output [6:0]data_address0;
  output data_ce0;
  input [7:0]data_q0;
  output [2:0]dest_addr_mac_address0;
  output [2:0]dest_addr_mac_address1;
  output dest_addr_mac_ce0;
  output dest_addr_mac_ce1;
  output [7:0]dest_addr_mac_d0;
  output [7:0]dest_addr_mac_d1;
  input [7:0]dest_addr_mac_q0;
  input [7:0]dest_addr_mac_q1;
  output dest_addr_mac_we0;
  output dest_addr_mac_we1;
  input [63:0]expiry_time;
  output [6:0]mac_frame_address0;
  output mac_frame_ce0;
  output [7:0]mac_frame_d0;
  input [7:0]mac_frame_q0;
  output mac_frame_we0;
  input [0:0]medium_state;
  output [6:0]received_frame_address0;
  output [6:0]received_frame_address1;
  output received_frame_ce0;
  output received_frame_ce1;
  output [7:0]received_frame_d0;
  output [7:0]received_frame_d1;
  input [7:0]received_frame_q0;
  input [7:0]received_frame_q1;
  output received_frame_we0;
  output received_frame_we1;
  input [0:0]s_class;
  output [2:0]source_addr_mac_address0;
  output [2:0]source_addr_mac_address1;
  output source_addr_mac_ce0;
  output source_addr_mac_ce1;
  input [7:0]source_addr_mac_q0;
  input [7:0]source_addr_mac_q1;
  input [1:0]t_slot;
  input [3:0]tx_power_lvl;
  input [3:0]up;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [7:0]c_identifier_channel_number;
  wire [7:0]c_identifier_operating_class;
  wire [2:0]current_txop_holder_i;
  wire [2:0]current_txop_holder_o;
  wire current_txop_holder_o_ap_vld;
  wire [6:0]d_rate;
  wire [6:0]data_address0;
  wire data_ce0;
  wire [7:0]data_q0;
  wire [2:0]dest_addr_mac_address0;
  wire [2:0]dest_addr_mac_address1;
  wire dest_addr_mac_ce0;
  wire dest_addr_mac_ce1;
  wire [7:0]dest_addr_mac_d0;
  wire [7:0]dest_addr_mac_d1;
  wire [7:0]dest_addr_mac_q0;
  wire [7:0]dest_addr_mac_q1;
  wire dest_addr_mac_we0;
  wire dest_addr_mac_we1;
  wire [63:0]expiry_time;
  wire [6:0]mac_frame_address0;
  wire mac_frame_ce0;
  wire [7:0]mac_frame_d0;
  wire [7:0]mac_frame_q0;
  wire mac_frame_we0;
  wire [0:0]medium_state;
  wire [6:0]received_frame_address0;
  wire [6:0]received_frame_address1;
  wire received_frame_ce0;
  wire received_frame_ce1;
  wire [7:0]received_frame_d0;
  wire [7:0]received_frame_d1;
  wire [7:0]received_frame_q0;
  wire [7:0]received_frame_q1;
  wire received_frame_we0;
  wire received_frame_we1;
  wire [0:0]s_class;
  wire [2:0]source_addr_mac_address0;
  wire [2:0]source_addr_mac_address1;
  wire source_addr_mac_ce0;
  wire source_addr_mac_ce1;
  wire [7:0]source_addr_mac_q0;
  wire [7:0]source_addr_mac_q1;
  wire [1:0]t_slot;
  wire [3:0]tx_power_lvl;
  wire [3:0]up;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .c_identifier_channel_number(c_identifier_channel_number),
        .c_identifier_operating_class(c_identifier_operating_class),
        .current_txop_holder_i(current_txop_holder_i),
        .current_txop_holder_o(current_txop_holder_o),
        .current_txop_holder_o_ap_vld(current_txop_holder_o_ap_vld),
        .d_rate(d_rate),
        .data_address0(data_address0),
        .data_ce0(data_ce0),
        .data_q0(data_q0),
        .dest_addr_mac_address0(dest_addr_mac_address0),
        .dest_addr_mac_address1(dest_addr_mac_address1),
        .dest_addr_mac_ce0(dest_addr_mac_ce0),
        .dest_addr_mac_ce1(dest_addr_mac_ce1),
        .dest_addr_mac_d0(dest_addr_mac_d0),
        .dest_addr_mac_d1(dest_addr_mac_d1),
        .dest_addr_mac_q0(dest_addr_mac_q0),
        .dest_addr_mac_q1(dest_addr_mac_q1),
        .dest_addr_mac_we0(dest_addr_mac_we0),
        .dest_addr_mac_we1(dest_addr_mac_we1),
        .expiry_time(expiry_time),
        .mac_frame_address0(mac_frame_address0),
        .mac_frame_ce0(mac_frame_ce0),
        .mac_frame_d0(mac_frame_d0),
        .mac_frame_q0(mac_frame_q0),
        .mac_frame_we0(mac_frame_we0),
        .medium_state(medium_state),
        .received_frame_address0(received_frame_address0),
        .received_frame_address1(received_frame_address1),
        .received_frame_ce0(received_frame_ce0),
        .received_frame_ce1(received_frame_ce1),
        .received_frame_d0(received_frame_d0),
        .received_frame_d1(received_frame_d1),
        .received_frame_q0(received_frame_q0),
        .received_frame_q1(received_frame_q1),
        .received_frame_we0(received_frame_we0),
        .received_frame_we1(received_frame_we1),
        .s_class(s_class),
        .source_addr_mac_address0(source_addr_mac_address0),
        .source_addr_mac_address1(source_addr_mac_address1),
        .source_addr_mac_ce0(source_addr_mac_ce0),
        .source_addr_mac_ce1(source_addr_mac_ce1),
        .source_addr_mac_q0(source_addr_mac_q0),
        .source_addr_mac_q1(source_addr_mac_q1),
        .t_slot(t_slot),
        .tx_power_lvl(tx_power_lvl),
        .up(up));
endmodule
