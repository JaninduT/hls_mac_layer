//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Nov 19 12:27:22 2020
//Host        : DESKTOP-V5A9UPS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C_IDENTIFIER_CHANNEL_NUMBER DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C_IDENTIFIER_CHANNEL_NUMBER, LAYERED_METADATA undef" *) input [7:0]c_identifier_channel_number;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C_IDENTIFIER_OPERATING_CLASS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C_IDENTIFIER_OPERATING_CLASS, LAYERED_METADATA undef" *) input [7:0]c_identifier_operating_class;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CURRENT_TXOP_HOLDER_I DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CURRENT_TXOP_HOLDER_I, LAYERED_METADATA undef" *) input [2:0]current_txop_holder_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CURRENT_TXOP_HOLDER_O DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CURRENT_TXOP_HOLDER_O, LAYERED_METADATA undef" *) output [2:0]current_txop_holder_o;
  output current_txop_holder_o_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.D_RATE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.D_RATE, LAYERED_METADATA undef" *) input [6:0]d_rate;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_ADDRESS0, LAYERED_METADATA undef" *) output [6:0]data_address0;
  output data_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA_Q0, LAYERED_METADATA undef" *) input [7:0]data_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_ADDR_MAC_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_ADDR_MAC_ADDRESS0, LAYERED_METADATA undef" *) output [2:0]dest_addr_mac_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_ADDR_MAC_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_ADDR_MAC_ADDRESS1, LAYERED_METADATA undef" *) output [2:0]dest_addr_mac_address1;
  output dest_addr_mac_ce0;
  output dest_addr_mac_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_ADDR_MAC_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_ADDR_MAC_D0, LAYERED_METADATA undef" *) output [7:0]dest_addr_mac_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_ADDR_MAC_D1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_ADDR_MAC_D1, LAYERED_METADATA undef" *) output [7:0]dest_addr_mac_d1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_ADDR_MAC_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_ADDR_MAC_Q0, LAYERED_METADATA undef" *) input [7:0]dest_addr_mac_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_ADDR_MAC_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_ADDR_MAC_Q1, LAYERED_METADATA undef" *) input [7:0]dest_addr_mac_q1;
  output dest_addr_mac_we0;
  output dest_addr_mac_we1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.EXPIRY_TIME DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.EXPIRY_TIME, LAYERED_METADATA undef" *) input [63:0]expiry_time;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAC_FRAME_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAC_FRAME_ADDRESS0, LAYERED_METADATA undef" *) output [6:0]mac_frame_address0;
  output mac_frame_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAC_FRAME_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAC_FRAME_D0, LAYERED_METADATA undef" *) output [7:0]mac_frame_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MAC_FRAME_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MAC_FRAME_Q0, LAYERED_METADATA undef" *) input [7:0]mac_frame_q0;
  output mac_frame_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MEDIUM_STATE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MEDIUM_STATE, LAYERED_METADATA undef" *) input [0:0]medium_state;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVED_FRAME_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVED_FRAME_ADDRESS0, LAYERED_METADATA undef" *) output [6:0]received_frame_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVED_FRAME_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVED_FRAME_ADDRESS1, LAYERED_METADATA undef" *) output [6:0]received_frame_address1;
  output received_frame_ce0;
  output received_frame_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVED_FRAME_D0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVED_FRAME_D0, LAYERED_METADATA undef" *) output [7:0]received_frame_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVED_FRAME_D1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVED_FRAME_D1, LAYERED_METADATA undef" *) output [7:0]received_frame_d1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVED_FRAME_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVED_FRAME_Q0, LAYERED_METADATA undef" *) input [7:0]received_frame_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVED_FRAME_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVED_FRAME_Q1, LAYERED_METADATA undef" *) input [7:0]received_frame_q1;
  output received_frame_we0;
  output received_frame_we1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.S_CLASS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.S_CLASS, LAYERED_METADATA undef" *) input [0:0]s_class;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SOURCE_ADDR_MAC_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SOURCE_ADDR_MAC_ADDRESS0, LAYERED_METADATA undef" *) output [2:0]source_addr_mac_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SOURCE_ADDR_MAC_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SOURCE_ADDR_MAC_ADDRESS1, LAYERED_METADATA undef" *) output [2:0]source_addr_mac_address1;
  output source_addr_mac_ce0;
  output source_addr_mac_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SOURCE_ADDR_MAC_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SOURCE_ADDR_MAC_Q0, LAYERED_METADATA undef" *) input [7:0]source_addr_mac_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SOURCE_ADDR_MAC_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SOURCE_ADDR_MAC_Q1, LAYERED_METADATA undef" *) input [7:0]source_addr_mac_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.T_SLOT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.T_SLOT, LAYERED_METADATA undef" *) input [1:0]t_slot;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TX_POWER_LVL DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TX_POWER_LVL, LAYERED_METADATA undef" *) input [3:0]tx_power_lvl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.UP DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.UP, LAYERED_METADATA undef" *) input [3:0]up;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [7:0]c_identifier_channel_number_0_1;
  wire [7:0]c_identifier_operating_class_0_1;
  wire [2:0]current_txop_holder_i_0_1;
  wire [6:0]d_rate_0_1;
  wire [7:0]data_q0_0_1;
  wire [7:0]dest_addr_mac_q0_0_1;
  wire [7:0]dest_addr_mac_q1_0_1;
  wire [63:0]expiry_time_0_1;
  wire [2:0]hls_inst_current_txop_holder_o;
  wire hls_inst_current_txop_holder_o_ap_vld;
  wire [6:0]hls_inst_data_address0;
  wire hls_inst_data_ce0;
  wire [2:0]hls_inst_dest_addr_mac_address0;
  wire [2:0]hls_inst_dest_addr_mac_address1;
  wire hls_inst_dest_addr_mac_ce0;
  wire hls_inst_dest_addr_mac_ce1;
  wire [7:0]hls_inst_dest_addr_mac_d0;
  wire [7:0]hls_inst_dest_addr_mac_d1;
  wire hls_inst_dest_addr_mac_we0;
  wire hls_inst_dest_addr_mac_we1;
  wire [6:0]hls_inst_mac_frame_address0;
  wire hls_inst_mac_frame_ce0;
  wire [7:0]hls_inst_mac_frame_d0;
  wire hls_inst_mac_frame_we0;
  wire [6:0]hls_inst_received_frame_address0;
  wire [6:0]hls_inst_received_frame_address1;
  wire hls_inst_received_frame_ce0;
  wire hls_inst_received_frame_ce1;
  wire [7:0]hls_inst_received_frame_d0;
  wire [7:0]hls_inst_received_frame_d1;
  wire hls_inst_received_frame_we0;
  wire hls_inst_received_frame_we1;
  wire [2:0]hls_inst_source_addr_mac_address0;
  wire [2:0]hls_inst_source_addr_mac_address1;
  wire hls_inst_source_addr_mac_ce0;
  wire hls_inst_source_addr_mac_ce1;
  wire [7:0]mac_frame_q0_0_1;
  wire [0:0]medium_state_0_1;
  wire [7:0]received_frame_q0_0_1;
  wire [7:0]received_frame_q1_0_1;
  wire [0:0]s_class_0_1;
  wire [7:0]source_addr_mac_q0_0_1;
  wire [7:0]source_addr_mac_q1_0_1;
  wire [1:0]t_slot_0_1;
  wire [3:0]tx_power_lvl_0_1;
  wire [3:0]up_0_1;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign c_identifier_channel_number_0_1 = c_identifier_channel_number[7:0];
  assign c_identifier_operating_class_0_1 = c_identifier_operating_class[7:0];
  assign current_txop_holder_i_0_1 = current_txop_holder_i[2:0];
  assign current_txop_holder_o[2:0] = hls_inst_current_txop_holder_o;
  assign current_txop_holder_o_ap_vld = hls_inst_current_txop_holder_o_ap_vld;
  assign d_rate_0_1 = d_rate[6:0];
  assign data_address0[6:0] = hls_inst_data_address0;
  assign data_ce0 = hls_inst_data_ce0;
  assign data_q0_0_1 = data_q0[7:0];
  assign dest_addr_mac_address0[2:0] = hls_inst_dest_addr_mac_address0;
  assign dest_addr_mac_address1[2:0] = hls_inst_dest_addr_mac_address1;
  assign dest_addr_mac_ce0 = hls_inst_dest_addr_mac_ce0;
  assign dest_addr_mac_ce1 = hls_inst_dest_addr_mac_ce1;
  assign dest_addr_mac_d0[7:0] = hls_inst_dest_addr_mac_d0;
  assign dest_addr_mac_d1[7:0] = hls_inst_dest_addr_mac_d1;
  assign dest_addr_mac_q0_0_1 = dest_addr_mac_q0[7:0];
  assign dest_addr_mac_q1_0_1 = dest_addr_mac_q1[7:0];
  assign dest_addr_mac_we0 = hls_inst_dest_addr_mac_we0;
  assign dest_addr_mac_we1 = hls_inst_dest_addr_mac_we1;
  assign expiry_time_0_1 = expiry_time[63:0];
  assign mac_frame_address0[6:0] = hls_inst_mac_frame_address0;
  assign mac_frame_ce0 = hls_inst_mac_frame_ce0;
  assign mac_frame_d0[7:0] = hls_inst_mac_frame_d0;
  assign mac_frame_q0_0_1 = mac_frame_q0[7:0];
  assign mac_frame_we0 = hls_inst_mac_frame_we0;
  assign medium_state_0_1 = medium_state[0];
  assign received_frame_address0[6:0] = hls_inst_received_frame_address0;
  assign received_frame_address1[6:0] = hls_inst_received_frame_address1;
  assign received_frame_ce0 = hls_inst_received_frame_ce0;
  assign received_frame_ce1 = hls_inst_received_frame_ce1;
  assign received_frame_d0[7:0] = hls_inst_received_frame_d0;
  assign received_frame_d1[7:0] = hls_inst_received_frame_d1;
  assign received_frame_q0_0_1 = received_frame_q0[7:0];
  assign received_frame_q1_0_1 = received_frame_q1[7:0];
  assign received_frame_we0 = hls_inst_received_frame_we0;
  assign received_frame_we1 = hls_inst_received_frame_we1;
  assign s_class_0_1 = s_class[0];
  assign source_addr_mac_address0[2:0] = hls_inst_source_addr_mac_address0;
  assign source_addr_mac_address1[2:0] = hls_inst_source_addr_mac_address1;
  assign source_addr_mac_ce0 = hls_inst_source_addr_mac_ce0;
  assign source_addr_mac_ce1 = hls_inst_source_addr_mac_ce1;
  assign source_addr_mac_q0_0_1 = source_addr_mac_q0[7:0];
  assign source_addr_mac_q1_0_1 = source_addr_mac_q1[7:0];
  assign t_slot_0_1 = t_slot[1:0];
  assign tx_power_lvl_0_1 = tx_power_lvl[3:0];
  assign up_0_1 = up[3:0];
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .c_identifier_channel_number(c_identifier_channel_number_0_1),
        .c_identifier_operating_class(c_identifier_operating_class_0_1),
        .current_txop_holder_i(current_txop_holder_i_0_1),
        .current_txop_holder_o(hls_inst_current_txop_holder_o),
        .current_txop_holder_o_ap_vld(hls_inst_current_txop_holder_o_ap_vld),
        .d_rate(d_rate_0_1),
        .data_address0(hls_inst_data_address0),
        .data_ce0(hls_inst_data_ce0),
        .data_q0(data_q0_0_1),
        .dest_addr_mac_address0(hls_inst_dest_addr_mac_address0),
        .dest_addr_mac_address1(hls_inst_dest_addr_mac_address1),
        .dest_addr_mac_ce0(hls_inst_dest_addr_mac_ce0),
        .dest_addr_mac_ce1(hls_inst_dest_addr_mac_ce1),
        .dest_addr_mac_d0(hls_inst_dest_addr_mac_d0),
        .dest_addr_mac_d1(hls_inst_dest_addr_mac_d1),
        .dest_addr_mac_q0(dest_addr_mac_q0_0_1),
        .dest_addr_mac_q1(dest_addr_mac_q1_0_1),
        .dest_addr_mac_we0(hls_inst_dest_addr_mac_we0),
        .dest_addr_mac_we1(hls_inst_dest_addr_mac_we1),
        .expiry_time(expiry_time_0_1),
        .mac_frame_address0(hls_inst_mac_frame_address0),
        .mac_frame_ce0(hls_inst_mac_frame_ce0),
        .mac_frame_d0(hls_inst_mac_frame_d0),
        .mac_frame_q0(mac_frame_q0_0_1),
        .mac_frame_we0(hls_inst_mac_frame_we0),
        .medium_state(medium_state_0_1),
        .received_frame_address0(hls_inst_received_frame_address0),
        .received_frame_address1(hls_inst_received_frame_address1),
        .received_frame_ce0(hls_inst_received_frame_ce0),
        .received_frame_ce1(hls_inst_received_frame_ce1),
        .received_frame_d0(hls_inst_received_frame_d0),
        .received_frame_d1(hls_inst_received_frame_d1),
        .received_frame_q0(received_frame_q0_0_1),
        .received_frame_q1(received_frame_q1_0_1),
        .received_frame_we0(hls_inst_received_frame_we0),
        .received_frame_we1(hls_inst_received_frame_we1),
        .s_class(s_class_0_1),
        .source_addr_mac_address0(hls_inst_source_addr_mac_address0),
        .source_addr_mac_address1(hls_inst_source_addr_mac_address1),
        .source_addr_mac_ce0(hls_inst_source_addr_mac_ce0),
        .source_addr_mac_ce1(hls_inst_source_addr_mac_ce1),
        .source_addr_mac_q0(source_addr_mac_q0_0_1),
        .source_addr_mac_q1(source_addr_mac_q1_0_1),
        .t_slot(t_slot_0_1),
        .tx_power_lvl(tx_power_lvl_0_1),
        .up(up_0_1));
endmodule
