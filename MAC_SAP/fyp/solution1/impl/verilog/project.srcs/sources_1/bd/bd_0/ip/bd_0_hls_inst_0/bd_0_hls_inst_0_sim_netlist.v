// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Nov  8 21:13:01 2020
// Host        : DESKTOP-V5A9UPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FYP/HLS/MAC_SAP/fyp/solution1/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,ma_unitdatax_request,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "ma_unitdatax_request,Vivado 2019.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (source_addr_mac_ce0,
    source_addr_mac_ce1,
    dest_addr_mac_ce0,
    dest_addr_mac_we0,
    dest_addr_mac_ce1,
    dest_addr_mac_we1,
    data_ce0,
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
    medium_state);
  output source_addr_mac_ce0;
  output source_addr_mac_ce1;
  output dest_addr_mac_ce0;
  output dest_addr_mac_we0;
  output dest_addr_mac_ce1;
  output dest_addr_mac_we1;
  output data_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_address0, LAYERED_METADATA undef" *) output [2:0]source_addr_mac_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_q0, LAYERED_METADATA undef" *) input [7:0]source_addr_mac_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_address1, LAYERED_METADATA undef" *) output [2:0]source_addr_mac_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 source_addr_mac_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME source_addr_mac_q1, LAYERED_METADATA undef" *) input [7:0]source_addr_mac_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_address0, LAYERED_METADATA undef" *) output [2:0]dest_addr_mac_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_d0, LAYERED_METADATA undef" *) output [7:0]dest_addr_mac_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_q0, LAYERED_METADATA undef" *) input [7:0]dest_addr_mac_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_address1, LAYERED_METADATA undef" *) output [2:0]dest_addr_mac_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_d1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_d1, LAYERED_METADATA undef" *) output [7:0]dest_addr_mac_d1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 dest_addr_mac_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_addr_mac_q1, LAYERED_METADATA undef" *) input [7:0]dest_addr_mac_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_address0, LAYERED_METADATA undef" *) output [6:0]data_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_q0, LAYERED_METADATA undef" *) input [7:0]data_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 up DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME up, LAYERED_METADATA undef" *) input [3:0]up;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 s_class DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_class, LAYERED_METADATA undef" *) input [0:0]s_class;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_identifier_operating_class DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_identifier_operating_class, LAYERED_METADATA undef" *) input [7:0]c_identifier_operating_class;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_identifier_channel_number DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_identifier_channel_number, LAYERED_METADATA undef" *) input [7:0]c_identifier_channel_number;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 t_slot DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME t_slot, LAYERED_METADATA undef" *) input [1:0]t_slot;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 d_rate DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME d_rate, LAYERED_METADATA undef" *) input [6:0]d_rate;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_power_lvl DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_power_lvl, LAYERED_METADATA undef" *) input [3:0]tx_power_lvl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 expiry_time DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME expiry_time, LAYERED_METADATA undef" *) input [63:0]expiry_time;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 medium_state DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME medium_state, LAYERED_METADATA undef" *) input [0:0]medium_state;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [7:0]c_identifier_channel_number;
  wire [7:0]c_identifier_operating_class;
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
  wire [0:0]medium_state;
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

  (* ap_ST_fsm_state1 = "17'b00000000000000001" *) 
  (* ap_ST_fsm_state10 = "17'b00000001000000000" *) 
  (* ap_ST_fsm_state11 = "17'b00000010000000000" *) 
  (* ap_ST_fsm_state12 = "17'b00000100000000000" *) 
  (* ap_ST_fsm_state13 = "17'b00001000000000000" *) 
  (* ap_ST_fsm_state14 = "17'b00010000000000000" *) 
  (* ap_ST_fsm_state15 = "17'b00100000000000000" *) 
  (* ap_ST_fsm_state16 = "17'b01000000000000000" *) 
  (* ap_ST_fsm_state17 = "17'b10000000000000000" *) 
  (* ap_ST_fsm_state2 = "17'b00000000000000010" *) 
  (* ap_ST_fsm_state3 = "17'b00000000000000100" *) 
  (* ap_ST_fsm_state4 = "17'b00000000000001000" *) 
  (* ap_ST_fsm_state5 = "17'b00000000000010000" *) 
  (* ap_ST_fsm_state6 = "17'b00000000000100000" *) 
  (* ap_ST_fsm_state7 = "17'b00000000001000000" *) 
  (* ap_ST_fsm_state8 = "17'b00000000010000000" *) 
  (* ap_ST_fsm_state9 = "17'b00000000100000000" *) 
  bd_0_hls_inst_0_ma_unitdatax_request inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .c_identifier_channel_number(c_identifier_channel_number),
        .c_identifier_operating_class(c_identifier_operating_class),
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
        .medium_state(medium_state),
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

(* ORIG_REF_NAME = "compose_mac_frame" *) 
module bd_0_hls_inst_0_compose_mac_frame
   (grp_compose_mac_frame_fu_271_ap_start_reg_reg,
    D,
    source_addr_mac_address0,
    source_addr_mac_ce0,
    up_0_sp_1,
    up_3_sp_1,
    up_1_sp_1,
    \up[3]_0 ,
    \k_0_reg_539_reg[0]_0 ,
    up,
    ap_NS_fsm1165_out,
    Q,
    grp_compose_mac_frame_fu_271_ap_start_reg,
    empty_31_reg_620,
    icmp_ln41_reg_616,
    icmp_ln67_reg_624,
    icmp_ln80_reg_628,
    ap_rst,
    ap_clk);
  output [0:0]grp_compose_mac_frame_fu_271_ap_start_reg_reg;
  output [4:0]D;
  output [1:0]source_addr_mac_address0;
  output source_addr_mac_ce0;
  output up_0_sp_1;
  output up_3_sp_1;
  output up_1_sp_1;
  output \up[3]_0 ;
  output \k_0_reg_539_reg[0]_0 ;
  input [3:0]up;
  input ap_NS_fsm1165_out;
  input [1:0]Q;
  input grp_compose_mac_frame_fu_271_ap_start_reg;
  input empty_31_reg_620;
  input icmp_ln41_reg_616;
  input icmp_ln67_reg_624;
  input icmp_ln80_reg_628;
  input ap_rst;
  input ap_clk;

  wire [4:0]D;
  wire [1:0]Q;
  wire \ap_CS_fsm[13]_i_2_n_1 ;
  wire \ap_CS_fsm[18]_i_2_n_1 ;
  wire \ap_CS_fsm[18]_i_3_n_1 ;
  wire \ap_CS_fsm[1]_i_2__0_n_1 ;
  wire \ap_CS_fsm[1]_i_3_n_1 ;
  wire \ap_CS_fsm[1]_i_4_n_1 ;
  wire \ap_CS_fsm[1]_i_5_n_1 ;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state13;
  wire ap_CS_fsm_state15;
  wire ap_CS_fsm_state16;
  wire ap_CS_fsm_state17;
  wire ap_CS_fsm_state18;
  wire ap_CS_fsm_state19;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [18:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm1165_out;
  wire ap_NS_fsm11_out;
  wire ap_clk;
  wire ap_rst;
  wire crc_fu_1381;
  wire empty_31_reg_620;
  wire grp_compose_mac_frame_fu_271_ap_start_reg;
  wire [0:0]grp_compose_mac_frame_fu_271_ap_start_reg_reg;
  wire [6:0]grp_compose_mac_frame_fu_271_data_address0;
  wire grp_compose_mac_frame_fu_271_data_ce0;
  wire [6:0]i_0_i_reg_517;
  wire \i_0_i_reg_517[6]_i_3_n_1 ;
  wire [6:0]i_fu_635_p2;
  wire [6:0]i_reg_827;
  wire \i_reg_827[6]_i_2_n_1 ;
  wire icmp_ln41_reg_616;
  wire icmp_ln67_reg_624;
  wire icmp_ln80_reg_628;
  wire j_0_i_reg_528;
  wire [3:0]j_0_i_reg_528_reg;
  wire j_0_reg_505;
  wire [3:0]j_1_fu_677_p2;
  wire [6:0]j_fu_602_p2;
  wire [6:0]j_reg_806;
  wire \j_reg_806[6]_i_2_n_1 ;
  wire \k_0_reg_539[0]_i_1_n_1 ;
  wire \k_0_reg_539[1]_i_1_n_1 ;
  wire \k_0_reg_539[2]_i_1_n_1 ;
  wire \k_0_reg_539_reg[0]_0 ;
  wire \k_0_reg_539_reg_n_1_[2] ;
  wire [1:0]source_addr_mac_address0;
  wire source_addr_mac_ce0;
  wire [3:0]up;
  wire \up[3]_0 ;
  wire up_0_sn_1;
  wire up_1_sn_1;
  wire up_3_sn_1;
  wire [4:3]zext_ln74_1_fu_744_p1;

  assign up_0_sp_1 = up_0_sn_1;
  assign up_1_sp_1 = up_1_sn_1;
  assign up_3_sp_1 = up_3_sn_1;
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(zext_ln74_1_fu_744_p1[3]),
        .I3(zext_ln74_1_fu_744_p1[4]),
        .I4(\k_0_reg_539_reg_n_1_[2] ),
        .I5(ap_CS_fsm_state19),
        .O(grp_compose_mac_frame_fu_271_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00090000)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(up[0]),
        .I1(up[1]),
        .I2(up[2]),
        .I3(up[3]),
        .I4(\ap_CS_fsm[13]_i_2_n_1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00060000)) 
    \ap_CS_fsm[13]_i_1 
       (.I0(up[0]),
        .I1(up[1]),
        .I2(up[2]),
        .I3(up[3]),
        .I4(\ap_CS_fsm[13]_i_2_n_1 ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[13]_i_1__0 
       (.I0(ap_CS_fsm_state15),
        .I1(ap_CS_fsm_state13),
        .O(ap_NS_fsm[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[13]_i_2 
       (.I0(grp_compose_mac_frame_fu_271_ap_start_reg_reg),
        .I1(Q[1]),
        .O(\ap_CS_fsm[13]_i_2_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[14]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_ce0),
        .I1(ap_NS_fsm11_out),
        .O(ap_NS_fsm[14]));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \ap_CS_fsm[15]_i_1__0 
       (.I0(ap_NS_fsm11_out),
        .I1(j_0_i_reg_528_reg[0]),
        .I2(j_0_i_reg_528_reg[1]),
        .I3(j_0_i_reg_528_reg[3]),
        .I4(j_0_i_reg_528_reg[2]),
        .I5(ap_CS_fsm_state18),
        .O(ap_NS_fsm[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[16]_i_1__0 
       (.I0(ap_CS_fsm_state16),
        .I1(\ap_CS_fsm[18]_i_2_n_1 ),
        .O(ap_NS_fsm[16]));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAAAAA)) 
    \ap_CS_fsm[17]_i_1 
       (.I0(ap_CS_fsm_state17),
        .I1(j_0_i_reg_528_reg[0]),
        .I2(j_0_i_reg_528_reg[1]),
        .I3(j_0_i_reg_528_reg[3]),
        .I4(j_0_i_reg_528_reg[2]),
        .I5(ap_CS_fsm_state18),
        .O(ap_NS_fsm[17]));
  LUT5 #(
    .INIT(32'hFFFFEF00)) 
    \ap_CS_fsm[18]_i_1 
       (.I0(zext_ln74_1_fu_744_p1[3]),
        .I1(zext_ln74_1_fu_744_p1[4]),
        .I2(\k_0_reg_539_reg_n_1_[2] ),
        .I3(ap_CS_fsm_state19),
        .I4(\ap_CS_fsm[18]_i_2_n_1 ),
        .O(ap_NS_fsm[18]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \ap_CS_fsm[18]_i_2 
       (.I0(i_0_i_reg_517[3]),
        .I1(ap_CS_fsm_state16),
        .I2(i_0_i_reg_517[6]),
        .I3(i_0_i_reg_517[2]),
        .I4(\ap_CS_fsm[18]_i_3_n_1 ),
        .O(\ap_CS_fsm[18]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[18]_i_3 
       (.I0(i_0_i_reg_517[0]),
        .I1(i_0_i_reg_517[1]),
        .I2(i_0_i_reg_517[5]),
        .I3(i_0_i_reg_517[4]),
        .O(\ap_CS_fsm[18]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm[1]_i_2__0_n_1 ),
        .I1(ap_CS_fsm_state18),
        .I2(grp_compose_mac_frame_fu_271_ap_start_reg),
        .I3(ap_CS_fsm_state8),
        .I4(ap_CS_fsm_state17),
        .I5(\ap_CS_fsm[1]_i_3_n_1 ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(ap_CS_fsm_state11),
        .I1(source_addr_mac_address0[1]),
        .I2(ap_CS_fsm_state13),
        .I3(ap_CS_fsm_state15),
        .O(\ap_CS_fsm[1]_i_2__0_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state7),
        .I2(grp_compose_mac_frame_fu_271_data_ce0),
        .I3(ap_CS_fsm_state10),
        .I4(\ap_CS_fsm[1]_i_4_n_1 ),
        .I5(\ap_CS_fsm[1]_i_5_n_1 ),
        .O(\ap_CS_fsm[1]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state19),
        .I2(ap_CS_fsm_state3),
        .I3(ap_CS_fsm_state5),
        .O(\ap_CS_fsm[1]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[1]_i_5 
       (.I0(ap_CS_fsm_state9),
        .I1(ap_CS_fsm_state16),
        .I2(\ap_CS_fsm_reg_n_1_[0] ),
        .I3(ap_CS_fsm_state4),
        .O(\ap_CS_fsm[1]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_NS_fsm1165_out),
        .I1(grp_compose_mac_frame_fu_271_ap_start_reg_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ap_CS_fsm[6]_i_1__0 
       (.I0(\ap_CS_fsm[13]_i_2_n_1 ),
        .I1(up[2]),
        .I2(up[1]),
        .I3(up[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ap_CS_fsm[9]_i_1__0 
       (.I0(\ap_CS_fsm[13]_i_2_n_1 ),
        .I1(up[1]),
        .I2(up[2]),
        .O(D[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_compose_mac_frame_fu_271_ap_start_reg_reg),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state10),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state11),
        .Q(source_addr_mac_address0[1]),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(source_addr_mac_address0[1]),
        .Q(ap_CS_fsm_state13),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[13]),
        .Q(grp_compose_mac_frame_fu_271_data_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[14]),
        .Q(ap_CS_fsm_state15),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[15]),
        .Q(ap_CS_fsm_state16),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[16]),
        .Q(ap_CS_fsm_state17),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[17]),
        .Q(ap_CS_fsm_state18),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[18]),
        .Q(ap_CS_fsm_state19),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state2),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state4),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state6),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state7),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state8),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state9),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h555555FF00000082)) 
    \empty_31_reg_620[0]_i_1 
       (.I0(\ap_CS_fsm[13]_i_2_n_1 ),
        .I1(up[0]),
        .I2(up[1]),
        .I3(up[2]),
        .I4(up[3]),
        .I5(empty_31_reg_620),
        .O(up_0_sn_1));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    grp_compose_mac_frame_fu_271_ap_start_reg_i_1
       (.I0(ap_NS_fsm1165_out),
        .I1(zext_ln74_1_fu_744_p1[3]),
        .I2(zext_ln74_1_fu_744_p1[4]),
        .I3(\k_0_reg_539_reg_n_1_[2] ),
        .I4(ap_CS_fsm_state19),
        .I5(grp_compose_mac_frame_fu_271_ap_start_reg),
        .O(\k_0_reg_539_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \i_0_i_reg_517[6]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[4]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[5]),
        .I2(grp_compose_mac_frame_fu_271_data_ce0),
        .I3(grp_compose_mac_frame_fu_271_data_address0[3]),
        .I4(\i_0_i_reg_517[6]_i_3_n_1 ),
        .O(ap_NS_fsm11_out));
  LUT5 #(
    .INIT(32'h00000020)) 
    \i_0_i_reg_517[6]_i_2 
       (.I0(ap_CS_fsm_state18),
        .I1(j_0_i_reg_528_reg[2]),
        .I2(j_0_i_reg_528_reg[3]),
        .I3(j_0_i_reg_528_reg[1]),
        .I4(j_0_i_reg_528_reg[0]),
        .O(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \i_0_i_reg_517[6]_i_3 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[0]),
        .I2(grp_compose_mac_frame_fu_271_data_address0[2]),
        .I3(grp_compose_mac_frame_fu_271_data_address0[6]),
        .O(\i_0_i_reg_517[6]_i_3_n_1 ));
  FDRE \i_0_i_reg_517_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[0]),
        .Q(i_0_i_reg_517[0]),
        .R(ap_NS_fsm11_out));
  FDRE \i_0_i_reg_517_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[1]),
        .Q(i_0_i_reg_517[1]),
        .R(ap_NS_fsm11_out));
  FDRE \i_0_i_reg_517_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[2]),
        .Q(i_0_i_reg_517[2]),
        .R(ap_NS_fsm11_out));
  FDRE \i_0_i_reg_517_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[3]),
        .Q(i_0_i_reg_517[3]),
        .R(ap_NS_fsm11_out));
  FDRE \i_0_i_reg_517_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[4]),
        .Q(i_0_i_reg_517[4]),
        .R(ap_NS_fsm11_out));
  FDRE \i_0_i_reg_517_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[5]),
        .Q(i_0_i_reg_517[5]),
        .R(ap_NS_fsm11_out));
  FDRE \i_0_i_reg_517_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_reg_827[6]),
        .Q(i_0_i_reg_517[6]),
        .R(ap_NS_fsm11_out));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_827[0]_i_1 
       (.I0(i_0_i_reg_517[0]),
        .O(i_fu_635_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_827[1]_i_1 
       (.I0(i_0_i_reg_517[1]),
        .I1(i_0_i_reg_517[0]),
        .O(i_fu_635_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_827[2]_i_1 
       (.I0(i_0_i_reg_517[2]),
        .I1(i_0_i_reg_517[1]),
        .I2(i_0_i_reg_517[0]),
        .O(i_fu_635_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_827[3]_i_1 
       (.I0(i_0_i_reg_517[3]),
        .I1(i_0_i_reg_517[0]),
        .I2(i_0_i_reg_517[1]),
        .I3(i_0_i_reg_517[2]),
        .O(i_fu_635_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_827[4]_i_1 
       (.I0(i_0_i_reg_517[4]),
        .I1(i_0_i_reg_517[2]),
        .I2(i_0_i_reg_517[1]),
        .I3(i_0_i_reg_517[0]),
        .I4(i_0_i_reg_517[3]),
        .O(i_fu_635_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i_reg_827[5]_i_1 
       (.I0(i_0_i_reg_517[3]),
        .I1(i_0_i_reg_517[0]),
        .I2(i_0_i_reg_517[1]),
        .I3(i_0_i_reg_517[2]),
        .I4(i_0_i_reg_517[4]),
        .I5(i_0_i_reg_517[5]),
        .O(i_fu_635_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \i_reg_827[6]_i_1 
       (.I0(i_0_i_reg_517[6]),
        .I1(\i_reg_827[6]_i_2_n_1 ),
        .I2(i_0_i_reg_517[5]),
        .O(i_fu_635_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i_reg_827[6]_i_2 
       (.I0(i_0_i_reg_517[3]),
        .I1(i_0_i_reg_517[0]),
        .I2(i_0_i_reg_517[1]),
        .I3(i_0_i_reg_517[2]),
        .I4(i_0_i_reg_517[4]),
        .O(\i_reg_827[6]_i_2_n_1 ));
  FDRE \i_reg_827_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[0]),
        .Q(i_reg_827[0]),
        .R(1'b0));
  FDRE \i_reg_827_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[1]),
        .Q(i_reg_827[1]),
        .R(1'b0));
  FDRE \i_reg_827_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[2]),
        .Q(i_reg_827[2]),
        .R(1'b0));
  FDRE \i_reg_827_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[3]),
        .Q(i_reg_827[3]),
        .R(1'b0));
  FDRE \i_reg_827_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[4]),
        .Q(i_reg_827[4]),
        .R(1'b0));
  FDRE \i_reg_827_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[5]),
        .Q(i_reg_827[5]),
        .R(1'b0));
  FDRE \i_reg_827_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state16),
        .D(i_fu_635_p2[6]),
        .Q(i_reg_827[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0110FFFF01100000)) 
    \icmp_ln41_reg_616[0]_i_1 
       (.I0(up[3]),
        .I1(up[2]),
        .I2(up[1]),
        .I3(up[0]),
        .I4(\ap_CS_fsm[13]_i_2_n_1 ),
        .I5(icmp_ln41_reg_616),
        .O(up_3_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h773F4400)) 
    \icmp_ln67_reg_624[0]_i_1 
       (.I0(up[1]),
        .I1(\ap_CS_fsm[13]_i_2_n_1 ),
        .I2(up[3]),
        .I3(up[2]),
        .I4(icmp_ln67_reg_624),
        .O(up_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7F774000)) 
    \icmp_ln80_reg_628[0]_i_1 
       (.I0(up[3]),
        .I1(\ap_CS_fsm[13]_i_2_n_1 ),
        .I2(up[1]),
        .I3(up[2]),
        .I4(icmp_ln80_reg_628),
        .O(\up[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_0_i_reg_528[0]_i_1 
       (.I0(j_0_i_reg_528_reg[0]),
        .O(j_1_fu_677_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_0_i_reg_528[1]_i_1 
       (.I0(j_0_i_reg_528_reg[1]),
        .I1(j_0_i_reg_528_reg[0]),
        .O(j_1_fu_677_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_0_i_reg_528[2]_i_1 
       (.I0(j_0_i_reg_528_reg[2]),
        .I1(j_0_i_reg_528_reg[0]),
        .I2(j_0_i_reg_528_reg[1]),
        .O(j_1_fu_677_p2[2]));
  LUT6 #(
    .INIT(64'h00000200AAAAAAAA)) 
    \j_0_i_reg_528[3]_i_1 
       (.I0(ap_CS_fsm_state17),
        .I1(j_0_i_reg_528_reg[0]),
        .I2(j_0_i_reg_528_reg[1]),
        .I3(j_0_i_reg_528_reg[3]),
        .I4(j_0_i_reg_528_reg[2]),
        .I5(ap_CS_fsm_state18),
        .O(j_0_i_reg_528));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \j_0_i_reg_528[3]_i_2 
       (.I0(ap_CS_fsm_state18),
        .I1(j_0_i_reg_528_reg[2]),
        .I2(j_0_i_reg_528_reg[3]),
        .I3(j_0_i_reg_528_reg[1]),
        .I4(j_0_i_reg_528_reg[0]),
        .O(crc_fu_1381));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_0_i_reg_528[3]_i_3 
       (.I0(j_0_i_reg_528_reg[3]),
        .I1(j_0_i_reg_528_reg[1]),
        .I2(j_0_i_reg_528_reg[0]),
        .I3(j_0_i_reg_528_reg[2]),
        .O(j_1_fu_677_p2[3]));
  FDRE \j_0_i_reg_528_reg[0] 
       (.C(ap_clk),
        .CE(crc_fu_1381),
        .D(j_1_fu_677_p2[0]),
        .Q(j_0_i_reg_528_reg[0]),
        .R(j_0_i_reg_528));
  FDRE \j_0_i_reg_528_reg[1] 
       (.C(ap_clk),
        .CE(crc_fu_1381),
        .D(j_1_fu_677_p2[1]),
        .Q(j_0_i_reg_528_reg[1]),
        .R(j_0_i_reg_528));
  FDRE \j_0_i_reg_528_reg[2] 
       (.C(ap_clk),
        .CE(crc_fu_1381),
        .D(j_1_fu_677_p2[2]),
        .Q(j_0_i_reg_528_reg[2]),
        .R(j_0_i_reg_528));
  FDRE \j_0_i_reg_528_reg[3] 
       (.C(ap_clk),
        .CE(crc_fu_1381),
        .D(j_1_fu_677_p2[3]),
        .Q(j_0_i_reg_528_reg[3]),
        .R(j_0_i_reg_528));
  LUT2 #(
    .INIT(4'h2)) 
    \j_0_reg_505[6]_i_1 
       (.I0(ap_CS_fsm_state13),
        .I1(ap_CS_fsm_state15),
        .O(j_0_reg_505));
  FDRE \j_0_reg_505_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[0]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[0]),
        .R(j_0_reg_505));
  FDRE \j_0_reg_505_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[1]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[1]),
        .R(j_0_reg_505));
  FDRE \j_0_reg_505_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[2]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[2]),
        .R(j_0_reg_505));
  FDRE \j_0_reg_505_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[3]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[3]),
        .R(j_0_reg_505));
  FDRE \j_0_reg_505_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[4]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[4]),
        .R(j_0_reg_505));
  FDRE \j_0_reg_505_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[5]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[5]),
        .R(j_0_reg_505));
  FDRE \j_0_reg_505_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state15),
        .D(j_reg_806[6]),
        .Q(grp_compose_mac_frame_fu_271_data_address0[6]),
        .R(j_0_reg_505));
  LUT1 #(
    .INIT(2'h1)) 
    \j_reg_806[0]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[0]),
        .O(j_fu_602_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_reg_806[1]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[0]),
        .O(j_fu_602_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_reg_806[2]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[2]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I2(grp_compose_mac_frame_fu_271_data_address0[0]),
        .O(j_fu_602_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_reg_806[3]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[3]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[0]),
        .I2(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I3(grp_compose_mac_frame_fu_271_data_address0[2]),
        .O(j_fu_602_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_reg_806[4]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[4]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[2]),
        .I2(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I3(grp_compose_mac_frame_fu_271_data_address0[0]),
        .I4(grp_compose_mac_frame_fu_271_data_address0[3]),
        .O(j_fu_602_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \j_reg_806[5]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[3]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[0]),
        .I2(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I3(grp_compose_mac_frame_fu_271_data_address0[2]),
        .I4(grp_compose_mac_frame_fu_271_data_address0[4]),
        .I5(grp_compose_mac_frame_fu_271_data_address0[5]),
        .O(j_fu_602_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \j_reg_806[6]_i_1 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[6]),
        .I1(\j_reg_806[6]_i_2_n_1 ),
        .I2(grp_compose_mac_frame_fu_271_data_address0[5]),
        .O(j_fu_602_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \j_reg_806[6]_i_2 
       (.I0(grp_compose_mac_frame_fu_271_data_address0[3]),
        .I1(grp_compose_mac_frame_fu_271_data_address0[0]),
        .I2(grp_compose_mac_frame_fu_271_data_address0[1]),
        .I3(grp_compose_mac_frame_fu_271_data_address0[2]),
        .I4(grp_compose_mac_frame_fu_271_data_address0[4]),
        .O(\j_reg_806[6]_i_2_n_1 ));
  FDRE \j_reg_806_reg[0] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[0]),
        .Q(j_reg_806[0]),
        .R(1'b0));
  FDRE \j_reg_806_reg[1] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[1]),
        .Q(j_reg_806[1]),
        .R(1'b0));
  FDRE \j_reg_806_reg[2] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[2]),
        .Q(j_reg_806[2]),
        .R(1'b0));
  FDRE \j_reg_806_reg[3] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[3]),
        .Q(j_reg_806[3]),
        .R(1'b0));
  FDRE \j_reg_806_reg[4] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[4]),
        .Q(j_reg_806[4]),
        .R(1'b0));
  FDRE \j_reg_806_reg[5] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[5]),
        .Q(j_reg_806[5]),
        .R(1'b0));
  FDRE \j_reg_806_reg[6] 
       (.C(ap_clk),
        .CE(grp_compose_mac_frame_fu_271_data_ce0),
        .D(j_fu_602_p2[6]),
        .Q(j_reg_806[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00A255A2)) 
    \k_0_reg_539[0]_i_1 
       (.I0(ap_CS_fsm_state19),
        .I1(\k_0_reg_539_reg_n_1_[2] ),
        .I2(zext_ln74_1_fu_744_p1[4]),
        .I3(zext_ln74_1_fu_744_p1[3]),
        .I4(\ap_CS_fsm[18]_i_2_n_1 ),
        .O(\k_0_reg_539[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h286C)) 
    \k_0_reg_539[1]_i_1 
       (.I0(ap_CS_fsm_state19),
        .I1(zext_ln74_1_fu_744_p1[4]),
        .I2(zext_ln74_1_fu_744_p1[3]),
        .I3(\ap_CS_fsm[18]_i_2_n_1 ),
        .O(\k_0_reg_539[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28806CCC)) 
    \k_0_reg_539[2]_i_1 
       (.I0(ap_CS_fsm_state19),
        .I1(\k_0_reg_539_reg_n_1_[2] ),
        .I2(zext_ln74_1_fu_744_p1[4]),
        .I3(zext_ln74_1_fu_744_p1[3]),
        .I4(\ap_CS_fsm[18]_i_2_n_1 ),
        .O(\k_0_reg_539[2]_i_1_n_1 ));
  FDRE \k_0_reg_539_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\k_0_reg_539[0]_i_1_n_1 ),
        .Q(zext_ln74_1_fu_744_p1[3]),
        .R(1'b0));
  FDRE \k_0_reg_539_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\k_0_reg_539[1]_i_1_n_1 ),
        .Q(zext_ln74_1_fu_744_p1[4]),
        .R(1'b0));
  FDRE \k_0_reg_539_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\k_0_reg_539[2]_i_1_n_1 ),
        .Q(\k_0_reg_539_reg_n_1_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \source_addr_mac_address1[1]_INST_0 
       (.I0(ap_CS_fsm_state11),
        .I1(source_addr_mac_address0[1]),
        .O(source_addr_mac_address0[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    source_addr_mac_ce1_INST_0
       (.I0(ap_CS_fsm_state10),
        .I1(ap_CS_fsm_state11),
        .I2(source_addr_mac_address0[1]),
        .O(source_addr_mac_ce0));
endmodule

(* ORIG_REF_NAME = "enqueue_dequeue_fram" *) 
module bd_0_hls_inst_0_enqueue_dequeue_fram
   (D,
    medium_state_0_sp_1,
    \medium_state[0]_0 ,
    \medium_state[0]_1 ,
    \medium_state[0]_2 ,
    \ap_CS_fsm_reg[12] ,
    \ap_CS_fsm_reg[10] ,
    \ap_CS_fsm_reg[7]_0 ,
    \ap_CS_fsm_reg[14] ,
    \ap_CS_fsm_reg[9]_0 ,
    \ap_CS_fsm_reg[1]_0 ,
    Q,
    grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
    \ap_CS_fsm_reg[8]_0 ,
    \ap_CS_fsm_reg[8]_1 ,
    \ap_CS_fsm_reg[8]_2 ,
    grp_random_int_gen_fu_281_ap_start_reg_reg,
    \ap_CS_fsm_reg[8]_3 ,
    \ap_CS_fsm_reg[8]_4 ,
    medium_state,
    medium_state_read_1_reg_652,
    medium_state_read_2_reg_644,
    medium_state_read_3_reg_636,
    medium_state_read_reg_660,
    icmp_ln56_reg_648,
    icmp_ln69_reg_640,
    icmp_ln82_reg_632,
    icmp_ln43_reg_656,
    grp_random_int_gen_fu_281_ap_start_reg_reg_0,
    grp_random_int_gen_fu_281_ap_start_reg,
    ap_rst,
    ap_clk);
  output [4:0]D;
  output medium_state_0_sp_1;
  output \medium_state[0]_0 ;
  output \medium_state[0]_1 ;
  output \medium_state[0]_2 ;
  output \ap_CS_fsm_reg[12] ;
  output \ap_CS_fsm_reg[10] ;
  output \ap_CS_fsm_reg[7]_0 ;
  output \ap_CS_fsm_reg[14] ;
  output \ap_CS_fsm_reg[9]_0 ;
  output \ap_CS_fsm_reg[1]_0 ;
  input [11:0]Q;
  input grp_enqueue_dequeue_fram_fu_243_ap_start_reg;
  input \ap_CS_fsm_reg[8]_0 ;
  input \ap_CS_fsm_reg[8]_1 ;
  input \ap_CS_fsm_reg[8]_2 ;
  input grp_random_int_gen_fu_281_ap_start_reg_reg;
  input [0:0]\ap_CS_fsm_reg[8]_3 ;
  input \ap_CS_fsm_reg[8]_4 ;
  input [0:0]medium_state;
  input medium_state_read_1_reg_652;
  input medium_state_read_2_reg_644;
  input medium_state_read_3_reg_636;
  input medium_state_read_reg_660;
  input icmp_ln56_reg_648;
  input icmp_ln69_reg_640;
  input icmp_ln82_reg_632;
  input icmp_ln43_reg_656;
  input [0:0]grp_random_int_gen_fu_281_ap_start_reg_reg_0;
  input grp_random_int_gen_fu_281_ap_start_reg;
  input ap_rst;
  input ap_clk;

  wire [4:0]D;
  wire [11:0]Q;
  wire \ap_CS_fsm[8]_i_2_n_1 ;
  wire \ap_CS_fsm[9]_i_10_n_1 ;
  wire \ap_CS_fsm[9]_i_11_n_1 ;
  wire \ap_CS_fsm[9]_i_12_n_1 ;
  wire \ap_CS_fsm[9]_i_13_n_1 ;
  wire \ap_CS_fsm[9]_i_2_n_1 ;
  wire \ap_CS_fsm[9]_i_8_n_1 ;
  wire \ap_CS_fsm[9]_i_9_n_1 ;
  wire \ap_CS_fsm_reg[10] ;
  wire \ap_CS_fsm_reg[12] ;
  wire \ap_CS_fsm_reg[14] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire \ap_CS_fsm_reg[8]_0 ;
  wire \ap_CS_fsm_reg[8]_1 ;
  wire \ap_CS_fsm_reg[8]_2 ;
  wire [0:0]\ap_CS_fsm_reg[8]_3 ;
  wire \ap_CS_fsm_reg[8]_4 ;
  wire \ap_CS_fsm_reg[9]_0 ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [9:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm132_out;
  wire ap_NS_fsm133_out;
  wire ap_NS_fsm134_out;
  wire ap_NS_fsm141_out;
  wire ap_NS_fsm142_out;
  wire ap_NS_fsm143_out;
  wire ap_NS_fsm144_out;
  wire ap_clk;
  wire [2:0]ap_return_preg;
  wire \ap_return_preg[0]_i_1_n_1 ;
  wire \ap_return_preg[1]_i_1_n_1 ;
  wire \ap_return_preg[2]_i_1_n_1 ;
  wire ap_rst;
  wire [2:0]available_spaces_be;
  wire \available_spaces_be[0]_i_1_n_1 ;
  wire \available_spaces_be[1]_i_1_n_1 ;
  wire \available_spaces_be[2]_i_1_n_1 ;
  wire [2:0]available_spaces_be_s_reg_642;
  wire available_spaces_be_s_reg_6420;
  wire \available_spaces_be_s_reg_642[0]_i_1_n_1 ;
  wire \available_spaces_be_s_reg_642[1]_i_1_n_1 ;
  wire \available_spaces_be_s_reg_642[2]_i_1_n_1 ;
  wire [2:0]available_spaces_bk;
  wire \available_spaces_bk[0]_i_1_n_1 ;
  wire \available_spaces_bk[1]_i_1_n_1 ;
  wire \available_spaces_bk[2]_i_1_n_1 ;
  wire [2:0]available_spaces_bk_s_reg_660;
  wire available_spaces_bk_s_reg_6600;
  wire \available_spaces_bk_s_reg_660[0]_i_1_n_1 ;
  wire \available_spaces_bk_s_reg_660[1]_i_1_n_1 ;
  wire \available_spaces_bk_s_reg_660[2]_i_1_n_1 ;
  wire [2:0]available_spaces_vi;
  wire \available_spaces_vi[0]_i_1_n_1 ;
  wire \available_spaces_vi[1]_i_1_n_1 ;
  wire \available_spaces_vi[2]_i_1_n_1 ;
  wire [2:0]available_spaces_vi_s_reg_624;
  wire available_spaces_vi_s_reg_6240;
  wire \available_spaces_vi_s_reg_624[0]_i_1_n_1 ;
  wire \available_spaces_vi_s_reg_624[1]_i_1_n_1 ;
  wire \available_spaces_vi_s_reg_624[2]_i_1_n_1 ;
  wire [2:0]available_spaces_vo;
  wire \available_spaces_vo[0]_i_1_n_1 ;
  wire \available_spaces_vo[1]_i_1_n_1 ;
  wire \available_spaces_vo[2]_i_1_n_1 ;
  wire [2:0]available_spaces_vo_s_reg_606;
  wire available_spaces_vo_s_reg_6060;
  wire \available_spaces_vo_s_reg_606[0]_i_1_n_1 ;
  wire \available_spaces_vo_s_reg_606[1]_i_1_n_1 ;
  wire \available_spaces_vo_s_reg_606[2]_i_1_n_1 ;
  wire [6:0]be_0_reg_177;
  wire [6:0]be_fu_490_p2;
  wire [6:0]be_reg_717;
  wire \be_reg_717[6]_i_2_n_1 ;
  wire [6:0]bk_0_reg_188;
  wire [6:0]bk_fu_552_p2;
  wire [6:0]bk_reg_735;
  wire \bk_reg_735[6]_i_2_n_1 ;
  wire grp_enqueue_dequeue_fram_fu_243_ap_ready;
  wire grp_enqueue_dequeue_fram_fu_243_ap_start_reg;
  wire grp_fu_310_p2;
  wire grp_random_int_gen_fu_281_ap_start_reg;
  wire grp_random_int_gen_fu_281_ap_start_reg_reg;
  wire [0:0]grp_random_int_gen_fu_281_ap_start_reg_reg_0;
  wire icmp_ln43_reg_656;
  wire icmp_ln56_reg_648;
  wire icmp_ln69_reg_640;
  wire icmp_ln82_reg_632;
  wire [0:0]medium_state;
  wire \medium_state[0]_0 ;
  wire \medium_state[0]_1 ;
  wire \medium_state[0]_2 ;
  wire medium_state_0_sn_1;
  wire medium_state_read_1_reg_652;
  wire \medium_state_read_1_reg_652[0]_i_2_n_1 ;
  wire medium_state_read_2_reg_644;
  wire medium_state_read_3_reg_636;
  wire medium_state_read_reg_660;
  wire [1:0]p_0_reg_199;
  wire \p_0_reg_199[0]_i_1_n_1 ;
  wire \p_0_reg_199[1]_i_1_n_1 ;
  wire \p_0_reg_199[1]_i_3_n_1 ;
  wire \p_0_reg_199[1]_i_4_n_1 ;
  wire \p_0_reg_199[1]_i_5_n_1 ;
  wire \p_0_reg_199[2]_i_1_n_1 ;
  wire \p_0_reg_199[2]_i_2_n_1 ;
  wire \p_0_reg_199[2]_i_3_n_1 ;
  wire \p_0_reg_199[2]_i_4_n_1 ;
  wire \p_0_reg_199_reg_n_1_[0] ;
  wire \p_0_reg_199_reg_n_1_[1] ;
  wire \p_0_reg_199_reg_n_1_[2] ;
  wire [6:0]vi_0_reg_166;
  wire [6:0]vi_fu_428_p2;
  wire [6:0]vi_reg_699;
  wire \vi_reg_699[6]_i_2_n_1 ;
  wire [6:0]vo_0_reg_155;
  wire [6:0]vo_fu_366_p2;
  wire [6:0]vo_reg_681;
  wire \vo_reg_681[6]_i_2_n_1 ;

  assign medium_state_0_sp_1 = medium_state_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(ap_CS_fsm_state1),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I2(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .O(ap_NS_fsm[0]));
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(Q[6]),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I3(ap_CS_fsm_state1),
        .I4(Q[7]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[12]_i_1 
       (.I0(Q[8]),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I3(ap_CS_fsm_state1),
        .I4(Q[9]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[14]_i_1__0 
       (.I0(Q[10]),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I3(ap_CS_fsm_state1),
        .I4(Q[11]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \ap_CS_fsm[1]_i_1__2 
       (.I0(available_spaces_vo_s_reg_6060),
        .I1(available_spaces_vo[2]),
        .I2(available_spaces_vo[0]),
        .I3(available_spaces_vo[1]),
        .I4(ap_CS_fsm_state3),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[9]),
        .I3(Q[11]),
        .I4(ap_CS_fsm_state1),
        .I5(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .O(available_spaces_vo_s_reg_6060));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_NS_fsm134_out),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(available_spaces_vi_s_reg_6240),
        .I1(available_spaces_vi[2]),
        .I2(available_spaces_vi[0]),
        .I3(available_spaces_vi[1]),
        .I4(ap_CS_fsm_state5),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[11]),
        .I3(ap_CS_fsm_state1),
        .I4(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .O(available_spaces_vi_s_reg_6240));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(ap_NS_fsm133_out),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \ap_CS_fsm[5]_i_1__0 
       (.I0(available_spaces_be_s_reg_6420),
        .I1(available_spaces_be[2]),
        .I2(available_spaces_be[0]),
        .I3(available_spaces_be[1]),
        .I4(ap_CS_fsm_state7),
        .O(ap_NS_fsm[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ap_CS_fsm[5]_i_2__0 
       (.I0(Q[11]),
        .I1(Q[9]),
        .I2(ap_CS_fsm_state1),
        .I3(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .O(available_spaces_be_s_reg_6420));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_NS_fsm132_out),
        .O(ap_NS_fsm[6]));
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(Q[3]),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I3(ap_CS_fsm_state1),
        .I4(Q[4]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \ap_CS_fsm[7]_i_1__0 
       (.I0(available_spaces_bk_s_reg_6600),
        .I1(available_spaces_bk[2]),
        .I2(available_spaces_bk[0]),
        .I3(available_spaces_bk[1]),
        .I4(ap_CS_fsm_state9),
        .O(ap_NS_fsm[7]));
  LUT6 #(
    .INIT(64'hF0F1000000000000)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[11]),
        .I3(Q[9]),
        .I4(ap_CS_fsm_state1),
        .I5(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .O(available_spaces_bk_s_reg_6600));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(ap_CS_fsm_state8),
        .I1(ap_NS_fsm1),
        .O(ap_NS_fsm[8]));
  LUT6 #(
    .INIT(64'h0A0A0B0A0B0B0B0B)) 
    \ap_CS_fsm[8]_i_1__0 
       (.I0(Q[1]),
        .I1(\ap_CS_fsm[8]_i_2_n_1 ),
        .I2(Q[0]),
        .I3(\ap_CS_fsm_reg[8]_0 ),
        .I4(\ap_CS_fsm_reg[8]_1 ),
        .I5(Q[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFAEFFAEAEAEFFAE)) 
    \ap_CS_fsm[8]_i_2 
       (.I0(\ap_CS_fsm_reg[8]_2 ),
        .I1(\medium_state_read_1_reg_652[0]_i_2_n_1 ),
        .I2(grp_random_int_gen_fu_281_ap_start_reg_reg),
        .I3(Q[2]),
        .I4(\ap_CS_fsm_reg[8]_3 ),
        .I5(\ap_CS_fsm_reg[8]_4 ),
        .O(\ap_CS_fsm[8]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(\ap_CS_fsm[9]_i_2_n_1 ),
        .I1(p_0_reg_199[0]),
        .I2(ap_NS_fsm1),
        .I3(ap_NS_fsm132_out),
        .I4(ap_NS_fsm134_out),
        .I5(ap_NS_fsm133_out),
        .O(ap_NS_fsm[9]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[9]_i_10 
       (.I0(bk_0_reg_188[0]),
        .I1(bk_0_reg_188[1]),
        .I2(bk_0_reg_188[2]),
        .I3(bk_0_reg_188[4]),
        .O(\ap_CS_fsm[9]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[9]_i_11 
       (.I0(be_0_reg_177[0]),
        .I1(be_0_reg_177[1]),
        .I2(be_0_reg_177[2]),
        .I3(be_0_reg_177[4]),
        .O(\ap_CS_fsm[9]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ap_CS_fsm[9]_i_12 
       (.I0(vo_0_reg_155[0]),
        .I1(vo_0_reg_155[1]),
        .I2(ap_CS_fsm_state2),
        .I3(vo_0_reg_155[5]),
        .O(\ap_CS_fsm[9]_i_12_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \ap_CS_fsm[9]_i_13 
       (.I0(vi_0_reg_166[0]),
        .I1(vi_0_reg_166[1]),
        .I2(ap_CS_fsm_state4),
        .I3(vi_0_reg_166[5]),
        .O(\ap_CS_fsm[9]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \ap_CS_fsm[9]_i_2 
       (.I0(available_spaces_vi[1]),
        .I1(available_spaces_vi[0]),
        .I2(available_spaces_vi[2]),
        .I3(available_spaces_vi_s_reg_6240),
        .I4(\ap_CS_fsm[9]_i_8_n_1 ),
        .I5(available_spaces_bk_s_reg_6600),
        .O(\ap_CS_fsm[9]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000100)) 
    \ap_CS_fsm[9]_i_3 
       (.I0(available_spaces_vo[1]),
        .I1(available_spaces_vo[0]),
        .I2(available_spaces_vo[2]),
        .I3(available_spaces_vo_s_reg_6060),
        .I4(\ap_CS_fsm[9]_i_9_n_1 ),
        .I5(available_spaces_be_s_reg_6420),
        .O(p_0_reg_199[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[9]_i_4 
       (.I0(ap_CS_fsm_state8),
        .I1(bk_0_reg_188[5]),
        .I2(bk_0_reg_188[6]),
        .I3(bk_0_reg_188[3]),
        .I4(\ap_CS_fsm[9]_i_10_n_1 ),
        .O(ap_NS_fsm1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \ap_CS_fsm[9]_i_5 
       (.I0(ap_CS_fsm_state6),
        .I1(be_0_reg_177[5]),
        .I2(be_0_reg_177[6]),
        .I3(be_0_reg_177[3]),
        .I4(\ap_CS_fsm[9]_i_11_n_1 ),
        .O(ap_NS_fsm132_out));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \ap_CS_fsm[9]_i_6 
       (.I0(vo_0_reg_155[3]),
        .I1(vo_0_reg_155[4]),
        .I2(vo_0_reg_155[2]),
        .I3(vo_0_reg_155[6]),
        .I4(\ap_CS_fsm[9]_i_12_n_1 ),
        .O(ap_NS_fsm134_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \ap_CS_fsm[9]_i_7 
       (.I0(vi_0_reg_166[3]),
        .I1(vi_0_reg_166[4]),
        .I2(vi_0_reg_166[2]),
        .I3(vi_0_reg_166[6]),
        .I4(\ap_CS_fsm[9]_i_13_n_1 ),
        .O(ap_NS_fsm133_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ap_CS_fsm[9]_i_8 
       (.I0(available_spaces_bk[1]),
        .I1(available_spaces_bk[0]),
        .I2(available_spaces_bk[2]),
        .O(\ap_CS_fsm[9]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ap_CS_fsm[9]_i_9 
       (.I0(available_spaces_be[1]),
        .I1(available_spaces_be[0]),
        .I2(available_spaces_be[2]),
        .O(\ap_CS_fsm[9]_i_9_n_1 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_preg[0]_i_1 
       (.I0(\p_0_reg_199_reg_n_1_[0] ),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(ap_return_preg[0]),
        .O(\ap_return_preg[0]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_preg[1]_i_1 
       (.I0(\p_0_reg_199_reg_n_1_[1] ),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(ap_return_preg[1]),
        .O(\ap_return_preg[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_return_preg[2]_i_1 
       (.I0(\p_0_reg_199_reg_n_1_[2] ),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I2(ap_return_preg[2]),
        .O(\ap_return_preg[2]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_return_preg[0]_i_1_n_1 ),
        .Q(ap_return_preg[0]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_return_preg[1]_i_1_n_1 ),
        .Q(ap_return_preg[1]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_return_preg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_return_preg[2]_i_1_n_1 ),
        .Q(ap_return_preg[2]),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \available_spaces_be[0]_i_1 
       (.I0(available_spaces_be_s_reg_642[0]),
        .I1(ap_NS_fsm132_out),
        .I2(available_spaces_be[0]),
        .O(\available_spaces_be[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \available_spaces_be[1]_i_1 
       (.I0(available_spaces_be_s_reg_642[0]),
        .I1(available_spaces_be_s_reg_642[1]),
        .I2(ap_NS_fsm132_out),
        .I3(available_spaces_be[1]),
        .O(\available_spaces_be[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \available_spaces_be[2]_i_1 
       (.I0(available_spaces_be_s_reg_642[1]),
        .I1(available_spaces_be_s_reg_642[0]),
        .I2(available_spaces_be_s_reg_642[2]),
        .I3(ap_NS_fsm132_out),
        .I4(available_spaces_be[2]),
        .O(\available_spaces_be[2]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_be_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_be[0]_i_1_n_1 ),
        .Q(available_spaces_be[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_be_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_be[1]_i_1_n_1 ),
        .Q(available_spaces_be[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \available_spaces_be_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_be[2]_i_1_n_1 ),
        .Q(available_spaces_be[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_be_s_reg_642[0]_i_1 
       (.I0(available_spaces_be[0]),
        .I1(available_spaces_be_s_reg_6420),
        .I2(available_spaces_be_s_reg_642[0]),
        .O(\available_spaces_be_s_reg_642[0]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_be_s_reg_642[1]_i_1 
       (.I0(available_spaces_be[1]),
        .I1(available_spaces_be_s_reg_6420),
        .I2(available_spaces_be_s_reg_642[1]),
        .O(\available_spaces_be_s_reg_642[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_be_s_reg_642[2]_i_1 
       (.I0(available_spaces_be[2]),
        .I1(available_spaces_be_s_reg_6420),
        .I2(available_spaces_be_s_reg_642[2]),
        .O(\available_spaces_be_s_reg_642[2]_i_1_n_1 ));
  FDRE \available_spaces_be_s_reg_642_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_be_s_reg_642[0]_i_1_n_1 ),
        .Q(available_spaces_be_s_reg_642[0]),
        .R(1'b0));
  FDRE \available_spaces_be_s_reg_642_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_be_s_reg_642[1]_i_1_n_1 ),
        .Q(available_spaces_be_s_reg_642[1]),
        .R(1'b0));
  FDRE \available_spaces_be_s_reg_642_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_be_s_reg_642[2]_i_1_n_1 ),
        .Q(available_spaces_be_s_reg_642[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \available_spaces_bk[0]_i_1 
       (.I0(available_spaces_bk_s_reg_660[0]),
        .I1(ap_NS_fsm1),
        .I2(available_spaces_bk[0]),
        .O(\available_spaces_bk[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \available_spaces_bk[1]_i_1 
       (.I0(available_spaces_bk_s_reg_660[0]),
        .I1(available_spaces_bk_s_reg_660[1]),
        .I2(ap_NS_fsm1),
        .I3(available_spaces_bk[1]),
        .O(\available_spaces_bk[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \available_spaces_bk[2]_i_1 
       (.I0(available_spaces_bk_s_reg_660[1]),
        .I1(available_spaces_bk_s_reg_660[0]),
        .I2(available_spaces_bk_s_reg_660[2]),
        .I3(ap_NS_fsm1),
        .I4(available_spaces_bk[2]),
        .O(\available_spaces_bk[2]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_bk_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_bk[0]_i_1_n_1 ),
        .Q(available_spaces_bk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_bk_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_bk[1]_i_1_n_1 ),
        .Q(available_spaces_bk[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \available_spaces_bk_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_bk[2]_i_1_n_1 ),
        .Q(available_spaces_bk[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_bk_s_reg_660[0]_i_1 
       (.I0(available_spaces_bk[0]),
        .I1(available_spaces_bk_s_reg_6600),
        .I2(available_spaces_bk_s_reg_660[0]),
        .O(\available_spaces_bk_s_reg_660[0]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_bk_s_reg_660[1]_i_1 
       (.I0(available_spaces_bk[1]),
        .I1(available_spaces_bk_s_reg_6600),
        .I2(available_spaces_bk_s_reg_660[1]),
        .O(\available_spaces_bk_s_reg_660[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_bk_s_reg_660[2]_i_1 
       (.I0(available_spaces_bk[2]),
        .I1(available_spaces_bk_s_reg_6600),
        .I2(available_spaces_bk_s_reg_660[2]),
        .O(\available_spaces_bk_s_reg_660[2]_i_1_n_1 ));
  FDRE \available_spaces_bk_s_reg_660_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_bk_s_reg_660[0]_i_1_n_1 ),
        .Q(available_spaces_bk_s_reg_660[0]),
        .R(1'b0));
  FDRE \available_spaces_bk_s_reg_660_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_bk_s_reg_660[1]_i_1_n_1 ),
        .Q(available_spaces_bk_s_reg_660[1]),
        .R(1'b0));
  FDRE \available_spaces_bk_s_reg_660_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_bk_s_reg_660[2]_i_1_n_1 ),
        .Q(available_spaces_bk_s_reg_660[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \available_spaces_vi[0]_i_1 
       (.I0(available_spaces_vi_s_reg_624[0]),
        .I1(ap_NS_fsm133_out),
        .I2(available_spaces_vi[0]),
        .O(\available_spaces_vi[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \available_spaces_vi[1]_i_1 
       (.I0(available_spaces_vi_s_reg_624[0]),
        .I1(available_spaces_vi_s_reg_624[1]),
        .I2(ap_NS_fsm133_out),
        .I3(available_spaces_vi[1]),
        .O(\available_spaces_vi[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \available_spaces_vi[2]_i_1 
       (.I0(available_spaces_vi_s_reg_624[1]),
        .I1(available_spaces_vi_s_reg_624[0]),
        .I2(available_spaces_vi_s_reg_624[2]),
        .I3(ap_NS_fsm133_out),
        .I4(available_spaces_vi[2]),
        .O(\available_spaces_vi[2]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_vi_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vi[0]_i_1_n_1 ),
        .Q(available_spaces_vi[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_vi_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vi[1]_i_1_n_1 ),
        .Q(available_spaces_vi[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \available_spaces_vi_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vi[2]_i_1_n_1 ),
        .Q(available_spaces_vi[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_vi_s_reg_624[0]_i_1 
       (.I0(available_spaces_vi[0]),
        .I1(available_spaces_vi_s_reg_6240),
        .I2(available_spaces_vi_s_reg_624[0]),
        .O(\available_spaces_vi_s_reg_624[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_vi_s_reg_624[1]_i_1 
       (.I0(available_spaces_vi[1]),
        .I1(available_spaces_vi_s_reg_6240),
        .I2(available_spaces_vi_s_reg_624[1]),
        .O(\available_spaces_vi_s_reg_624[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_vi_s_reg_624[2]_i_1 
       (.I0(available_spaces_vi[2]),
        .I1(available_spaces_vi_s_reg_6240),
        .I2(available_spaces_vi_s_reg_624[2]),
        .O(\available_spaces_vi_s_reg_624[2]_i_1_n_1 ));
  FDRE \available_spaces_vi_s_reg_624_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vi_s_reg_624[0]_i_1_n_1 ),
        .Q(available_spaces_vi_s_reg_624[0]),
        .R(1'b0));
  FDRE \available_spaces_vi_s_reg_624_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vi_s_reg_624[1]_i_1_n_1 ),
        .Q(available_spaces_vi_s_reg_624[1]),
        .R(1'b0));
  FDRE \available_spaces_vi_s_reg_624_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vi_s_reg_624[2]_i_1_n_1 ),
        .Q(available_spaces_vi_s_reg_624[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \available_spaces_vo[0]_i_1 
       (.I0(available_spaces_vo_s_reg_606[0]),
        .I1(ap_NS_fsm134_out),
        .I2(available_spaces_vo[0]),
        .O(\available_spaces_vo[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \available_spaces_vo[1]_i_1 
       (.I0(available_spaces_vo_s_reg_606[0]),
        .I1(available_spaces_vo_s_reg_606[1]),
        .I2(ap_NS_fsm134_out),
        .I3(available_spaces_vo[1]),
        .O(\available_spaces_vo[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \available_spaces_vo[2]_i_1 
       (.I0(available_spaces_vo_s_reg_606[1]),
        .I1(available_spaces_vo_s_reg_606[0]),
        .I2(available_spaces_vo_s_reg_606[2]),
        .I3(ap_NS_fsm134_out),
        .I4(available_spaces_vo[2]),
        .O(\available_spaces_vo[2]_i_1_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_vo_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vo[0]_i_1_n_1 ),
        .Q(available_spaces_vo[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \available_spaces_vo_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vo[1]_i_1_n_1 ),
        .Q(available_spaces_vo[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \available_spaces_vo_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vo[2]_i_1_n_1 ),
        .Q(available_spaces_vo[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_vo_s_reg_606[0]_i_1 
       (.I0(available_spaces_vo[0]),
        .I1(available_spaces_vo_s_reg_6060),
        .I2(available_spaces_vo_s_reg_606[0]),
        .O(\available_spaces_vo_s_reg_606[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_vo_s_reg_606[1]_i_1 
       (.I0(available_spaces_vo[1]),
        .I1(available_spaces_vo_s_reg_6060),
        .I2(available_spaces_vo_s_reg_606[1]),
        .O(\available_spaces_vo_s_reg_606[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \available_spaces_vo_s_reg_606[2]_i_1 
       (.I0(available_spaces_vo[2]),
        .I1(available_spaces_vo_s_reg_6060),
        .I2(available_spaces_vo_s_reg_606[2]),
        .O(\available_spaces_vo_s_reg_606[2]_i_1_n_1 ));
  FDRE \available_spaces_vo_s_reg_606_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vo_s_reg_606[0]_i_1_n_1 ),
        .Q(available_spaces_vo_s_reg_606[0]),
        .R(1'b0));
  FDRE \available_spaces_vo_s_reg_606_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vo_s_reg_606[1]_i_1_n_1 ),
        .Q(available_spaces_vo_s_reg_606[1]),
        .R(1'b0));
  FDRE \available_spaces_vo_s_reg_606_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\available_spaces_vo_s_reg_606[2]_i_1_n_1 ),
        .Q(available_spaces_vo_s_reg_606[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \be_0_reg_177[6]_i_1 
       (.I0(available_spaces_be_s_reg_6420),
        .I1(available_spaces_be[2]),
        .I2(available_spaces_be[0]),
        .I3(available_spaces_be[1]),
        .O(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[0]),
        .Q(be_0_reg_177[0]),
        .R(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[1]),
        .Q(be_0_reg_177[1]),
        .R(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[2]),
        .Q(be_0_reg_177[2]),
        .R(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[3]),
        .Q(be_0_reg_177[3]),
        .R(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[4]),
        .Q(be_0_reg_177[4]),
        .R(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[5]),
        .Q(be_0_reg_177[5]),
        .R(ap_NS_fsm143_out));
  FDRE \be_0_reg_177_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state7),
        .D(be_reg_717[6]),
        .Q(be_0_reg_177[6]),
        .R(ap_NS_fsm143_out));
  LUT1 #(
    .INIT(2'h1)) 
    \be_reg_717[0]_i_1 
       (.I0(be_0_reg_177[0]),
        .O(be_fu_490_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \be_reg_717[1]_i_1 
       (.I0(be_0_reg_177[1]),
        .I1(be_0_reg_177[0]),
        .O(be_fu_490_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \be_reg_717[2]_i_1 
       (.I0(be_0_reg_177[2]),
        .I1(be_0_reg_177[1]),
        .I2(be_0_reg_177[0]),
        .O(be_fu_490_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \be_reg_717[3]_i_1 
       (.I0(be_0_reg_177[3]),
        .I1(be_0_reg_177[0]),
        .I2(be_0_reg_177[1]),
        .I3(be_0_reg_177[2]),
        .O(be_fu_490_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \be_reg_717[4]_i_1 
       (.I0(be_0_reg_177[4]),
        .I1(be_0_reg_177[2]),
        .I2(be_0_reg_177[1]),
        .I3(be_0_reg_177[0]),
        .I4(be_0_reg_177[3]),
        .O(be_fu_490_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \be_reg_717[5]_i_1 
       (.I0(be_0_reg_177[3]),
        .I1(be_0_reg_177[0]),
        .I2(be_0_reg_177[1]),
        .I3(be_0_reg_177[2]),
        .I4(be_0_reg_177[4]),
        .I5(be_0_reg_177[5]),
        .O(be_fu_490_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \be_reg_717[6]_i_1 
       (.I0(be_0_reg_177[6]),
        .I1(\be_reg_717[6]_i_2_n_1 ),
        .I2(be_0_reg_177[5]),
        .O(be_fu_490_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \be_reg_717[6]_i_2 
       (.I0(be_0_reg_177[3]),
        .I1(be_0_reg_177[0]),
        .I2(be_0_reg_177[1]),
        .I3(be_0_reg_177[2]),
        .I4(be_0_reg_177[4]),
        .O(\be_reg_717[6]_i_2_n_1 ));
  FDRE \be_reg_717_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[0]),
        .Q(be_reg_717[0]),
        .R(1'b0));
  FDRE \be_reg_717_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[1]),
        .Q(be_reg_717[1]),
        .R(1'b0));
  FDRE \be_reg_717_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[2]),
        .Q(be_reg_717[2]),
        .R(1'b0));
  FDRE \be_reg_717_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[3]),
        .Q(be_reg_717[3]),
        .R(1'b0));
  FDRE \be_reg_717_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[4]),
        .Q(be_reg_717[4]),
        .R(1'b0));
  FDRE \be_reg_717_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[5]),
        .Q(be_reg_717[5]),
        .R(1'b0));
  FDRE \be_reg_717_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(be_fu_490_p2[6]),
        .Q(be_reg_717[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \bk_0_reg_188[6]_i_1 
       (.I0(available_spaces_bk_s_reg_6600),
        .I1(available_spaces_bk[2]),
        .I2(available_spaces_bk[0]),
        .I3(available_spaces_bk[1]),
        .O(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[0]),
        .Q(bk_0_reg_188[0]),
        .R(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[1]),
        .Q(bk_0_reg_188[1]),
        .R(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[2]),
        .Q(bk_0_reg_188[2]),
        .R(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[3]),
        .Q(bk_0_reg_188[3]),
        .R(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[4]),
        .Q(bk_0_reg_188[4]),
        .R(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[5]),
        .Q(bk_0_reg_188[5]),
        .R(ap_NS_fsm144_out));
  FDRE \bk_0_reg_188_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(bk_reg_735[6]),
        .Q(bk_0_reg_188[6]),
        .R(ap_NS_fsm144_out));
  LUT1 #(
    .INIT(2'h1)) 
    \bk_reg_735[0]_i_1 
       (.I0(bk_0_reg_188[0]),
        .O(bk_fu_552_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bk_reg_735[1]_i_1 
       (.I0(bk_0_reg_188[1]),
        .I1(bk_0_reg_188[0]),
        .O(bk_fu_552_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bk_reg_735[2]_i_1 
       (.I0(bk_0_reg_188[2]),
        .I1(bk_0_reg_188[1]),
        .I2(bk_0_reg_188[0]),
        .O(bk_fu_552_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bk_reg_735[3]_i_1 
       (.I0(bk_0_reg_188[3]),
        .I1(bk_0_reg_188[0]),
        .I2(bk_0_reg_188[1]),
        .I3(bk_0_reg_188[2]),
        .O(bk_fu_552_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bk_reg_735[4]_i_1 
       (.I0(bk_0_reg_188[4]),
        .I1(bk_0_reg_188[2]),
        .I2(bk_0_reg_188[1]),
        .I3(bk_0_reg_188[0]),
        .I4(bk_0_reg_188[3]),
        .O(bk_fu_552_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bk_reg_735[5]_i_1 
       (.I0(bk_0_reg_188[3]),
        .I1(bk_0_reg_188[0]),
        .I2(bk_0_reg_188[1]),
        .I3(bk_0_reg_188[2]),
        .I4(bk_0_reg_188[4]),
        .I5(bk_0_reg_188[5]),
        .O(bk_fu_552_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \bk_reg_735[6]_i_1 
       (.I0(bk_0_reg_188[6]),
        .I1(\bk_reg_735[6]_i_2_n_1 ),
        .I2(bk_0_reg_188[5]),
        .O(bk_fu_552_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bk_reg_735[6]_i_2 
       (.I0(bk_0_reg_188[3]),
        .I1(bk_0_reg_188[0]),
        .I2(bk_0_reg_188[1]),
        .I3(bk_0_reg_188[2]),
        .I4(bk_0_reg_188[4]),
        .O(\bk_reg_735[6]_i_2_n_1 ));
  FDRE \bk_reg_735_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[0]),
        .Q(bk_reg_735[0]),
        .R(1'b0));
  FDRE \bk_reg_735_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[1]),
        .Q(bk_reg_735[1]),
        .R(1'b0));
  FDRE \bk_reg_735_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[2]),
        .Q(bk_reg_735[2]),
        .R(1'b0));
  FDRE \bk_reg_735_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[3]),
        .Q(bk_reg_735[3]),
        .R(1'b0));
  FDRE \bk_reg_735_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[4]),
        .Q(bk_reg_735[4]),
        .R(1'b0));
  FDRE \bk_reg_735_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[5]),
        .Q(bk_reg_735[5]),
        .R(1'b0));
  FDRE \bk_reg_735_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state8),
        .D(bk_fu_552_p2[6]),
        .Q(bk_reg_735[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFC)) 
    grp_enqueue_dequeue_fram_fu_243_ap_start_reg_i_1
       (.I0(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(Q[6]),
        .I4(Q[3]),
        .I5(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .O(\ap_CS_fsm_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h5557555500030000)) 
    grp_random_int_gen_fu_281_ap_start_reg_i_1
       (.I0(grp_random_int_gen_fu_281_ap_start_reg_reg_0),
        .I1(\medium_state_read_1_reg_652[0]_i_2_n_1 ),
        .I2(grp_random_int_gen_fu_281_ap_start_reg_reg),
        .I3(medium_state),
        .I4(grp_fu_310_p2),
        .I5(grp_random_int_gen_fu_281_ap_start_reg),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \icmp_ln43_reg_656[0]_i_1 
       (.I0(grp_fu_310_p2),
        .I1(Q[11]),
        .I2(ap_CS_fsm_state1),
        .I3(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I4(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I5(icmp_ln43_reg_656),
        .O(\ap_CS_fsm_reg[14] ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \icmp_ln56_reg_648[0]_i_1 
       (.I0(grp_fu_310_p2),
        .I1(Q[9]),
        .I2(ap_CS_fsm_state1),
        .I3(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I4(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I5(icmp_ln56_reg_648),
        .O(\ap_CS_fsm_reg[12] ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \icmp_ln69_reg_640[0]_i_1 
       (.I0(grp_fu_310_p2),
        .I1(Q[7]),
        .I2(ap_CS_fsm_state1),
        .I3(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I4(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I5(icmp_ln69_reg_640),
        .O(\ap_CS_fsm_reg[10] ));
  LUT6 #(
    .INIT(64'hBBBBFFBF88880080)) 
    \icmp_ln82_reg_632[0]_i_1 
       (.I0(grp_fu_310_p2),
        .I1(Q[4]),
        .I2(ap_CS_fsm_state1),
        .I3(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I4(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I5(icmp_ln82_reg_632),
        .O(\ap_CS_fsm_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \medium_state_read_1_reg_652[0]_i_1 
       (.I0(medium_state),
        .I1(\medium_state_read_1_reg_652[0]_i_2_n_1 ),
        .I2(Q[9]),
        .I3(grp_fu_310_p2),
        .I4(medium_state_read_1_reg_652),
        .O(medium_state_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \medium_state_read_1_reg_652[0]_i_2 
       (.I0(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I1(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .I2(ap_CS_fsm_state1),
        .O(\medium_state_read_1_reg_652[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
    \medium_state_read_1_reg_652[0]_i_3 
       (.I0(ap_return_preg[1]),
        .I1(\p_0_reg_199_reg_n_1_[1] ),
        .I2(\ap_return_preg[0]_i_1_n_1 ),
        .I3(\p_0_reg_199_reg_n_1_[2] ),
        .I4(grp_enqueue_dequeue_fram_fu_243_ap_ready),
        .I5(ap_return_preg[2]),
        .O(grp_fu_310_p2));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \medium_state_read_2_reg_644[0]_i_1 
       (.I0(medium_state),
        .I1(\medium_state_read_1_reg_652[0]_i_2_n_1 ),
        .I2(Q[7]),
        .I3(grp_fu_310_p2),
        .I4(medium_state_read_2_reg_644),
        .O(\medium_state[0]_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \medium_state_read_3_reg_636[0]_i_1 
       (.I0(medium_state),
        .I1(\medium_state_read_1_reg_652[0]_i_2_n_1 ),
        .I2(Q[4]),
        .I3(grp_fu_310_p2),
        .I4(medium_state_read_3_reg_636),
        .O(\medium_state[0]_1 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \medium_state_read_reg_660[0]_i_1 
       (.I0(medium_state),
        .I1(\medium_state_read_1_reg_652[0]_i_2_n_1 ),
        .I2(Q[11]),
        .I3(grp_fu_310_p2),
        .I4(medium_state_read_reg_660),
        .O(\medium_state[0]_2 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDCCCCCCCC)) 
    \p_0_reg_199[0]_i_1 
       (.I0(\ap_CS_fsm[9]_i_2_n_1 ),
        .I1(p_0_reg_199[0]),
        .I2(\p_0_reg_199[2]_i_2_n_1 ),
        .I3(ap_NS_fsm134_out),
        .I4(ap_NS_fsm133_out),
        .I5(\p_0_reg_199_reg_n_1_[0] ),
        .O(\p_0_reg_199[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \p_0_reg_199[1]_i_1 
       (.I0(p_0_reg_199[1]),
        .I1(\ap_CS_fsm[9]_i_2_n_1 ),
        .I2(p_0_reg_199[0]),
        .I3(\p_0_reg_199[2]_i_2_n_1 ),
        .I4(\p_0_reg_199[1]_i_3_n_1 ),
        .I5(\p_0_reg_199_reg_n_1_[1] ),
        .O(\p_0_reg_199[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFEFF0000FEFFFEFF)) 
    \p_0_reg_199[1]_i_2 
       (.I0(available_spaces_be[1]),
        .I1(available_spaces_be[0]),
        .I2(available_spaces_be[2]),
        .I3(available_spaces_be_s_reg_6420),
        .I4(\ap_CS_fsm[9]_i_8_n_1 ),
        .I5(available_spaces_bk_s_reg_6600),
        .O(p_0_reg_199[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \p_0_reg_199[1]_i_3 
       (.I0(\ap_CS_fsm[9]_i_12_n_1 ),
        .I1(\p_0_reg_199[1]_i_4_n_1 ),
        .I2(\ap_CS_fsm[9]_i_13_n_1 ),
        .I3(\p_0_reg_199[1]_i_5_n_1 ),
        .O(\p_0_reg_199[1]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \p_0_reg_199[1]_i_4 
       (.I0(vo_0_reg_155[6]),
        .I1(vo_0_reg_155[2]),
        .I2(vo_0_reg_155[4]),
        .I3(vo_0_reg_155[3]),
        .O(\p_0_reg_199[1]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \p_0_reg_199[1]_i_5 
       (.I0(vi_0_reg_166[6]),
        .I1(vi_0_reg_166[2]),
        .I2(vi_0_reg_166[4]),
        .I3(vi_0_reg_166[3]),
        .O(\p_0_reg_199[1]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \p_0_reg_199[2]_i_1 
       (.I0(\ap_CS_fsm[9]_i_2_n_1 ),
        .I1(p_0_reg_199[0]),
        .I2(\p_0_reg_199[2]_i_2_n_1 ),
        .I3(ap_NS_fsm134_out),
        .I4(ap_NS_fsm133_out),
        .I5(\p_0_reg_199_reg_n_1_[2] ),
        .O(\p_0_reg_199[2]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \p_0_reg_199[2]_i_2 
       (.I0(\ap_CS_fsm[9]_i_10_n_1 ),
        .I1(\p_0_reg_199[2]_i_3_n_1 ),
        .I2(\ap_CS_fsm[9]_i_11_n_1 ),
        .I3(\p_0_reg_199[2]_i_4_n_1 ),
        .O(\p_0_reg_199[2]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \p_0_reg_199[2]_i_3 
       (.I0(bk_0_reg_188[3]),
        .I1(bk_0_reg_188[6]),
        .I2(bk_0_reg_188[5]),
        .I3(ap_CS_fsm_state8),
        .O(\p_0_reg_199[2]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \p_0_reg_199[2]_i_4 
       (.I0(be_0_reg_177[3]),
        .I1(be_0_reg_177[6]),
        .I2(be_0_reg_177[5]),
        .I3(ap_CS_fsm_state6),
        .O(\p_0_reg_199[2]_i_4_n_1 ));
  FDRE \p_0_reg_199_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\p_0_reg_199[0]_i_1_n_1 ),
        .Q(\p_0_reg_199_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \p_0_reg_199_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\p_0_reg_199[1]_i_1_n_1 ),
        .Q(\p_0_reg_199_reg_n_1_[1] ),
        .R(1'b0));
  FDRE \p_0_reg_199_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\p_0_reg_199[2]_i_1_n_1 ),
        .Q(\p_0_reg_199_reg_n_1_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \vi_0_reg_166[6]_i_1 
       (.I0(available_spaces_vi_s_reg_6240),
        .I1(available_spaces_vi[2]),
        .I2(available_spaces_vi[0]),
        .I3(available_spaces_vi[1]),
        .O(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[0]),
        .Q(vi_0_reg_166[0]),
        .R(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[1]),
        .Q(vi_0_reg_166[1]),
        .R(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[2]),
        .Q(vi_0_reg_166[2]),
        .R(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[3]),
        .Q(vi_0_reg_166[3]),
        .R(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[4]),
        .Q(vi_0_reg_166[4]),
        .R(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[5]),
        .Q(vi_0_reg_166[5]),
        .R(ap_NS_fsm142_out));
  FDRE \vi_0_reg_166_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(vi_reg_699[6]),
        .Q(vi_0_reg_166[6]),
        .R(ap_NS_fsm142_out));
  LUT1 #(
    .INIT(2'h1)) 
    \vi_reg_699[0]_i_1 
       (.I0(vi_0_reg_166[0]),
        .O(vi_fu_428_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vi_reg_699[1]_i_1 
       (.I0(vi_0_reg_166[1]),
        .I1(vi_0_reg_166[0]),
        .O(vi_fu_428_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vi_reg_699[2]_i_1 
       (.I0(vi_0_reg_166[2]),
        .I1(vi_0_reg_166[1]),
        .I2(vi_0_reg_166[0]),
        .O(vi_fu_428_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vi_reg_699[3]_i_1 
       (.I0(vi_0_reg_166[3]),
        .I1(vi_0_reg_166[0]),
        .I2(vi_0_reg_166[1]),
        .I3(vi_0_reg_166[2]),
        .O(vi_fu_428_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vi_reg_699[4]_i_1 
       (.I0(vi_0_reg_166[4]),
        .I1(vi_0_reg_166[2]),
        .I2(vi_0_reg_166[1]),
        .I3(vi_0_reg_166[0]),
        .I4(vi_0_reg_166[3]),
        .O(vi_fu_428_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vi_reg_699[5]_i_1 
       (.I0(vi_0_reg_166[3]),
        .I1(vi_0_reg_166[0]),
        .I2(vi_0_reg_166[1]),
        .I3(vi_0_reg_166[2]),
        .I4(vi_0_reg_166[4]),
        .I5(vi_0_reg_166[5]),
        .O(vi_fu_428_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \vi_reg_699[6]_i_1 
       (.I0(vi_0_reg_166[6]),
        .I1(\vi_reg_699[6]_i_2_n_1 ),
        .I2(vi_0_reg_166[5]),
        .O(vi_fu_428_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vi_reg_699[6]_i_2 
       (.I0(vi_0_reg_166[3]),
        .I1(vi_0_reg_166[0]),
        .I2(vi_0_reg_166[1]),
        .I3(vi_0_reg_166[2]),
        .I4(vi_0_reg_166[4]),
        .O(\vi_reg_699[6]_i_2_n_1 ));
  FDRE \vi_reg_699_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[0]),
        .Q(vi_reg_699[0]),
        .R(1'b0));
  FDRE \vi_reg_699_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[1]),
        .Q(vi_reg_699[1]),
        .R(1'b0));
  FDRE \vi_reg_699_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[2]),
        .Q(vi_reg_699[2]),
        .R(1'b0));
  FDRE \vi_reg_699_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[3]),
        .Q(vi_reg_699[3]),
        .R(1'b0));
  FDRE \vi_reg_699_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[4]),
        .Q(vi_reg_699[4]),
        .R(1'b0));
  FDRE \vi_reg_699_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[5]),
        .Q(vi_reg_699[5]),
        .R(1'b0));
  FDRE \vi_reg_699_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(vi_fu_428_p2[6]),
        .Q(vi_reg_699[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \vo_0_reg_155[6]_i_1 
       (.I0(available_spaces_vo_s_reg_6060),
        .I1(available_spaces_vo[2]),
        .I2(available_spaces_vo[0]),
        .I3(available_spaces_vo[1]),
        .O(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[0]),
        .Q(vo_0_reg_155[0]),
        .R(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[1]),
        .Q(vo_0_reg_155[1]),
        .R(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[2]),
        .Q(vo_0_reg_155[2]),
        .R(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[3]),
        .Q(vo_0_reg_155[3]),
        .R(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[4]),
        .Q(vo_0_reg_155[4]),
        .R(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[5]),
        .Q(vo_0_reg_155[5]),
        .R(ap_NS_fsm141_out));
  FDRE \vo_0_reg_155_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(vo_reg_681[6]),
        .Q(vo_0_reg_155[6]),
        .R(ap_NS_fsm141_out));
  LUT1 #(
    .INIT(2'h1)) 
    \vo_reg_681[0]_i_1 
       (.I0(vo_0_reg_155[0]),
        .O(vo_fu_366_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vo_reg_681[1]_i_1 
       (.I0(vo_0_reg_155[1]),
        .I1(vo_0_reg_155[0]),
        .O(vo_fu_366_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vo_reg_681[2]_i_1 
       (.I0(vo_0_reg_155[2]),
        .I1(vo_0_reg_155[1]),
        .I2(vo_0_reg_155[0]),
        .O(vo_fu_366_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vo_reg_681[3]_i_1 
       (.I0(vo_0_reg_155[3]),
        .I1(vo_0_reg_155[0]),
        .I2(vo_0_reg_155[1]),
        .I3(vo_0_reg_155[2]),
        .O(vo_fu_366_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vo_reg_681[4]_i_1 
       (.I0(vo_0_reg_155[4]),
        .I1(vo_0_reg_155[2]),
        .I2(vo_0_reg_155[1]),
        .I3(vo_0_reg_155[0]),
        .I4(vo_0_reg_155[3]),
        .O(vo_fu_366_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vo_reg_681[5]_i_1 
       (.I0(vo_0_reg_155[3]),
        .I1(vo_0_reg_155[0]),
        .I2(vo_0_reg_155[1]),
        .I3(vo_0_reg_155[2]),
        .I4(vo_0_reg_155[4]),
        .I5(vo_0_reg_155[5]),
        .O(vo_fu_366_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \vo_reg_681[6]_i_1 
       (.I0(vo_0_reg_155[6]),
        .I1(\vo_reg_681[6]_i_2_n_1 ),
        .I2(vo_0_reg_155[5]),
        .O(vo_fu_366_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vo_reg_681[6]_i_2 
       (.I0(vo_0_reg_155[3]),
        .I1(vo_0_reg_155[0]),
        .I2(vo_0_reg_155[1]),
        .I3(vo_0_reg_155[2]),
        .I4(vo_0_reg_155[4]),
        .O(\vo_reg_681[6]_i_2_n_1 ));
  FDRE \vo_reg_681_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[0]),
        .Q(vo_reg_681[0]),
        .R(1'b0));
  FDRE \vo_reg_681_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[1]),
        .Q(vo_reg_681[1]),
        .R(1'b0));
  FDRE \vo_reg_681_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[2]),
        .Q(vo_reg_681[2]),
        .R(1'b0));
  FDRE \vo_reg_681_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[3]),
        .Q(vo_reg_681[3]),
        .R(1'b0));
  FDRE \vo_reg_681_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[4]),
        .Q(vo_reg_681[4]),
        .R(1'b0));
  FDRE \vo_reg_681_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[5]),
        .Q(vo_reg_681[5]),
        .R(1'b0));
  FDRE \vo_reg_681_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(vo_fu_366_p2[6]),
        .Q(vo_reg_681[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ma_unitdatax_request" *) (* ap_ST_fsm_state1 = "17'b00000000000000001" *) (* ap_ST_fsm_state10 = "17'b00000001000000000" *) 
(* ap_ST_fsm_state11 = "17'b00000010000000000" *) (* ap_ST_fsm_state12 = "17'b00000100000000000" *) (* ap_ST_fsm_state13 = "17'b00001000000000000" *) 
(* ap_ST_fsm_state14 = "17'b00010000000000000" *) (* ap_ST_fsm_state15 = "17'b00100000000000000" *) (* ap_ST_fsm_state16 = "17'b01000000000000000" *) 
(* ap_ST_fsm_state17 = "17'b10000000000000000" *) (* ap_ST_fsm_state2 = "17'b00000000000000010" *) (* ap_ST_fsm_state3 = "17'b00000000000000100" *) 
(* ap_ST_fsm_state4 = "17'b00000000000001000" *) (* ap_ST_fsm_state5 = "17'b00000000000010000" *) (* ap_ST_fsm_state6 = "17'b00000000000100000" *) 
(* ap_ST_fsm_state7 = "17'b00000000001000000" *) (* ap_ST_fsm_state8 = "17'b00000000010000000" *) (* ap_ST_fsm_state9 = "17'b00000000100000000" *) 
(* hls_module = "yes" *) 
module bd_0_hls_inst_0_ma_unitdatax_request
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    source_addr_mac_address0,
    source_addr_mac_ce0,
    source_addr_mac_q0,
    source_addr_mac_address1,
    source_addr_mac_ce1,
    source_addr_mac_q1,
    dest_addr_mac_address0,
    dest_addr_mac_ce0,
    dest_addr_mac_we0,
    dest_addr_mac_d0,
    dest_addr_mac_q0,
    dest_addr_mac_address1,
    dest_addr_mac_ce1,
    dest_addr_mac_we1,
    dest_addr_mac_d1,
    dest_addr_mac_q1,
    data_address0,
    data_ce0,
    data_q0,
    up,
    s_class,
    c_identifier_operating_class,
    c_identifier_channel_number,
    t_slot,
    d_rate,
    tx_power_lvl,
    expiry_time,
    medium_state);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [2:0]source_addr_mac_address0;
  output source_addr_mac_ce0;
  input [7:0]source_addr_mac_q0;
  output [2:0]source_addr_mac_address1;
  output source_addr_mac_ce1;
  input [7:0]source_addr_mac_q1;
  output [2:0]dest_addr_mac_address0;
  output dest_addr_mac_ce0;
  output dest_addr_mac_we0;
  output [7:0]dest_addr_mac_d0;
  input [7:0]dest_addr_mac_q0;
  output [2:0]dest_addr_mac_address1;
  output dest_addr_mac_ce1;
  output dest_addr_mac_we1;
  output [7:0]dest_addr_mac_d1;
  input [7:0]dest_addr_mac_q1;
  output [6:0]data_address0;
  output data_ce0;
  input [7:0]data_q0;
  input [3:0]up;
  input [0:0]s_class;
  input [7:0]c_identifier_operating_class;
  input [7:0]c_identifier_channel_number;
  input [1:0]t_slot;
  input [6:0]d_rate;
  input [3:0]tx_power_lvl;
  input [63:0]expiry_time;
  input [0:0]medium_state;

  wire \<const0> ;
  wire \<const1> ;
  wire and_ln23_reg_580;
  wire \and_ln23_reg_580[0]_i_1_n_1 ;
  wire \ap_CS_fsm[16]_i_2_n_1 ;
  wire \ap_CS_fsm[16]_i_3_n_1 ;
  wire \ap_CS_fsm[16]_i_4_n_1 ;
  wire \ap_CS_fsm[5]_i_3_n_1 ;
  wire \ap_CS_fsm[8]_i_4_n_1 ;
  wire \ap_CS_fsm[8]_i_5_n_1 ;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire \ap_CS_fsm_reg_n_1_[13] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state13;
  wire ap_CS_fsm_state15;
  wire ap_CS_fsm_state16;
  wire ap_CS_fsm_state17;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9153_in;
  wire [16:0]ap_NS_fsm;
  wire ap_NS_fsm1165_out;
  wire ap_NS_fsm1169_out;
  wire [0:0]ap_NS_fsm_0;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_ready_INST_0_i_2_n_1;
  wire ap_ready_INST_0_i_4_n_1;
  wire ap_rst;
  wire ap_start;
  wire [7:0]c_identifier_channel_number;
  wire [7:0]c_identifier_operating_class;
  wire [6:0]d_rate;
  wire [6:0]data_address0;
  wire data_ce0;
  wire empty_12_fu_377_p2;
  wire empty_12_reg_584;
  wire empty_12_reg_5840;
  wire \empty_12_reg_584[0]_i_1_n_1 ;
  wire empty_27_fu_467_p2;
  wire \empty_27_reg_588[0]_i_1_n_1 ;
  wire \empty_27_reg_588_reg_n_1_[0] ;
  wire empty_31_reg_620;
  wire grp_compose_mac_frame_fu_271_ap_start_reg;
  wire grp_compose_mac_frame_fu_271_n_10;
  wire grp_compose_mac_frame_fu_271_n_11;
  wire grp_compose_mac_frame_fu_271_n_12;
  wire grp_compose_mac_frame_fu_271_n_13;
  wire grp_compose_mac_frame_fu_271_n_14;
  wire grp_enqueue_dequeue_fram_fu_243_ap_start_reg;
  wire grp_enqueue_dequeue_fram_fu_243_ap_start_reg0;
  wire grp_enqueue_dequeue_fram_fu_243_n_10;
  wire grp_enqueue_dequeue_fram_fu_243_n_11;
  wire grp_enqueue_dequeue_fram_fu_243_n_12;
  wire grp_enqueue_dequeue_fram_fu_243_n_13;
  wire grp_enqueue_dequeue_fram_fu_243_n_14;
  wire grp_enqueue_dequeue_fram_fu_243_n_15;
  wire grp_enqueue_dequeue_fram_fu_243_n_6;
  wire grp_enqueue_dequeue_fram_fu_243_n_7;
  wire grp_enqueue_dequeue_fram_fu_243_n_8;
  wire grp_enqueue_dequeue_fram_fu_243_n_9;
  wire grp_random_int_gen_fu_281_ap_ready;
  wire grp_random_int_gen_fu_281_ap_start_reg;
  wire grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1;
  wire grp_random_int_gen_fu_281_n_2;
  wire \i_0_reg_232[6]_i_4_n_1 ;
  wire \i_0_reg_232[6]_i_5_n_1 ;
  wire \i_0_reg_232[6]_i_6_n_1 ;
  wire \i_0_reg_232[6]_i_7_n_1 ;
  wire \i_0_reg_232[6]_i_8_n_1 ;
  wire \i_0_reg_232[6]_i_9_n_1 ;
  wire [6:0]i_fu_479_p2;
  wire [6:0]i_reg_595;
  wire \i_reg_595[6]_i_2_n_1 ;
  wire icmp_ln41_reg_616;
  wire icmp_ln43_reg_656;
  wire icmp_ln56_reg_648;
  wire icmp_ln67_reg_624;
  wire icmp_ln69_reg_640;
  wire icmp_ln80_reg_628;
  wire icmp_ln82_reg_632;
  wire [0:0]medium_state;
  wire medium_state_read_1_reg_652;
  wire medium_state_read_2_reg_644;
  wire medium_state_read_3_reg_636;
  wire medium_state_read_reg_660;
  wire p_216_in;
  wire [0:0]s_class;
  wire [2:1]\^source_addr_mac_address0 ;
  wire source_addr_mac_ce0;
  wire \tmp_reg_576[0]_i_1_n_1 ;
  wire \tmp_reg_576_reg_n_1_[0] ;
  wire [3:0]tx_power_lvl;
  wire [3:0]up;

  assign ap_done = ap_ready;
  assign dest_addr_mac_address0[2] = \<const0> ;
  assign dest_addr_mac_address0[1] = \<const0> ;
  assign dest_addr_mac_address0[0] = \<const0> ;
  assign dest_addr_mac_address1[2] = \<const0> ;
  assign dest_addr_mac_address1[1] = \<const0> ;
  assign dest_addr_mac_address1[0] = \<const0> ;
  assign dest_addr_mac_ce0 = \<const0> ;
  assign dest_addr_mac_ce1 = \<const0> ;
  assign dest_addr_mac_d0[7] = \<const0> ;
  assign dest_addr_mac_d0[6] = \<const0> ;
  assign dest_addr_mac_d0[5] = \<const0> ;
  assign dest_addr_mac_d0[4] = \<const0> ;
  assign dest_addr_mac_d0[3] = \<const0> ;
  assign dest_addr_mac_d0[2] = \<const0> ;
  assign dest_addr_mac_d0[1] = \<const0> ;
  assign dest_addr_mac_d0[0] = \<const0> ;
  assign dest_addr_mac_d1[7] = \<const0> ;
  assign dest_addr_mac_d1[6] = \<const0> ;
  assign dest_addr_mac_d1[5] = \<const0> ;
  assign dest_addr_mac_d1[4] = \<const0> ;
  assign dest_addr_mac_d1[3] = \<const0> ;
  assign dest_addr_mac_d1[2] = \<const0> ;
  assign dest_addr_mac_d1[1] = \<const0> ;
  assign dest_addr_mac_d1[0] = \<const0> ;
  assign dest_addr_mac_we0 = \<const0> ;
  assign dest_addr_mac_we1 = \<const0> ;
  assign source_addr_mac_address0[2:1] = \^source_addr_mac_address0 [2:1];
  assign source_addr_mac_address0[0] = \<const0> ;
  assign source_addr_mac_address1[2:1] = \^source_addr_mac_address0 [2:1];
  assign source_addr_mac_address1[0] = \<const1> ;
  assign source_addr_mac_ce1 = source_addr_mac_ce0;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'hAAEAAAAAAA2AAAAA)) 
    \and_ln23_reg_580[0]_i_1 
       (.I0(and_ln23_reg_580),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(ap_start),
        .I3(up[3]),
        .I4(s_class),
        .I5(p_216_in),
        .O(\and_ln23_reg_580[0]_i_1_n_1 ));
  FDRE \and_ln23_reg_580_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln23_reg_580[0]_i_1_n_1 ),
        .Q(and_ln23_reg_580),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8088)) 
    \ap_CS_fsm[15]_i_1 
       (.I0(empty_12_reg_5840),
        .I1(\ap_CS_fsm[16]_i_2_n_1 ),
        .I2(empty_27_fu_467_p2),
        .I3(empty_12_fu_377_p2),
        .O(ap_NS_fsm[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[16]_i_1 
       (.I0(\ap_CS_fsm[16]_i_2_n_1 ),
        .I1(up[3]),
        .I2(\ap_CS_fsm_reg_n_1_[0] ),
        .I3(ap_start),
        .O(ap_NS_fsm[16]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \ap_CS_fsm[16]_i_2 
       (.I0(ap_CS_fsm_state16),
        .I1(ap_CS_fsm_state9153_in),
        .I2(\ap_CS_fsm[16]_i_3_n_1 ),
        .I3(\ap_CS_fsm[16]_i_4_n_1 ),
        .I4(grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1),
        .I5(grp_enqueue_dequeue_fram_fu_243_ap_start_reg0),
        .O(\ap_CS_fsm[16]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[16]_i_3 
       (.I0(data_ce0),
        .I1(ap_CS_fsm_state5),
        .O(\ap_CS_fsm[16]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ap_CS_fsm[16]_i_4 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state6),
        .I2(ap_CS_fsm_state17),
        .I3(ap_CS_fsm_state3),
        .O(\ap_CS_fsm[16]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[16]_i_5 
       (.I0(ap_CS_fsm_state7),
        .I1(ap_CS_fsm_state10),
        .I2(\ap_CS_fsm_reg_n_1_[13] ),
        .I3(ap_CS_fsm_state12),
        .O(grp_enqueue_dequeue_fram_fu_243_ap_start_reg0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm[16]_i_2_n_1 ),
        .I1(up[3]),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg_n_1_[0] ),
        .I4(s_class),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(\ap_CS_fsm[16]_i_2_n_1 ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(ap_start),
        .I3(up[3]),
        .I4(s_class),
        .I5(p_216_in),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(\i_0_reg_232[6]_i_7_n_1 ),
        .I1(\i_0_reg_232[6]_i_6_n_1 ),
        .I2(\i_0_reg_232[6]_i_5_n_1 ),
        .I3(\i_0_reg_232[6]_i_4_n_1 ),
        .O(p_216_in));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(empty_27_fu_467_p2),
        .I1(empty_12_fu_377_p2),
        .I2(empty_12_reg_5840),
        .I3(\ap_CS_fsm_reg_n_1_[0] ),
        .I4(ap_CS_fsm_state5),
        .O(ap_NS_fsm[3]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \ap_CS_fsm[3]_i_2__0 
       (.I0(tx_power_lvl[3]),
        .I1(tx_power_lvl[2]),
        .I2(tx_power_lvl[1]),
        .I3(tx_power_lvl[0]),
        .O(empty_27_fu_467_p2));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[4]_i_1__0 
       (.I0(data_ce0),
        .I1(ap_NS_fsm1165_out),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(data_address0[5]),
        .I1(data_address0[0]),
        .I2(data_address0[1]),
        .I3(data_ce0),
        .I4(\ap_CS_fsm[5]_i_3_n_1 ),
        .O(ap_NS_fsm1165_out));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ap_CS_fsm[5]_i_3 
       (.I0(data_address0[2]),
        .I1(data_address0[4]),
        .I2(data_address0[6]),
        .I3(data_address0[3]),
        .O(\ap_CS_fsm[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[8]_i_4 
       (.I0(ap_CS_fsm_state12),
        .I1(\ap_CS_fsm_reg_n_1_[13] ),
        .I2(ap_CS_fsm_state10),
        .I3(ap_CS_fsm_state7),
        .I4(ap_CS_fsm_state5),
        .I5(data_ce0),
        .O(\ap_CS_fsm[8]_i_4_n_1 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \ap_CS_fsm[8]_i_5 
       (.I0(up[1]),
        .I1(up[2]),
        .I2(up[3]),
        .O(\ap_CS_fsm[8]_i_5_n_1 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(ap_CS_fsm_state12),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[12]),
        .Q(ap_CS_fsm_state13),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[13]),
        .Q(\ap_CS_fsm_reg_n_1_[13] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[14]),
        .Q(ap_CS_fsm_state15),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[15]),
        .Q(ap_CS_fsm_state16),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[16]),
        .Q(ap_CS_fsm_state17),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(data_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9153_in),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst));
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT5 #(
    .INIT(32'hFFFF22E2)) 
    ap_ready_INST_0_i_2
       (.I0(ap_ready_INST_0_i_4_n_1),
        .I1(empty_31_reg_620),
        .I2(icmp_ln56_reg_648),
        .I3(medium_state_read_1_reg_652),
        .I4(icmp_ln41_reg_616),
        .O(ap_ready_INST_0_i_2_n_1));
  LUT6 #(
    .INIT(64'h44440F0044440000)) 
    ap_ready_INST_0_i_4
       (.I0(medium_state_read_2_reg_644),
        .I1(icmp_ln69_reg_640),
        .I2(medium_state_read_3_reg_636),
        .I3(icmp_ln80_reg_628),
        .I4(icmp_ln67_reg_624),
        .I5(icmp_ln82_reg_632),
        .O(ap_ready_INST_0_i_4_n_1));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \empty_12_reg_584[0]_i_1 
       (.I0(empty_12_fu_377_p2),
        .I1(empty_12_reg_5840),
        .I2(empty_12_reg_584),
        .O(\empty_12_reg_584[0]_i_1_n_1 ));
  FDRE \empty_12_reg_584_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\empty_12_reg_584[0]_i_1_n_1 ),
        .Q(empty_12_reg_584),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \empty_27_reg_588[0]_i_1 
       (.I0(empty_27_fu_467_p2),
        .I1(empty_12_fu_377_p2),
        .I2(empty_12_reg_5840),
        .I3(\empty_27_reg_588_reg_n_1_[0] ),
        .O(\empty_27_reg_588[0]_i_1_n_1 ));
  FDRE \empty_27_reg_588_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\empty_27_reg_588[0]_i_1_n_1 ),
        .Q(\empty_27_reg_588_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \empty_31_reg_620_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_compose_mac_frame_fu_271_n_10),
        .Q(empty_31_reg_620),
        .R(1'b0));
  bd_0_hls_inst_0_compose_mac_frame grp_compose_mac_frame_fu_271
       (.D({ap_NS_fsm[13],ap_NS_fsm[11],ap_NS_fsm[9],ap_NS_fsm[6:5]}),
        .Q({ap_CS_fsm_state6,data_ce0}),
        .ap_NS_fsm1165_out(ap_NS_fsm1165_out),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .empty_31_reg_620(empty_31_reg_620),
        .grp_compose_mac_frame_fu_271_ap_start_reg(grp_compose_mac_frame_fu_271_ap_start_reg),
        .grp_compose_mac_frame_fu_271_ap_start_reg_reg(ap_NS_fsm_0),
        .icmp_ln41_reg_616(icmp_ln41_reg_616),
        .icmp_ln67_reg_624(icmp_ln67_reg_624),
        .icmp_ln80_reg_628(icmp_ln80_reg_628),
        .\k_0_reg_539_reg[0]_0 (grp_compose_mac_frame_fu_271_n_14),
        .source_addr_mac_address0(\^source_addr_mac_address0 ),
        .source_addr_mac_ce0(source_addr_mac_ce0),
        .up(up),
        .\up[3]_0 (grp_compose_mac_frame_fu_271_n_13),
        .up_0_sp_1(grp_compose_mac_frame_fu_271_n_10),
        .up_1_sp_1(grp_compose_mac_frame_fu_271_n_12),
        .up_3_sp_1(grp_compose_mac_frame_fu_271_n_11));
  FDRE #(
    .INIT(1'b0)) 
    grp_compose_mac_frame_fu_271_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_compose_mac_frame_fu_271_n_14),
        .Q(grp_compose_mac_frame_fu_271_ap_start_reg),
        .R(ap_rst));
  bd_0_hls_inst_0_enqueue_dequeue_fram grp_enqueue_dequeue_fram_fu_243
       (.D({ap_NS_fsm[14],ap_NS_fsm[12],ap_NS_fsm[10],ap_NS_fsm[8:7]}),
        .Q({ap_CS_fsm_state15,\ap_CS_fsm_reg_n_1_[13] ,ap_CS_fsm_state13,ap_CS_fsm_state12,ap_CS_fsm_state11,ap_CS_fsm_state10,ap_CS_fsm_state9153_in,ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6,ap_CS_fsm_state3,\ap_CS_fsm_reg_n_1_[0] }),
        .\ap_CS_fsm_reg[10] (grp_enqueue_dequeue_fram_fu_243_n_11),
        .\ap_CS_fsm_reg[12] (grp_enqueue_dequeue_fram_fu_243_n_10),
        .\ap_CS_fsm_reg[14] (grp_enqueue_dequeue_fram_fu_243_n_13),
        .\ap_CS_fsm_reg[1]_0 (grp_enqueue_dequeue_fram_fu_243_n_15),
        .\ap_CS_fsm_reg[7]_0 (grp_enqueue_dequeue_fram_fu_243_n_12),
        .\ap_CS_fsm_reg[8]_0 (ap_ready_INST_0_i_2_n_1),
        .\ap_CS_fsm_reg[8]_1 (grp_random_int_gen_fu_281_n_2),
        .\ap_CS_fsm_reg[8]_2 (\ap_CS_fsm[8]_i_4_n_1 ),
        .\ap_CS_fsm_reg[8]_3 (ap_NS_fsm_0),
        .\ap_CS_fsm_reg[8]_4 (\ap_CS_fsm[8]_i_5_n_1 ),
        .\ap_CS_fsm_reg[9]_0 (grp_enqueue_dequeue_fram_fu_243_n_14),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .grp_enqueue_dequeue_fram_fu_243_ap_start_reg(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .grp_random_int_gen_fu_281_ap_start_reg(grp_random_int_gen_fu_281_ap_start_reg),
        .grp_random_int_gen_fu_281_ap_start_reg_reg(grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1),
        .grp_random_int_gen_fu_281_ap_start_reg_reg_0(grp_random_int_gen_fu_281_ap_ready),
        .icmp_ln43_reg_656(icmp_ln43_reg_656),
        .icmp_ln56_reg_648(icmp_ln56_reg_648),
        .icmp_ln69_reg_640(icmp_ln69_reg_640),
        .icmp_ln82_reg_632(icmp_ln82_reg_632),
        .medium_state(medium_state),
        .\medium_state[0]_0 (grp_enqueue_dequeue_fram_fu_243_n_7),
        .\medium_state[0]_1 (grp_enqueue_dequeue_fram_fu_243_n_8),
        .\medium_state[0]_2 (grp_enqueue_dequeue_fram_fu_243_n_9),
        .medium_state_0_sp_1(grp_enqueue_dequeue_fram_fu_243_n_6),
        .medium_state_read_1_reg_652(medium_state_read_1_reg_652),
        .medium_state_read_2_reg_644(medium_state_read_2_reg_644),
        .medium_state_read_3_reg_636(medium_state_read_3_reg_636),
        .medium_state_read_reg_660(medium_state_read_reg_660));
  FDRE #(
    .INIT(1'b0)) 
    grp_enqueue_dequeue_fram_fu_243_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_14),
        .Q(grp_enqueue_dequeue_fram_fu_243_ap_start_reg),
        .R(ap_rst));
  bd_0_hls_inst_0_random_int_gen grp_random_int_gen_fu_281
       (.D(ap_NS_fsm[0]),
        .Q({ap_CS_fsm_state9153_in,\ap_CS_fsm_reg_n_1_[0] }),
        .and_ln23_reg_580(and_ln23_reg_580),
        .\ap_CS_fsm[8]_i_3_0 (\empty_27_reg_588_reg_n_1_[0] ),
        .\ap_CS_fsm_reg[0]_0 (ap_ready_INST_0_i_2_n_1),
        .\ap_CS_fsm_reg[1]_0 (grp_random_int_gen_fu_281_ap_ready),
        .ap_clk(ap_clk),
        .ap_ready(ap_ready),
        .ap_ready_0(\tmp_reg_576_reg_n_1_[0] ),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .empty_12_reg_584(empty_12_reg_584),
        .grp_random_int_gen_fu_281_ap_start_reg(grp_random_int_gen_fu_281_ap_start_reg),
        .icmp_ln41_reg_616(icmp_ln41_reg_616),
        .icmp_ln43_reg_656(icmp_ln43_reg_656),
        .\icmp_ln43_reg_656_reg[0] (grp_random_int_gen_fu_281_n_2),
        .medium_state_read_reg_660(medium_state_read_reg_660),
        .s_class(s_class));
  LUT4 #(
    .INIT(16'h0001)) 
    grp_random_int_gen_fu_281_ap_start_reg_i_2
       (.I0(ap_CS_fsm_state15),
        .I1(ap_CS_fsm_state13),
        .I2(ap_CS_fsm_state11),
        .I3(ap_CS_fsm_state8),
        .O(grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    grp_random_int_gen_fu_281_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_15),
        .Q(grp_random_int_gen_fu_281_ap_start_reg),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h0808080808080880)) 
    \i_0_reg_232[6]_i_1 
       (.I0(empty_12_reg_5840),
        .I1(empty_12_fu_377_p2),
        .I2(tx_power_lvl[3]),
        .I3(tx_power_lvl[2]),
        .I4(tx_power_lvl[1]),
        .I5(tx_power_lvl[0]),
        .O(ap_NS_fsm1169_out));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \i_0_reg_232[6]_i_2 
       (.I0(\i_0_reg_232[6]_i_4_n_1 ),
        .I1(\i_0_reg_232[6]_i_5_n_1 ),
        .I2(\i_0_reg_232[6]_i_6_n_1 ),
        .I3(\i_0_reg_232[6]_i_7_n_1 ),
        .I4(\i_0_reg_232[6]_i_8_n_1 ),
        .O(empty_12_reg_5840));
  LUT5 #(
    .INIT(32'h00006660)) 
    \i_0_reg_232[6]_i_3 
       (.I0(d_rate[3]),
        .I1(d_rate[1]),
        .I2(d_rate[4]),
        .I3(d_rate[2]),
        .I4(\i_0_reg_232[6]_i_9_n_1 ),
        .O(empty_12_fu_377_p2));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \i_0_reg_232[6]_i_4 
       (.I0(c_identifier_channel_number[1]),
        .I1(c_identifier_channel_number[0]),
        .I2(c_identifier_operating_class[6]),
        .I3(c_identifier_channel_number[3]),
        .O(\i_0_reg_232[6]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \i_0_reg_232[6]_i_5 
       (.I0(c_identifier_channel_number[5]),
        .I1(c_identifier_operating_class[4]),
        .I2(c_identifier_operating_class[1]),
        .I3(c_identifier_operating_class[5]),
        .O(\i_0_reg_232[6]_i_5_n_1 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \i_0_reg_232[6]_i_6 
       (.I0(c_identifier_operating_class[2]),
        .I1(c_identifier_channel_number[4]),
        .I2(c_identifier_channel_number[7]),
        .I3(c_identifier_channel_number[6]),
        .O(\i_0_reg_232[6]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \i_0_reg_232[6]_i_7 
       (.I0(c_identifier_channel_number[2]),
        .I1(c_identifier_operating_class[3]),
        .I2(c_identifier_operating_class[0]),
        .I3(c_identifier_operating_class[7]),
        .O(\i_0_reg_232[6]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \i_0_reg_232[6]_i_8 
       (.I0(\ap_CS_fsm_reg_n_1_[0] ),
        .I1(ap_start),
        .I2(up[3]),
        .I3(s_class),
        .O(\i_0_reg_232[6]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \i_0_reg_232[6]_i_9 
       (.I0(d_rate[5]),
        .I1(d_rate[6]),
        .I2(d_rate[0]),
        .I3(d_rate[2]),
        .I4(d_rate[1]),
        .I5(d_rate[4]),
        .O(\i_0_reg_232[6]_i_9_n_1 ));
  FDRE \i_0_reg_232_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[0]),
        .Q(data_address0[0]),
        .R(ap_NS_fsm1169_out));
  FDRE \i_0_reg_232_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[1]),
        .Q(data_address0[1]),
        .R(ap_NS_fsm1169_out));
  FDRE \i_0_reg_232_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[2]),
        .Q(data_address0[2]),
        .R(ap_NS_fsm1169_out));
  FDRE \i_0_reg_232_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[3]),
        .Q(data_address0[3]),
        .R(ap_NS_fsm1169_out));
  FDRE \i_0_reg_232_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[4]),
        .Q(data_address0[4]),
        .R(ap_NS_fsm1169_out));
  FDRE \i_0_reg_232_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[5]),
        .Q(data_address0[5]),
        .R(ap_NS_fsm1169_out));
  FDRE \i_0_reg_232_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_595[6]),
        .Q(data_address0[6]),
        .R(ap_NS_fsm1169_out));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_595[0]_i_1 
       (.I0(data_address0[0]),
        .O(i_fu_479_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_595[1]_i_1 
       (.I0(data_address0[1]),
        .I1(data_address0[0]),
        .O(i_fu_479_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_595[2]_i_1 
       (.I0(data_address0[2]),
        .I1(data_address0[1]),
        .I2(data_address0[0]),
        .O(i_fu_479_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_595[3]_i_1 
       (.I0(data_address0[3]),
        .I1(data_address0[0]),
        .I2(data_address0[1]),
        .I3(data_address0[2]),
        .O(i_fu_479_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_595[4]_i_1 
       (.I0(data_address0[4]),
        .I1(data_address0[2]),
        .I2(data_address0[1]),
        .I3(data_address0[0]),
        .I4(data_address0[3]),
        .O(i_fu_479_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \i_reg_595[5]_i_1 
       (.I0(data_address0[3]),
        .I1(data_address0[0]),
        .I2(data_address0[1]),
        .I3(data_address0[2]),
        .I4(data_address0[4]),
        .I5(data_address0[5]),
        .O(i_fu_479_p2[5]));
  LUT3 #(
    .INIT(8'h9A)) 
    \i_reg_595[6]_i_1 
       (.I0(data_address0[6]),
        .I1(\i_reg_595[6]_i_2_n_1 ),
        .I2(data_address0[5]),
        .O(i_fu_479_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i_reg_595[6]_i_2 
       (.I0(data_address0[3]),
        .I1(data_address0[0]),
        .I2(data_address0[1]),
        .I3(data_address0[2]),
        .I4(data_address0[4]),
        .O(\i_reg_595[6]_i_2_n_1 ));
  FDRE \i_reg_595_reg[0] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[0]),
        .Q(i_reg_595[0]),
        .R(1'b0));
  FDRE \i_reg_595_reg[1] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[1]),
        .Q(i_reg_595[1]),
        .R(1'b0));
  FDRE \i_reg_595_reg[2] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[2]),
        .Q(i_reg_595[2]),
        .R(1'b0));
  FDRE \i_reg_595_reg[3] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[3]),
        .Q(i_reg_595[3]),
        .R(1'b0));
  FDRE \i_reg_595_reg[4] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[4]),
        .Q(i_reg_595[4]),
        .R(1'b0));
  FDRE \i_reg_595_reg[5] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[5]),
        .Q(i_reg_595[5]),
        .R(1'b0));
  FDRE \i_reg_595_reg[6] 
       (.C(ap_clk),
        .CE(data_ce0),
        .D(i_fu_479_p2[6]),
        .Q(i_reg_595[6]),
        .R(1'b0));
  FDRE \icmp_ln41_reg_616_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_compose_mac_frame_fu_271_n_11),
        .Q(icmp_ln41_reg_616),
        .R(1'b0));
  FDRE \icmp_ln43_reg_656_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_13),
        .Q(icmp_ln43_reg_656),
        .R(1'b0));
  FDRE \icmp_ln56_reg_648_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_10),
        .Q(icmp_ln56_reg_648),
        .R(1'b0));
  FDRE \icmp_ln67_reg_624_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_compose_mac_frame_fu_271_n_12),
        .Q(icmp_ln67_reg_624),
        .R(1'b0));
  FDRE \icmp_ln69_reg_640_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_11),
        .Q(icmp_ln69_reg_640),
        .R(1'b0));
  FDRE \icmp_ln80_reg_628_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_compose_mac_frame_fu_271_n_13),
        .Q(icmp_ln80_reg_628),
        .R(1'b0));
  FDRE \icmp_ln82_reg_632_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_12),
        .Q(icmp_ln82_reg_632),
        .R(1'b0));
  FDRE \medium_state_read_1_reg_652_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_6),
        .Q(medium_state_read_1_reg_652),
        .R(1'b0));
  FDRE \medium_state_read_2_reg_644_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_7),
        .Q(medium_state_read_2_reg_644),
        .R(1'b0));
  FDRE \medium_state_read_3_reg_636_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_8),
        .Q(medium_state_read_3_reg_636),
        .R(1'b0));
  FDRE \medium_state_read_reg_660_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_enqueue_dequeue_fram_fu_243_n_9),
        .Q(medium_state_read_reg_660),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \tmp_reg_576[0]_i_1 
       (.I0(\tmp_reg_576_reg_n_1_[0] ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(ap_start),
        .I3(up[3]),
        .O(\tmp_reg_576[0]_i_1_n_1 ));
  FDRE \tmp_reg_576_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_reg_576[0]_i_1_n_1 ),
        .Q(\tmp_reg_576_reg_n_1_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "random_int_gen" *) 
module bd_0_hls_inst_0_random_int_gen
   (D,
    \icmp_ln43_reg_656_reg[0] ,
    ap_ready,
    \ap_CS_fsm_reg[1]_0 ,
    ap_start,
    Q,
    \ap_CS_fsm_reg[0]_0 ,
    icmp_ln43_reg_656,
    medium_state_read_reg_660,
    icmp_ln41_reg_616,
    ap_ready_0,
    s_class,
    empty_12_reg_584,
    grp_random_int_gen_fu_281_ap_start_reg,
    and_ln23_reg_580,
    \ap_CS_fsm[8]_i_3_0 ,
    ap_rst,
    ap_clk);
  output [0:0]D;
  output \icmp_ln43_reg_656_reg[0] ;
  output ap_ready;
  output [0:0]\ap_CS_fsm_reg[1]_0 ;
  input ap_start;
  input [1:0]Q;
  input \ap_CS_fsm_reg[0]_0 ;
  input icmp_ln43_reg_656;
  input medium_state_read_reg_660;
  input icmp_ln41_reg_616;
  input ap_ready_0;
  input [0:0]s_class;
  input empty_12_reg_584;
  input grp_random_int_gen_fu_281_ap_start_reg;
  input and_ln23_reg_580;
  input \ap_CS_fsm[8]_i_3_0 ;
  input ap_rst;
  input ap_clk;

  wire [0:0]D;
  wire [1:0]Q;
  wire and_ln23_reg_580;
  wire \ap_CS_fsm[8]_i_3_0 ;
  wire \ap_CS_fsm[8]_i_6_n_1 ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg_n_1_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_ready;
  wire ap_ready_0;
  wire ap_ready_INST_0_i_1_n_1;
  wire ap_ready_INST_0_i_3_n_1;
  wire ap_rst;
  wire ap_start;
  wire empty_12_reg_584;
  wire grp_random_int_gen_fu_281_ap_start_reg;
  wire icmp_ln41_reg_616;
  wire icmp_ln43_reg_656;
  wire \icmp_ln43_reg_656_reg[0] ;
  wire medium_state_read_reg_660;
  wire [0:0]s_class;

  LUT5 #(
    .INIT(32'h5555C0CC)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_start),
        .I1(Q[1]),
        .I2(\icmp_ln43_reg_656_reg[0] ),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(Q[0]),
        .O(D));
  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[0]_i_1__2 
       (.I0(grp_random_int_gen_fu_281_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(grp_random_int_gen_fu_281_ap_start_reg),
        .O(ap_NS_fsm[1]));
  LUT5 #(
    .INIT(32'hFFFFFFD0)) 
    \ap_CS_fsm[8]_i_3 
       (.I0(icmp_ln43_reg_656),
        .I1(medium_state_read_reg_660),
        .I2(icmp_ln41_reg_616),
        .I3(ap_ready_INST_0_i_3_n_1),
        .I4(\ap_CS_fsm[8]_i_6_n_1 ),
        .O(\icmp_ln43_reg_656_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ap_CS_fsm[8]_i_6 
       (.I0(empty_12_reg_584),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .I2(s_class),
        .I3(ap_ready_0),
        .O(\ap_CS_fsm[8]_i_6_n_1 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_1_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg[1]_0 ),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'hAAAAA200AAAAAAAA)) 
    ap_ready_INST_0
       (.I0(Q[1]),
        .I1(icmp_ln43_reg_656),
        .I2(medium_state_read_reg_660),
        .I3(icmp_ln41_reg_616),
        .I4(ap_ready_INST_0_i_1_n_1),
        .I5(\ap_CS_fsm_reg[0]_0 ),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    ap_ready_INST_0_i_1
       (.I0(ap_ready_0),
        .I1(s_class),
        .I2(\ap_CS_fsm_reg[1]_0 ),
        .I3(empty_12_reg_584),
        .I4(ap_ready_INST_0_i_3_n_1),
        .O(ap_ready_INST_0_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_ready_INST_0_i_3
       (.I0(grp_random_int_gen_fu_281_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_1_[0] ),
        .I2(and_ln23_reg_580),
        .I3(\ap_CS_fsm[8]_i_3_0 ),
        .O(ap_ready_INST_0_i_3_n_1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
