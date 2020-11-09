-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Nov  8 21:13:01 2020
-- Host        : DESKTOP-V5A9UPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FYP/HLS/MAC_SAP/fyp/solution1/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    source_addr_mac_ce0 : out STD_LOGIC;
    source_addr_mac_ce1 : out STD_LOGIC;
    dest_addr_mac_ce0 : out STD_LOGIC;
    dest_addr_mac_we0 : out STD_LOGIC;
    dest_addr_mac_ce1 : out STD_LOGIC;
    dest_addr_mac_we1 : out STD_LOGIC;
    data_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    source_addr_mac_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    source_addr_mac_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    source_addr_mac_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    source_addr_mac_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_addr_mac_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_addr_mac_d1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_address0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    up : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_class : in STD_LOGIC_VECTOR ( 0 to 0 );
    c_identifier_operating_class : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c_identifier_channel_number : in STD_LOGIC_VECTOR ( 7 downto 0 );
    t_slot : in STD_LOGIC_VECTOR ( 1 downto 0 );
    d_rate : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx_power_lvl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    expiry_time : in STD_LOGIC_VECTOR ( 63 downto 0 );
    medium_state : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "source_addr_mac_ce0,source_addr_mac_ce1,dest_addr_mac_ce0,dest_addr_mac_we0,dest_addr_mac_ce1,dest_addr_mac_we1,data_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,source_addr_mac_address0[2:0],source_addr_mac_q0[7:0],source_addr_mac_address1[2:0],source_addr_mac_q1[7:0],dest_addr_mac_address0[2:0],dest_addr_mac_d0[7:0],dest_addr_mac_q0[7:0],dest_addr_mac_address1[2:0],dest_addr_mac_d1[7:0],dest_addr_mac_q1[7:0],data_address0[6:0],data_q0[7:0],up[3:0],s_class[0:0],c_identifier_operating_class[7:0],c_identifier_channel_number[7:0],t_slot[1:0],d_rate[6:0],tx_power_lvl[3:0],expiry_time[63:0],medium_state[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ma_unitdatax_request,Vivado 2019.2";
begin
end;
