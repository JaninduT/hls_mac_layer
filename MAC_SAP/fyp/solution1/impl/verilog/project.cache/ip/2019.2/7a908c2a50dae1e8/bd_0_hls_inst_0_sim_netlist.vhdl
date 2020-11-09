-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sun Nov  8 21:13:00 2020
-- Host        : DESKTOP-V5A9UPS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compose_mac_frame is
  port (
    grp_compose_mac_frame_fu_271_ap_start_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    source_addr_mac_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    source_addr_mac_ce0 : out STD_LOGIC;
    up_0_sp_1 : out STD_LOGIC;
    up_3_sp_1 : out STD_LOGIC;
    up_1_sp_1 : out STD_LOGIC;
    \up[3]_0\ : out STD_LOGIC;
    \k_0_reg_539_reg[0]_0\ : out STD_LOGIC;
    up : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_NS_fsm1165_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_compose_mac_frame_fu_271_ap_start_reg : in STD_LOGIC;
    empty_31_reg_620 : in STD_LOGIC;
    icmp_ln41_reg_616 : in STD_LOGIC;
    icmp_ln67_reg_624 : in STD_LOGIC;
    icmp_ln80_reg_628 : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compose_mac_frame;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compose_mac_frame is
  signal \ap_CS_fsm[13]_i_2_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[18]_i_2_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[18]_i_3_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2__0_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_3_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_4_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_5_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_1_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state13 : STD_LOGIC;
  signal ap_CS_fsm_state15 : STD_LOGIC;
  signal ap_CS_fsm_state16 : STD_LOGIC;
  signal ap_CS_fsm_state17 : STD_LOGIC;
  signal ap_CS_fsm_state18 : STD_LOGIC;
  signal ap_CS_fsm_state19 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm11_out : STD_LOGIC;
  signal crc_fu_1381 : STD_LOGIC;
  signal \^grp_compose_mac_frame_fu_271_ap_start_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal grp_compose_mac_frame_fu_271_data_address0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal grp_compose_mac_frame_fu_271_data_ce0 : STD_LOGIC;
  signal i_0_i_reg_517 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \i_0_i_reg_517[6]_i_3_n_1\ : STD_LOGIC;
  signal i_fu_635_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_reg_827 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \i_reg_827[6]_i_2_n_1\ : STD_LOGIC;
  signal j_0_i_reg_528 : STD_LOGIC;
  signal j_0_i_reg_528_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal j_0_reg_505 : STD_LOGIC;
  signal j_1_fu_677_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal j_fu_602_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal j_reg_806 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \j_reg_806[6]_i_2_n_1\ : STD_LOGIC;
  signal \k_0_reg_539[0]_i_1_n_1\ : STD_LOGIC;
  signal \k_0_reg_539[1]_i_1_n_1\ : STD_LOGIC;
  signal \k_0_reg_539[2]_i_1_n_1\ : STD_LOGIC;
  signal \k_0_reg_539_reg_n_1_[2]\ : STD_LOGIC;
  signal \^source_addr_mac_address0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_0_sn_1 : STD_LOGIC;
  signal up_1_sn_1 : STD_LOGIC;
  signal up_3_sn_1 : STD_LOGIC;
  signal zext_ln74_1_fu_744_p1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[11]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[13]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ap_CS_fsm[16]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ap_CS_fsm[18]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_1__0\ : label is "soft_lutpair3";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[12]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[13]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[14]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[15]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[16]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[17]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[18]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of \i_0_i_reg_517[6]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_reg_827[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i_reg_827[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_reg_827[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i_reg_827[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_reg_827[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \icmp_ln67_reg_624[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \icmp_ln80_reg_628[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \j_0_i_reg_528[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j_0_i_reg_528[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j_0_i_reg_528[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \j_0_i_reg_528[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \j_reg_806[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \j_reg_806[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j_reg_806[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \j_reg_806[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j_reg_806[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \k_0_reg_539[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \k_0_reg_539[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \source_addr_mac_address1[1]_INST_0\ : label is "soft_lutpair9";
begin
  grp_compose_mac_frame_fu_271_ap_start_reg_reg(0) <= \^grp_compose_mac_frame_fu_271_ap_start_reg_reg\(0);
  source_addr_mac_address0(1 downto 0) <= \^source_addr_mac_address0\(1 downto 0);
  up_0_sp_1 <= up_0_sn_1;
  up_1_sp_1 <= up_1_sn_1;
  up_3_sp_1 <= up_3_sn_1;
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F444444444444"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      I2 => zext_ln74_1_fu_744_p1(3),
      I3 => zext_ln74_1_fu_744_p1(4),
      I4 => \k_0_reg_539_reg_n_1_[2]\,
      I5 => ap_CS_fsm_state19,
      O => \^grp_compose_mac_frame_fu_271_ap_start_reg_reg\(0)
    );
\ap_CS_fsm[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00090000"
    )
        port map (
      I0 => up(0),
      I1 => up(1),
      I2 => up(2),
      I3 => up(3),
      I4 => \ap_CS_fsm[13]_i_2_n_1\,
      O => D(3)
    );
\ap_CS_fsm[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060000"
    )
        port map (
      I0 => up(0),
      I1 => up(1),
      I2 => up(2),
      I3 => up(3),
      I4 => \ap_CS_fsm[13]_i_2_n_1\,
      O => D(4)
    );
\ap_CS_fsm[13]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state15,
      I1 => ap_CS_fsm_state13,
      O => ap_NS_fsm(13)
    );
\ap_CS_fsm[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^grp_compose_mac_frame_fu_271_ap_start_reg_reg\(0),
      I1 => Q(1),
      O => \ap_CS_fsm[13]_i_2_n_1\
    );
\ap_CS_fsm[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_ce0,
      I1 => ap_NS_fsm11_out,
      O => ap_NS_fsm(14)
    );
\ap_CS_fsm[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ap_NS_fsm11_out,
      I1 => j_0_i_reg_528_reg(0),
      I2 => j_0_i_reg_528_reg(1),
      I3 => j_0_i_reg_528_reg(3),
      I4 => j_0_i_reg_528_reg(2),
      I5 => ap_CS_fsm_state18,
      O => ap_NS_fsm(15)
    );
\ap_CS_fsm[16]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state16,
      I1 => \ap_CS_fsm[18]_i_2_n_1\,
      O => ap_NS_fsm(16)
    );
\ap_CS_fsm[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state17,
      I1 => j_0_i_reg_528_reg(0),
      I2 => j_0_i_reg_528_reg(1),
      I3 => j_0_i_reg_528_reg(3),
      I4 => j_0_i_reg_528_reg(2),
      I5 => ap_CS_fsm_state18,
      O => ap_NS_fsm(17)
    );
\ap_CS_fsm[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEF00"
    )
        port map (
      I0 => zext_ln74_1_fu_744_p1(3),
      I1 => zext_ln74_1_fu_744_p1(4),
      I2 => \k_0_reg_539_reg_n_1_[2]\,
      I3 => ap_CS_fsm_state19,
      I4 => \ap_CS_fsm[18]_i_2_n_1\,
      O => ap_NS_fsm(18)
    );
\ap_CS_fsm[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => i_0_i_reg_517(3),
      I1 => ap_CS_fsm_state16,
      I2 => i_0_i_reg_517(6),
      I3 => i_0_i_reg_517(2),
      I4 => \ap_CS_fsm[18]_i_3_n_1\,
      O => \ap_CS_fsm[18]_i_2_n_1\
    );
\ap_CS_fsm[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => i_0_i_reg_517(0),
      I1 => i_0_i_reg_517(1),
      I2 => i_0_i_reg_517(5),
      I3 => i_0_i_reg_517(4),
      O => \ap_CS_fsm[18]_i_3_n_1\
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_2__0_n_1\,
      I1 => ap_CS_fsm_state18,
      I2 => grp_compose_mac_frame_fu_271_ap_start_reg,
      I3 => ap_CS_fsm_state8,
      I4 => ap_CS_fsm_state17,
      I5 => \ap_CS_fsm[1]_i_3_n_1\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => \^source_addr_mac_address0\(1),
      I2 => ap_CS_fsm_state13,
      I3 => ap_CS_fsm_state15,
      O => \ap_CS_fsm[1]_i_2__0_n_1\
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state7,
      I2 => grp_compose_mac_frame_fu_271_data_ce0,
      I3 => ap_CS_fsm_state10,
      I4 => \ap_CS_fsm[1]_i_4_n_1\,
      I5 => \ap_CS_fsm[1]_i_5_n_1\,
      O => \ap_CS_fsm[1]_i_3_n_1\
    );
\ap_CS_fsm[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_CS_fsm_state19,
      I2 => ap_CS_fsm_state3,
      I3 => ap_CS_fsm_state5,
      O => \ap_CS_fsm[1]_i_4_n_1\
    );
\ap_CS_fsm[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => ap_CS_fsm_state9,
      I1 => ap_CS_fsm_state16,
      I2 => \ap_CS_fsm_reg_n_1_[0]\,
      I3 => ap_CS_fsm_state4,
      O => \ap_CS_fsm[1]_i_5_n_1\
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => ap_NS_fsm1165_out,
      I1 => \^grp_compose_mac_frame_fu_271_ap_start_reg_reg\(0),
      I2 => Q(1),
      I3 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \ap_CS_fsm[13]_i_2_n_1\,
      I1 => up(2),
      I2 => up(1),
      I3 => up(3),
      O => D(1)
    );
\ap_CS_fsm[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \ap_CS_fsm[13]_i_2_n_1\,
      I1 => up(1),
      I2 => up(2),
      O => D(2)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^grp_compose_mac_frame_fu_271_ap_start_reg_reg\(0),
      Q => \ap_CS_fsm_reg_n_1_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state10,
      Q => ap_CS_fsm_state11,
      R => ap_rst
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state11,
      Q => \^source_addr_mac_address0\(1),
      R => ap_rst
    );
\ap_CS_fsm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^source_addr_mac_address0\(1),
      Q => ap_CS_fsm_state13,
      R => ap_rst
    );
\ap_CS_fsm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(13),
      Q => grp_compose_mac_frame_fu_271_data_ce0,
      R => ap_rst
    );
\ap_CS_fsm_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(14),
      Q => ap_CS_fsm_state15,
      R => ap_rst
    );
\ap_CS_fsm_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(15),
      Q => ap_CS_fsm_state16,
      R => ap_rst
    );
\ap_CS_fsm_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(16),
      Q => ap_CS_fsm_state17,
      R => ap_rst
    );
\ap_CS_fsm_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(17),
      Q => ap_CS_fsm_state18,
      R => ap_rst
    );
\ap_CS_fsm_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(18),
      Q => ap_CS_fsm_state19,
      R => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state3,
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state4,
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state5,
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state6,
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state7,
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state8,
      Q => ap_CS_fsm_state9,
      R => ap_rst
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state9,
      Q => ap_CS_fsm_state10,
      R => ap_rst
    );
\empty_31_reg_620[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555FF00000082"
    )
        port map (
      I0 => \ap_CS_fsm[13]_i_2_n_1\,
      I1 => up(0),
      I2 => up(1),
      I3 => up(2),
      I4 => up(3),
      I5 => empty_31_reg_620,
      O => up_0_sn_1
    );
grp_compose_mac_frame_fu_271_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFAAAAAAAA"
    )
        port map (
      I0 => ap_NS_fsm1165_out,
      I1 => zext_ln74_1_fu_744_p1(3),
      I2 => zext_ln74_1_fu_744_p1(4),
      I3 => \k_0_reg_539_reg_n_1_[2]\,
      I4 => ap_CS_fsm_state19,
      I5 => grp_compose_mac_frame_fu_271_ap_start_reg,
      O => \k_0_reg_539_reg[0]_0\
    );
\i_0_i_reg_517[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(4),
      I1 => grp_compose_mac_frame_fu_271_data_address0(5),
      I2 => grp_compose_mac_frame_fu_271_data_ce0,
      I3 => grp_compose_mac_frame_fu_271_data_address0(3),
      I4 => \i_0_i_reg_517[6]_i_3_n_1\,
      O => ap_NS_fsm11_out
    );
\i_0_i_reg_517[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => ap_CS_fsm_state18,
      I1 => j_0_i_reg_528_reg(2),
      I2 => j_0_i_reg_528_reg(3),
      I3 => j_0_i_reg_528_reg(1),
      I4 => j_0_i_reg_528_reg(0),
      O => ap_NS_fsm1
    );
\i_0_i_reg_517[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(1),
      I1 => grp_compose_mac_frame_fu_271_data_address0(0),
      I2 => grp_compose_mac_frame_fu_271_data_address0(2),
      I3 => grp_compose_mac_frame_fu_271_data_address0(6),
      O => \i_0_i_reg_517[6]_i_3_n_1\
    );
\i_0_i_reg_517_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(0),
      Q => i_0_i_reg_517(0),
      R => ap_NS_fsm11_out
    );
\i_0_i_reg_517_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(1),
      Q => i_0_i_reg_517(1),
      R => ap_NS_fsm11_out
    );
\i_0_i_reg_517_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(2),
      Q => i_0_i_reg_517(2),
      R => ap_NS_fsm11_out
    );
\i_0_i_reg_517_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(3),
      Q => i_0_i_reg_517(3),
      R => ap_NS_fsm11_out
    );
\i_0_i_reg_517_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(4),
      Q => i_0_i_reg_517(4),
      R => ap_NS_fsm11_out
    );
\i_0_i_reg_517_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(5),
      Q => i_0_i_reg_517(5),
      R => ap_NS_fsm11_out
    );
\i_0_i_reg_517_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_reg_827(6),
      Q => i_0_i_reg_517(6),
      R => ap_NS_fsm11_out
    );
\i_reg_827[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_i_reg_517(0),
      O => i_fu_635_p2(0)
    );
\i_reg_827[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_i_reg_517(1),
      I1 => i_0_i_reg_517(0),
      O => i_fu_635_p2(1)
    );
\i_reg_827[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_i_reg_517(2),
      I1 => i_0_i_reg_517(1),
      I2 => i_0_i_reg_517(0),
      O => i_fu_635_p2(2)
    );
\i_reg_827[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_i_reg_517(3),
      I1 => i_0_i_reg_517(0),
      I2 => i_0_i_reg_517(1),
      I3 => i_0_i_reg_517(2),
      O => i_fu_635_p2(3)
    );
\i_reg_827[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_0_i_reg_517(4),
      I1 => i_0_i_reg_517(2),
      I2 => i_0_i_reg_517(1),
      I3 => i_0_i_reg_517(0),
      I4 => i_0_i_reg_517(3),
      O => i_fu_635_p2(4)
    );
\i_reg_827[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => i_0_i_reg_517(3),
      I1 => i_0_i_reg_517(0),
      I2 => i_0_i_reg_517(1),
      I3 => i_0_i_reg_517(2),
      I4 => i_0_i_reg_517(4),
      I5 => i_0_i_reg_517(5),
      O => i_fu_635_p2(5)
    );
\i_reg_827[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => i_0_i_reg_517(6),
      I1 => \i_reg_827[6]_i_2_n_1\,
      I2 => i_0_i_reg_517(5),
      O => i_fu_635_p2(6)
    );
\i_reg_827[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => i_0_i_reg_517(3),
      I1 => i_0_i_reg_517(0),
      I2 => i_0_i_reg_517(1),
      I3 => i_0_i_reg_517(2),
      I4 => i_0_i_reg_517(4),
      O => \i_reg_827[6]_i_2_n_1\
    );
\i_reg_827_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(0),
      Q => i_reg_827(0),
      R => '0'
    );
\i_reg_827_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(1),
      Q => i_reg_827(1),
      R => '0'
    );
\i_reg_827_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(2),
      Q => i_reg_827(2),
      R => '0'
    );
\i_reg_827_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(3),
      Q => i_reg_827(3),
      R => '0'
    );
\i_reg_827_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(4),
      Q => i_reg_827(4),
      R => '0'
    );
\i_reg_827_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(5),
      Q => i_reg_827(5),
      R => '0'
    );
\i_reg_827_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state16,
      D => i_fu_635_p2(6),
      Q => i_reg_827(6),
      R => '0'
    );
\icmp_ln41_reg_616[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110FFFF01100000"
    )
        port map (
      I0 => up(3),
      I1 => up(2),
      I2 => up(1),
      I3 => up(0),
      I4 => \ap_CS_fsm[13]_i_2_n_1\,
      I5 => icmp_ln41_reg_616,
      O => up_3_sn_1
    );
\icmp_ln67_reg_624[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"773F4400"
    )
        port map (
      I0 => up(1),
      I1 => \ap_CS_fsm[13]_i_2_n_1\,
      I2 => up(3),
      I3 => up(2),
      I4 => icmp_ln67_reg_624,
      O => up_1_sn_1
    );
\icmp_ln80_reg_628[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F774000"
    )
        port map (
      I0 => up(3),
      I1 => \ap_CS_fsm[13]_i_2_n_1\,
      I2 => up(1),
      I3 => up(2),
      I4 => icmp_ln80_reg_628,
      O => \up[3]_0\
    );
\j_0_i_reg_528[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_0_i_reg_528_reg(0),
      O => j_1_fu_677_p2(0)
    );
\j_0_i_reg_528[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_0_i_reg_528_reg(1),
      I1 => j_0_i_reg_528_reg(0),
      O => j_1_fu_677_p2(1)
    );
\j_0_i_reg_528[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_0_i_reg_528_reg(2),
      I1 => j_0_i_reg_528_reg(0),
      I2 => j_0_i_reg_528_reg(1),
      O => j_1_fu_677_p2(2)
    );
\j_0_i_reg_528[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000200AAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state17,
      I1 => j_0_i_reg_528_reg(0),
      I2 => j_0_i_reg_528_reg(1),
      I3 => j_0_i_reg_528_reg(3),
      I4 => j_0_i_reg_528_reg(2),
      I5 => ap_CS_fsm_state18,
      O => j_0_i_reg_528
    );
\j_0_i_reg_528[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => ap_CS_fsm_state18,
      I1 => j_0_i_reg_528_reg(2),
      I2 => j_0_i_reg_528_reg(3),
      I3 => j_0_i_reg_528_reg(1),
      I4 => j_0_i_reg_528_reg(0),
      O => crc_fu_1381
    );
\j_0_i_reg_528[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_0_i_reg_528_reg(3),
      I1 => j_0_i_reg_528_reg(1),
      I2 => j_0_i_reg_528_reg(0),
      I3 => j_0_i_reg_528_reg(2),
      O => j_1_fu_677_p2(3)
    );
\j_0_i_reg_528_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => crc_fu_1381,
      D => j_1_fu_677_p2(0),
      Q => j_0_i_reg_528_reg(0),
      R => j_0_i_reg_528
    );
\j_0_i_reg_528_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => crc_fu_1381,
      D => j_1_fu_677_p2(1),
      Q => j_0_i_reg_528_reg(1),
      R => j_0_i_reg_528
    );
\j_0_i_reg_528_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => crc_fu_1381,
      D => j_1_fu_677_p2(2),
      Q => j_0_i_reg_528_reg(2),
      R => j_0_i_reg_528
    );
\j_0_i_reg_528_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => crc_fu_1381,
      D => j_1_fu_677_p2(3),
      Q => j_0_i_reg_528_reg(3),
      R => j_0_i_reg_528
    );
\j_0_reg_505[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state13,
      I1 => ap_CS_fsm_state15,
      O => j_0_reg_505
    );
\j_0_reg_505_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(0),
      Q => grp_compose_mac_frame_fu_271_data_address0(0),
      R => j_0_reg_505
    );
\j_0_reg_505_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(1),
      Q => grp_compose_mac_frame_fu_271_data_address0(1),
      R => j_0_reg_505
    );
\j_0_reg_505_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(2),
      Q => grp_compose_mac_frame_fu_271_data_address0(2),
      R => j_0_reg_505
    );
\j_0_reg_505_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(3),
      Q => grp_compose_mac_frame_fu_271_data_address0(3),
      R => j_0_reg_505
    );
\j_0_reg_505_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(4),
      Q => grp_compose_mac_frame_fu_271_data_address0(4),
      R => j_0_reg_505
    );
\j_0_reg_505_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(5),
      Q => grp_compose_mac_frame_fu_271_data_address0(5),
      R => j_0_reg_505
    );
\j_0_reg_505_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state15,
      D => j_reg_806(6),
      Q => grp_compose_mac_frame_fu_271_data_address0(6),
      R => j_0_reg_505
    );
\j_reg_806[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(0),
      O => j_fu_602_p2(0)
    );
\j_reg_806[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(1),
      I1 => grp_compose_mac_frame_fu_271_data_address0(0),
      O => j_fu_602_p2(1)
    );
\j_reg_806[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(2),
      I1 => grp_compose_mac_frame_fu_271_data_address0(1),
      I2 => grp_compose_mac_frame_fu_271_data_address0(0),
      O => j_fu_602_p2(2)
    );
\j_reg_806[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(3),
      I1 => grp_compose_mac_frame_fu_271_data_address0(0),
      I2 => grp_compose_mac_frame_fu_271_data_address0(1),
      I3 => grp_compose_mac_frame_fu_271_data_address0(2),
      O => j_fu_602_p2(3)
    );
\j_reg_806[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(4),
      I1 => grp_compose_mac_frame_fu_271_data_address0(2),
      I2 => grp_compose_mac_frame_fu_271_data_address0(1),
      I3 => grp_compose_mac_frame_fu_271_data_address0(0),
      I4 => grp_compose_mac_frame_fu_271_data_address0(3),
      O => j_fu_602_p2(4)
    );
\j_reg_806[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(3),
      I1 => grp_compose_mac_frame_fu_271_data_address0(0),
      I2 => grp_compose_mac_frame_fu_271_data_address0(1),
      I3 => grp_compose_mac_frame_fu_271_data_address0(2),
      I4 => grp_compose_mac_frame_fu_271_data_address0(4),
      I5 => grp_compose_mac_frame_fu_271_data_address0(5),
      O => j_fu_602_p2(5)
    );
\j_reg_806[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(6),
      I1 => \j_reg_806[6]_i_2_n_1\,
      I2 => grp_compose_mac_frame_fu_271_data_address0(5),
      O => j_fu_602_p2(6)
    );
\j_reg_806[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => grp_compose_mac_frame_fu_271_data_address0(3),
      I1 => grp_compose_mac_frame_fu_271_data_address0(0),
      I2 => grp_compose_mac_frame_fu_271_data_address0(1),
      I3 => grp_compose_mac_frame_fu_271_data_address0(2),
      I4 => grp_compose_mac_frame_fu_271_data_address0(4),
      O => \j_reg_806[6]_i_2_n_1\
    );
\j_reg_806_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(0),
      Q => j_reg_806(0),
      R => '0'
    );
\j_reg_806_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(1),
      Q => j_reg_806(1),
      R => '0'
    );
\j_reg_806_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(2),
      Q => j_reg_806(2),
      R => '0'
    );
\j_reg_806_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(3),
      Q => j_reg_806(3),
      R => '0'
    );
\j_reg_806_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(4),
      Q => j_reg_806(4),
      R => '0'
    );
\j_reg_806_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(5),
      Q => j_reg_806(5),
      R => '0'
    );
\j_reg_806_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => grp_compose_mac_frame_fu_271_data_ce0,
      D => j_fu_602_p2(6),
      Q => j_reg_806(6),
      R => '0'
    );
\k_0_reg_539[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A255A2"
    )
        port map (
      I0 => ap_CS_fsm_state19,
      I1 => \k_0_reg_539_reg_n_1_[2]\,
      I2 => zext_ln74_1_fu_744_p1(4),
      I3 => zext_ln74_1_fu_744_p1(3),
      I4 => \ap_CS_fsm[18]_i_2_n_1\,
      O => \k_0_reg_539[0]_i_1_n_1\
    );
\k_0_reg_539[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"286C"
    )
        port map (
      I0 => ap_CS_fsm_state19,
      I1 => zext_ln74_1_fu_744_p1(4),
      I2 => zext_ln74_1_fu_744_p1(3),
      I3 => \ap_CS_fsm[18]_i_2_n_1\,
      O => \k_0_reg_539[1]_i_1_n_1\
    );
\k_0_reg_539[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28806CCC"
    )
        port map (
      I0 => ap_CS_fsm_state19,
      I1 => \k_0_reg_539_reg_n_1_[2]\,
      I2 => zext_ln74_1_fu_744_p1(4),
      I3 => zext_ln74_1_fu_744_p1(3),
      I4 => \ap_CS_fsm[18]_i_2_n_1\,
      O => \k_0_reg_539[2]_i_1_n_1\
    );
\k_0_reg_539_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \k_0_reg_539[0]_i_1_n_1\,
      Q => zext_ln74_1_fu_744_p1(3),
      R => '0'
    );
\k_0_reg_539_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \k_0_reg_539[1]_i_1_n_1\,
      Q => zext_ln74_1_fu_744_p1(4),
      R => '0'
    );
\k_0_reg_539_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \k_0_reg_539[2]_i_1_n_1\,
      Q => \k_0_reg_539_reg_n_1_[2]\,
      R => '0'
    );
\source_addr_mac_address1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => \^source_addr_mac_address0\(1),
      O => \^source_addr_mac_address0\(0)
    );
source_addr_mac_ce1_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => ap_CS_fsm_state11,
      I2 => \^source_addr_mac_address0\(1),
      O => source_addr_mac_ce0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enqueue_dequeue_fram is
  port (
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    medium_state_0_sp_1 : out STD_LOGIC;
    \medium_state[0]_0\ : out STD_LOGIC;
    \medium_state[0]_1\ : out STD_LOGIC;
    \medium_state[0]_2\ : out STD_LOGIC;
    \ap_CS_fsm_reg[12]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[10]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[7]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[14]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[9]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    grp_enqueue_dequeue_fram_fu_243_ap_start_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[8]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[8]_1\ : in STD_LOGIC;
    \ap_CS_fsm_reg[8]_2\ : in STD_LOGIC;
    grp_random_int_gen_fu_281_ap_start_reg_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[8]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[8]_4\ : in STD_LOGIC;
    medium_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    medium_state_read_1_reg_652 : in STD_LOGIC;
    medium_state_read_2_reg_644 : in STD_LOGIC;
    medium_state_read_3_reg_636 : in STD_LOGIC;
    medium_state_read_reg_660 : in STD_LOGIC;
    icmp_ln56_reg_648 : in STD_LOGIC;
    icmp_ln69_reg_640 : in STD_LOGIC;
    icmp_ln82_reg_632 : in STD_LOGIC;
    icmp_ln43_reg_656 : in STD_LOGIC;
    grp_random_int_gen_fu_281_ap_start_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_random_int_gen_fu_281_ap_start_reg : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enqueue_dequeue_fram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enqueue_dequeue_fram is
  signal \ap_CS_fsm[8]_i_2_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_10_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_11_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_12_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_13_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_2_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_8_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[9]_i_9_n_1\ : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm132_out : STD_LOGIC;
  signal ap_NS_fsm133_out : STD_LOGIC;
  signal ap_NS_fsm134_out : STD_LOGIC;
  signal ap_NS_fsm141_out : STD_LOGIC;
  signal ap_NS_fsm142_out : STD_LOGIC;
  signal ap_NS_fsm143_out : STD_LOGIC;
  signal ap_NS_fsm144_out : STD_LOGIC;
  signal ap_return_preg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ap_return_preg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ap_return_preg[1]_i_1_n_1\ : STD_LOGIC;
  signal \ap_return_preg[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_be : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \available_spaces_be[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_be[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_be[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_be_s_reg_642 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal available_spaces_be_s_reg_6420 : STD_LOGIC;
  signal \available_spaces_be_s_reg_642[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_be_s_reg_642[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_be_s_reg_642[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_bk : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \available_spaces_bk[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_bk[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_bk[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_bk_s_reg_660 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal available_spaces_bk_s_reg_6600 : STD_LOGIC;
  signal \available_spaces_bk_s_reg_660[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_bk_s_reg_660[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_bk_s_reg_660[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_vi : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \available_spaces_vi[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vi[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vi[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_vi_s_reg_624 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal available_spaces_vi_s_reg_6240 : STD_LOGIC;
  signal \available_spaces_vi_s_reg_624[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vi_s_reg_624[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vi_s_reg_624[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_vo : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \available_spaces_vo[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vo[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vo[2]_i_1_n_1\ : STD_LOGIC;
  signal available_spaces_vo_s_reg_606 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal available_spaces_vo_s_reg_6060 : STD_LOGIC;
  signal \available_spaces_vo_s_reg_606[0]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vo_s_reg_606[1]_i_1_n_1\ : STD_LOGIC;
  signal \available_spaces_vo_s_reg_606[2]_i_1_n_1\ : STD_LOGIC;
  signal be_0_reg_177 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal be_fu_490_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal be_reg_717 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \be_reg_717[6]_i_2_n_1\ : STD_LOGIC;
  signal bk_0_reg_188 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bk_fu_552_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bk_reg_735 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \bk_reg_735[6]_i_2_n_1\ : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_ap_ready : STD_LOGIC;
  signal grp_fu_310_p2 : STD_LOGIC;
  signal medium_state_0_sn_1 : STD_LOGIC;
  signal \medium_state_read_1_reg_652[0]_i_2_n_1\ : STD_LOGIC;
  signal p_0_reg_199 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_reg_199[0]_i_1_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[1]_i_1_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[1]_i_3_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[1]_i_4_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[1]_i_5_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[2]_i_1_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[2]_i_2_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[2]_i_3_n_1\ : STD_LOGIC;
  signal \p_0_reg_199[2]_i_4_n_1\ : STD_LOGIC;
  signal \p_0_reg_199_reg_n_1_[0]\ : STD_LOGIC;
  signal \p_0_reg_199_reg_n_1_[1]\ : STD_LOGIC;
  signal \p_0_reg_199_reg_n_1_[2]\ : STD_LOGIC;
  signal vi_0_reg_166 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vi_fu_428_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vi_reg_699 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \vi_reg_699[6]_i_2_n_1\ : STD_LOGIC;
  signal vo_0_reg_155 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vo_fu_366_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal vo_reg_681 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \vo_reg_681[6]_i_2_n_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ap_CS_fsm[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ap_CS_fsm[14]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ap_CS_fsm[9]_i_9\ : label is "soft_lutpair21";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of \ap_return_preg[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \ap_return_preg[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \available_spaces_be[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \available_spaces_be[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \available_spaces_be_s_reg_642[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \available_spaces_be_s_reg_642[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \available_spaces_bk[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \available_spaces_bk[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \available_spaces_bk_s_reg_660[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \available_spaces_bk_s_reg_660[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \available_spaces_vi[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \available_spaces_vi[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \available_spaces_vi_s_reg_624[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \available_spaces_vi_s_reg_624[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \available_spaces_vo[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \available_spaces_vo[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \available_spaces_vo_s_reg_606[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \available_spaces_vo_s_reg_606[2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \be_reg_717[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \be_reg_717[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \be_reg_717[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \be_reg_717[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \be_reg_717[6]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bk_reg_735[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bk_reg_735[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bk_reg_735[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bk_reg_735[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bk_reg_735[6]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \medium_state_read_1_reg_652[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \p_0_reg_199[1]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \p_0_reg_199[1]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \p_0_reg_199[2]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \p_0_reg_199[2]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \vi_reg_699[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \vi_reg_699[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \vi_reg_699[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \vi_reg_699[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vi_reg_699[6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vo_reg_681[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \vo_reg_681[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \vo_reg_681[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \vo_reg_681[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \vo_reg_681[6]_i_2\ : label is "soft_lutpair24";
begin
  medium_state_0_sp_1 <= medium_state_0_sn_1;
\ap_CS_fsm[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I2 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => Q(6),
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I3 => ap_CS_fsm_state1,
      I4 => Q(7),
      O => D(2)
    );
\ap_CS_fsm[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => Q(8),
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I3 => ap_CS_fsm_state1,
      I4 => Q(9),
      O => D(3)
    );
\ap_CS_fsm[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => Q(10),
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I3 => ap_CS_fsm_state1,
      I4 => Q(11),
      O => D(4)
    );
\ap_CS_fsm[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => available_spaces_vo_s_reg_6060,
      I1 => available_spaces_vo(2),
      I2 => available_spaces_vo(0),
      I3 => available_spaces_vo(1),
      I4 => ap_CS_fsm_state3,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(4),
      I2 => Q(9),
      I3 => Q(11),
      I4 => ap_CS_fsm_state1,
      I5 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      O => available_spaces_vo_s_reg_6060
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_NS_fsm134_out,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => available_spaces_vi_s_reg_6240,
      I1 => available_spaces_vi(2),
      I2 => available_spaces_vi(0),
      I3 => available_spaces_vi(1),
      I4 => ap_CS_fsm_state5,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(9),
      I2 => Q(11),
      I3 => ap_CS_fsm_state1,
      I4 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      O => available_spaces_vi_s_reg_6240
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => ap_NS_fsm133_out,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => available_spaces_be_s_reg_6420,
      I1 => available_spaces_be(2),
      I2 => available_spaces_be(0),
      I3 => available_spaces_be(1),
      I4 => ap_CS_fsm_state7,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[5]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(11),
      I1 => Q(9),
      I2 => ap_CS_fsm_state1,
      I3 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      O => available_spaces_be_s_reg_6420
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_NS_fsm132_out,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => Q(3),
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I3 => ap_CS_fsm_state1,
      I4 => Q(4),
      O => D(0)
    );
\ap_CS_fsm[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
        port map (
      I0 => available_spaces_bk_s_reg_6600,
      I1 => available_spaces_bk(2),
      I2 => available_spaces_bk(0),
      I3 => available_spaces_bk(1),
      I4 => ap_CS_fsm_state9,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F1000000000000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(4),
      I2 => Q(11),
      I3 => Q(9),
      I4 => ap_CS_fsm_state1,
      I5 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      O => available_spaces_bk_s_reg_6600
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state8,
      I1 => ap_NS_fsm1,
      O => ap_NS_fsm(8)
    );
\ap_CS_fsm[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0B0A0B0B0B0B"
    )
        port map (
      I0 => Q(1),
      I1 => \ap_CS_fsm[8]_i_2_n_1\,
      I2 => Q(0),
      I3 => \ap_CS_fsm_reg[8]_0\,
      I4 => \ap_CS_fsm_reg[8]_1\,
      I5 => Q(5),
      O => D(1)
    );
\ap_CS_fsm[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEAEAEFFAE"
    )
        port map (
      I0 => \ap_CS_fsm_reg[8]_2\,
      I1 => \medium_state_read_1_reg_652[0]_i_2_n_1\,
      I2 => grp_random_int_gen_fu_281_ap_start_reg_reg,
      I3 => Q(2),
      I4 => \ap_CS_fsm_reg[8]_3\(0),
      I5 => \ap_CS_fsm_reg[8]_4\,
      O => \ap_CS_fsm[8]_i_2_n_1\
    );
\ap_CS_fsm[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ap_CS_fsm[9]_i_2_n_1\,
      I1 => p_0_reg_199(0),
      I2 => ap_NS_fsm1,
      I3 => ap_NS_fsm132_out,
      I4 => ap_NS_fsm134_out,
      I5 => ap_NS_fsm133_out,
      O => ap_NS_fsm(9)
    );
\ap_CS_fsm[9]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => bk_0_reg_188(0),
      I1 => bk_0_reg_188(1),
      I2 => bk_0_reg_188(2),
      I3 => bk_0_reg_188(4),
      O => \ap_CS_fsm[9]_i_10_n_1\
    );
\ap_CS_fsm[9]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => be_0_reg_177(0),
      I1 => be_0_reg_177(1),
      I2 => be_0_reg_177(2),
      I3 => be_0_reg_177(4),
      O => \ap_CS_fsm[9]_i_11_n_1\
    );
\ap_CS_fsm[9]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => vo_0_reg_155(0),
      I1 => vo_0_reg_155(1),
      I2 => ap_CS_fsm_state2,
      I3 => vo_0_reg_155(5),
      O => \ap_CS_fsm[9]_i_12_n_1\
    );
\ap_CS_fsm[9]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => vi_0_reg_166(0),
      I1 => vi_0_reg_166(1),
      I2 => ap_CS_fsm_state4,
      I3 => vi_0_reg_166(5),
      O => \ap_CS_fsm[9]_i_13_n_1\
    );
\ap_CS_fsm[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000100"
    )
        port map (
      I0 => available_spaces_vi(1),
      I1 => available_spaces_vi(0),
      I2 => available_spaces_vi(2),
      I3 => available_spaces_vi_s_reg_6240,
      I4 => \ap_CS_fsm[9]_i_8_n_1\,
      I5 => available_spaces_bk_s_reg_6600,
      O => \ap_CS_fsm[9]_i_2_n_1\
    );
\ap_CS_fsm[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000100"
    )
        port map (
      I0 => available_spaces_vo(1),
      I1 => available_spaces_vo(0),
      I2 => available_spaces_vo(2),
      I3 => available_spaces_vo_s_reg_6060,
      I4 => \ap_CS_fsm[9]_i_9_n_1\,
      I5 => available_spaces_be_s_reg_6420,
      O => p_0_reg_199(0)
    );
\ap_CS_fsm[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => ap_CS_fsm_state8,
      I1 => bk_0_reg_188(5),
      I2 => bk_0_reg_188(6),
      I3 => bk_0_reg_188(3),
      I4 => \ap_CS_fsm[9]_i_10_n_1\,
      O => ap_NS_fsm1
    );
\ap_CS_fsm[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => be_0_reg_177(5),
      I2 => be_0_reg_177(6),
      I3 => be_0_reg_177(3),
      I4 => \ap_CS_fsm[9]_i_11_n_1\,
      O => ap_NS_fsm132_out
    );
\ap_CS_fsm[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => vo_0_reg_155(3),
      I1 => vo_0_reg_155(4),
      I2 => vo_0_reg_155(2),
      I3 => vo_0_reg_155(6),
      I4 => \ap_CS_fsm[9]_i_12_n_1\,
      O => ap_NS_fsm134_out
    );
\ap_CS_fsm[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => vi_0_reg_166(3),
      I1 => vi_0_reg_166(4),
      I2 => vi_0_reg_166(2),
      I3 => vi_0_reg_166(6),
      I4 => \ap_CS_fsm[9]_i_13_n_1\,
      O => ap_NS_fsm133_out
    );
\ap_CS_fsm[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => available_spaces_bk(1),
      I1 => available_spaces_bk(0),
      I2 => available_spaces_bk(2),
      O => \ap_CS_fsm[9]_i_8_n_1\
    );
\ap_CS_fsm[9]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => available_spaces_be(1),
      I1 => available_spaces_be(0),
      I2 => available_spaces_be(2),
      O => \ap_CS_fsm[9]_i_9_n_1\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state9,
      R => ap_rst
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(9),
      Q => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      R => ap_rst
    );
\ap_return_preg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p_0_reg_199_reg_n_1_[0]\,
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => ap_return_preg(0),
      O => \ap_return_preg[0]_i_1_n_1\
    );
\ap_return_preg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p_0_reg_199_reg_n_1_[1]\,
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => ap_return_preg(1),
      O => \ap_return_preg[1]_i_1_n_1\
    );
\ap_return_preg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p_0_reg_199_reg_n_1_[2]\,
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I2 => ap_return_preg(2),
      O => \ap_return_preg[2]_i_1_n_1\
    );
\ap_return_preg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_return_preg[0]_i_1_n_1\,
      Q => ap_return_preg(0),
      R => ap_rst
    );
\ap_return_preg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_return_preg[1]_i_1_n_1\,
      Q => ap_return_preg(1),
      R => ap_rst
    );
\ap_return_preg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_return_preg[2]_i_1_n_1\,
      Q => ap_return_preg(2),
      R => ap_rst
    );
\available_spaces_be[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => available_spaces_be_s_reg_642(0),
      I1 => ap_NS_fsm132_out,
      I2 => available_spaces_be(0),
      O => \available_spaces_be[0]_i_1_n_1\
    );
\available_spaces_be[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => available_spaces_be_s_reg_642(0),
      I1 => available_spaces_be_s_reg_642(1),
      I2 => ap_NS_fsm132_out,
      I3 => available_spaces_be(1),
      O => \available_spaces_be[1]_i_1_n_1\
    );
\available_spaces_be[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => available_spaces_be_s_reg_642(1),
      I1 => available_spaces_be_s_reg_642(0),
      I2 => available_spaces_be_s_reg_642(2),
      I3 => ap_NS_fsm132_out,
      I4 => available_spaces_be(2),
      O => \available_spaces_be[2]_i_1_n_1\
    );
\available_spaces_be_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_be[0]_i_1_n_1\,
      Q => available_spaces_be(0),
      R => '0'
    );
\available_spaces_be_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_be[1]_i_1_n_1\,
      Q => available_spaces_be(1),
      R => '0'
    );
\available_spaces_be_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_be[2]_i_1_n_1\,
      Q => available_spaces_be(2),
      R => '0'
    );
\available_spaces_be_s_reg_642[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_be(0),
      I1 => available_spaces_be_s_reg_6420,
      I2 => available_spaces_be_s_reg_642(0),
      O => \available_spaces_be_s_reg_642[0]_i_1_n_1\
    );
\available_spaces_be_s_reg_642[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_be(1),
      I1 => available_spaces_be_s_reg_6420,
      I2 => available_spaces_be_s_reg_642(1),
      O => \available_spaces_be_s_reg_642[1]_i_1_n_1\
    );
\available_spaces_be_s_reg_642[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_be(2),
      I1 => available_spaces_be_s_reg_6420,
      I2 => available_spaces_be_s_reg_642(2),
      O => \available_spaces_be_s_reg_642[2]_i_1_n_1\
    );
\available_spaces_be_s_reg_642_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_be_s_reg_642[0]_i_1_n_1\,
      Q => available_spaces_be_s_reg_642(0),
      R => '0'
    );
\available_spaces_be_s_reg_642_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_be_s_reg_642[1]_i_1_n_1\,
      Q => available_spaces_be_s_reg_642(1),
      R => '0'
    );
\available_spaces_be_s_reg_642_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_be_s_reg_642[2]_i_1_n_1\,
      Q => available_spaces_be_s_reg_642(2),
      R => '0'
    );
\available_spaces_bk[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => available_spaces_bk_s_reg_660(0),
      I1 => ap_NS_fsm1,
      I2 => available_spaces_bk(0),
      O => \available_spaces_bk[0]_i_1_n_1\
    );
\available_spaces_bk[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => available_spaces_bk_s_reg_660(0),
      I1 => available_spaces_bk_s_reg_660(1),
      I2 => ap_NS_fsm1,
      I3 => available_spaces_bk(1),
      O => \available_spaces_bk[1]_i_1_n_1\
    );
\available_spaces_bk[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => available_spaces_bk_s_reg_660(1),
      I1 => available_spaces_bk_s_reg_660(0),
      I2 => available_spaces_bk_s_reg_660(2),
      I3 => ap_NS_fsm1,
      I4 => available_spaces_bk(2),
      O => \available_spaces_bk[2]_i_1_n_1\
    );
\available_spaces_bk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_bk[0]_i_1_n_1\,
      Q => available_spaces_bk(0),
      R => '0'
    );
\available_spaces_bk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_bk[1]_i_1_n_1\,
      Q => available_spaces_bk(1),
      R => '0'
    );
\available_spaces_bk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_bk[2]_i_1_n_1\,
      Q => available_spaces_bk(2),
      R => '0'
    );
\available_spaces_bk_s_reg_660[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_bk(0),
      I1 => available_spaces_bk_s_reg_6600,
      I2 => available_spaces_bk_s_reg_660(0),
      O => \available_spaces_bk_s_reg_660[0]_i_1_n_1\
    );
\available_spaces_bk_s_reg_660[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_bk(1),
      I1 => available_spaces_bk_s_reg_6600,
      I2 => available_spaces_bk_s_reg_660(1),
      O => \available_spaces_bk_s_reg_660[1]_i_1_n_1\
    );
\available_spaces_bk_s_reg_660[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_bk(2),
      I1 => available_spaces_bk_s_reg_6600,
      I2 => available_spaces_bk_s_reg_660(2),
      O => \available_spaces_bk_s_reg_660[2]_i_1_n_1\
    );
\available_spaces_bk_s_reg_660_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_bk_s_reg_660[0]_i_1_n_1\,
      Q => available_spaces_bk_s_reg_660(0),
      R => '0'
    );
\available_spaces_bk_s_reg_660_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_bk_s_reg_660[1]_i_1_n_1\,
      Q => available_spaces_bk_s_reg_660(1),
      R => '0'
    );
\available_spaces_bk_s_reg_660_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_bk_s_reg_660[2]_i_1_n_1\,
      Q => available_spaces_bk_s_reg_660(2),
      R => '0'
    );
\available_spaces_vi[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => available_spaces_vi_s_reg_624(0),
      I1 => ap_NS_fsm133_out,
      I2 => available_spaces_vi(0),
      O => \available_spaces_vi[0]_i_1_n_1\
    );
\available_spaces_vi[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => available_spaces_vi_s_reg_624(0),
      I1 => available_spaces_vi_s_reg_624(1),
      I2 => ap_NS_fsm133_out,
      I3 => available_spaces_vi(1),
      O => \available_spaces_vi[1]_i_1_n_1\
    );
\available_spaces_vi[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => available_spaces_vi_s_reg_624(1),
      I1 => available_spaces_vi_s_reg_624(0),
      I2 => available_spaces_vi_s_reg_624(2),
      I3 => ap_NS_fsm133_out,
      I4 => available_spaces_vi(2),
      O => \available_spaces_vi[2]_i_1_n_1\
    );
\available_spaces_vi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vi[0]_i_1_n_1\,
      Q => available_spaces_vi(0),
      R => '0'
    );
\available_spaces_vi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vi[1]_i_1_n_1\,
      Q => available_spaces_vi(1),
      R => '0'
    );
\available_spaces_vi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vi[2]_i_1_n_1\,
      Q => available_spaces_vi(2),
      R => '0'
    );
\available_spaces_vi_s_reg_624[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_vi(0),
      I1 => available_spaces_vi_s_reg_6240,
      I2 => available_spaces_vi_s_reg_624(0),
      O => \available_spaces_vi_s_reg_624[0]_i_1_n_1\
    );
\available_spaces_vi_s_reg_624[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_vi(1),
      I1 => available_spaces_vi_s_reg_6240,
      I2 => available_spaces_vi_s_reg_624(1),
      O => \available_spaces_vi_s_reg_624[1]_i_1_n_1\
    );
\available_spaces_vi_s_reg_624[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_vi(2),
      I1 => available_spaces_vi_s_reg_6240,
      I2 => available_spaces_vi_s_reg_624(2),
      O => \available_spaces_vi_s_reg_624[2]_i_1_n_1\
    );
\available_spaces_vi_s_reg_624_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vi_s_reg_624[0]_i_1_n_1\,
      Q => available_spaces_vi_s_reg_624(0),
      R => '0'
    );
\available_spaces_vi_s_reg_624_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vi_s_reg_624[1]_i_1_n_1\,
      Q => available_spaces_vi_s_reg_624(1),
      R => '0'
    );
\available_spaces_vi_s_reg_624_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vi_s_reg_624[2]_i_1_n_1\,
      Q => available_spaces_vi_s_reg_624(2),
      R => '0'
    );
\available_spaces_vo[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => available_spaces_vo_s_reg_606(0),
      I1 => ap_NS_fsm134_out,
      I2 => available_spaces_vo(0),
      O => \available_spaces_vo[0]_i_1_n_1\
    );
\available_spaces_vo[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => available_spaces_vo_s_reg_606(0),
      I1 => available_spaces_vo_s_reg_606(1),
      I2 => ap_NS_fsm134_out,
      I3 => available_spaces_vo(1),
      O => \available_spaces_vo[1]_i_1_n_1\
    );
\available_spaces_vo[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => available_spaces_vo_s_reg_606(1),
      I1 => available_spaces_vo_s_reg_606(0),
      I2 => available_spaces_vo_s_reg_606(2),
      I3 => ap_NS_fsm134_out,
      I4 => available_spaces_vo(2),
      O => \available_spaces_vo[2]_i_1_n_1\
    );
\available_spaces_vo_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vo[0]_i_1_n_1\,
      Q => available_spaces_vo(0),
      R => '0'
    );
\available_spaces_vo_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vo[1]_i_1_n_1\,
      Q => available_spaces_vo(1),
      R => '0'
    );
\available_spaces_vo_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vo[2]_i_1_n_1\,
      Q => available_spaces_vo(2),
      R => '0'
    );
\available_spaces_vo_s_reg_606[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_vo(0),
      I1 => available_spaces_vo_s_reg_6060,
      I2 => available_spaces_vo_s_reg_606(0),
      O => \available_spaces_vo_s_reg_606[0]_i_1_n_1\
    );
\available_spaces_vo_s_reg_606[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_vo(1),
      I1 => available_spaces_vo_s_reg_6060,
      I2 => available_spaces_vo_s_reg_606(1),
      O => \available_spaces_vo_s_reg_606[1]_i_1_n_1\
    );
\available_spaces_vo_s_reg_606[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => available_spaces_vo(2),
      I1 => available_spaces_vo_s_reg_6060,
      I2 => available_spaces_vo_s_reg_606(2),
      O => \available_spaces_vo_s_reg_606[2]_i_1_n_1\
    );
\available_spaces_vo_s_reg_606_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vo_s_reg_606[0]_i_1_n_1\,
      Q => available_spaces_vo_s_reg_606(0),
      R => '0'
    );
\available_spaces_vo_s_reg_606_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vo_s_reg_606[1]_i_1_n_1\,
      Q => available_spaces_vo_s_reg_606(1),
      R => '0'
    );
\available_spaces_vo_s_reg_606_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \available_spaces_vo_s_reg_606[2]_i_1_n_1\,
      Q => available_spaces_vo_s_reg_606(2),
      R => '0'
    );
\be_0_reg_177[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => available_spaces_be_s_reg_6420,
      I1 => available_spaces_be(2),
      I2 => available_spaces_be(0),
      I3 => available_spaces_be(1),
      O => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(0),
      Q => be_0_reg_177(0),
      R => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(1),
      Q => be_0_reg_177(1),
      R => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(2),
      Q => be_0_reg_177(2),
      R => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(3),
      Q => be_0_reg_177(3),
      R => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(4),
      Q => be_0_reg_177(4),
      R => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(5),
      Q => be_0_reg_177(5),
      R => ap_NS_fsm143_out
    );
\be_0_reg_177_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state7,
      D => be_reg_717(6),
      Q => be_0_reg_177(6),
      R => ap_NS_fsm143_out
    );
\be_reg_717[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => be_0_reg_177(0),
      O => be_fu_490_p2(0)
    );
\be_reg_717[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => be_0_reg_177(1),
      I1 => be_0_reg_177(0),
      O => be_fu_490_p2(1)
    );
\be_reg_717[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => be_0_reg_177(2),
      I1 => be_0_reg_177(1),
      I2 => be_0_reg_177(0),
      O => be_fu_490_p2(2)
    );
\be_reg_717[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => be_0_reg_177(3),
      I1 => be_0_reg_177(0),
      I2 => be_0_reg_177(1),
      I3 => be_0_reg_177(2),
      O => be_fu_490_p2(3)
    );
\be_reg_717[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => be_0_reg_177(4),
      I1 => be_0_reg_177(2),
      I2 => be_0_reg_177(1),
      I3 => be_0_reg_177(0),
      I4 => be_0_reg_177(3),
      O => be_fu_490_p2(4)
    );
\be_reg_717[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => be_0_reg_177(3),
      I1 => be_0_reg_177(0),
      I2 => be_0_reg_177(1),
      I3 => be_0_reg_177(2),
      I4 => be_0_reg_177(4),
      I5 => be_0_reg_177(5),
      O => be_fu_490_p2(5)
    );
\be_reg_717[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => be_0_reg_177(6),
      I1 => \be_reg_717[6]_i_2_n_1\,
      I2 => be_0_reg_177(5),
      O => be_fu_490_p2(6)
    );
\be_reg_717[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => be_0_reg_177(3),
      I1 => be_0_reg_177(0),
      I2 => be_0_reg_177(1),
      I3 => be_0_reg_177(2),
      I4 => be_0_reg_177(4),
      O => \be_reg_717[6]_i_2_n_1\
    );
\be_reg_717_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(0),
      Q => be_reg_717(0),
      R => '0'
    );
\be_reg_717_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(1),
      Q => be_reg_717(1),
      R => '0'
    );
\be_reg_717_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(2),
      Q => be_reg_717(2),
      R => '0'
    );
\be_reg_717_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(3),
      Q => be_reg_717(3),
      R => '0'
    );
\be_reg_717_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(4),
      Q => be_reg_717(4),
      R => '0'
    );
\be_reg_717_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(5),
      Q => be_reg_717(5),
      R => '0'
    );
\be_reg_717_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => be_fu_490_p2(6),
      Q => be_reg_717(6),
      R => '0'
    );
\bk_0_reg_188[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => available_spaces_bk_s_reg_6600,
      I1 => available_spaces_bk(2),
      I2 => available_spaces_bk(0),
      I3 => available_spaces_bk(1),
      O => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(0),
      Q => bk_0_reg_188(0),
      R => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(1),
      Q => bk_0_reg_188(1),
      R => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(2),
      Q => bk_0_reg_188(2),
      R => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(3),
      Q => bk_0_reg_188(3),
      R => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(4),
      Q => bk_0_reg_188(4),
      R => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(5),
      Q => bk_0_reg_188(5),
      R => ap_NS_fsm144_out
    );
\bk_0_reg_188_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => bk_reg_735(6),
      Q => bk_0_reg_188(6),
      R => ap_NS_fsm144_out
    );
\bk_reg_735[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bk_0_reg_188(0),
      O => bk_fu_552_p2(0)
    );
\bk_reg_735[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bk_0_reg_188(1),
      I1 => bk_0_reg_188(0),
      O => bk_fu_552_p2(1)
    );
\bk_reg_735[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bk_0_reg_188(2),
      I1 => bk_0_reg_188(1),
      I2 => bk_0_reg_188(0),
      O => bk_fu_552_p2(2)
    );
\bk_reg_735[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bk_0_reg_188(3),
      I1 => bk_0_reg_188(0),
      I2 => bk_0_reg_188(1),
      I3 => bk_0_reg_188(2),
      O => bk_fu_552_p2(3)
    );
\bk_reg_735[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => bk_0_reg_188(4),
      I1 => bk_0_reg_188(2),
      I2 => bk_0_reg_188(1),
      I3 => bk_0_reg_188(0),
      I4 => bk_0_reg_188(3),
      O => bk_fu_552_p2(4)
    );
\bk_reg_735[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => bk_0_reg_188(3),
      I1 => bk_0_reg_188(0),
      I2 => bk_0_reg_188(1),
      I3 => bk_0_reg_188(2),
      I4 => bk_0_reg_188(4),
      I5 => bk_0_reg_188(5),
      O => bk_fu_552_p2(5)
    );
\bk_reg_735[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => bk_0_reg_188(6),
      I1 => \bk_reg_735[6]_i_2_n_1\,
      I2 => bk_0_reg_188(5),
      O => bk_fu_552_p2(6)
    );
\bk_reg_735[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bk_0_reg_188(3),
      I1 => bk_0_reg_188(0),
      I2 => bk_0_reg_188(1),
      I3 => bk_0_reg_188(2),
      I4 => bk_0_reg_188(4),
      O => \bk_reg_735[6]_i_2_n_1\
    );
\bk_reg_735_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(0),
      Q => bk_reg_735(0),
      R => '0'
    );
\bk_reg_735_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(1),
      Q => bk_reg_735(1),
      R => '0'
    );
\bk_reg_735_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(2),
      Q => bk_reg_735(2),
      R => '0'
    );
\bk_reg_735_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(3),
      Q => bk_reg_735(3),
      R => '0'
    );
\bk_reg_735_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(4),
      Q => bk_reg_735(4),
      R => '0'
    );
\bk_reg_735_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(5),
      Q => bk_reg_735(5),
      R => '0'
    );
\bk_reg_735_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state8,
      D => bk_fu_552_p2(6),
      Q => bk_reg_735(6),
      R => '0'
    );
grp_enqueue_dequeue_fram_fu_243_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFC"
    )
        port map (
      I0 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I1 => Q(8),
      I2 => Q(10),
      I3 => Q(6),
      I4 => Q(3),
      I5 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      O => \ap_CS_fsm_reg[9]_0\
    );
grp_random_int_gen_fu_281_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557555500030000"
    )
        port map (
      I0 => grp_random_int_gen_fu_281_ap_start_reg_reg_0(0),
      I1 => \medium_state_read_1_reg_652[0]_i_2_n_1\,
      I2 => grp_random_int_gen_fu_281_ap_start_reg_reg,
      I3 => medium_state(0),
      I4 => grp_fu_310_p2,
      I5 => grp_random_int_gen_fu_281_ap_start_reg,
      O => \ap_CS_fsm_reg[1]_0\
    );
\icmp_ln43_reg_656[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFBF88880080"
    )
        port map (
      I0 => grp_fu_310_p2,
      I1 => Q(11),
      I2 => ap_CS_fsm_state1,
      I3 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I4 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I5 => icmp_ln43_reg_656,
      O => \ap_CS_fsm_reg[14]\
    );
\icmp_ln56_reg_648[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFBF88880080"
    )
        port map (
      I0 => grp_fu_310_p2,
      I1 => Q(9),
      I2 => ap_CS_fsm_state1,
      I3 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I4 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I5 => icmp_ln56_reg_648,
      O => \ap_CS_fsm_reg[12]\
    );
\icmp_ln69_reg_640[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFBF88880080"
    )
        port map (
      I0 => grp_fu_310_p2,
      I1 => Q(7),
      I2 => ap_CS_fsm_state1,
      I3 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I4 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I5 => icmp_ln69_reg_640,
      O => \ap_CS_fsm_reg[10]\
    );
\icmp_ln82_reg_632[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFBF88880080"
    )
        port map (
      I0 => grp_fu_310_p2,
      I1 => Q(4),
      I2 => ap_CS_fsm_state1,
      I3 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I4 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I5 => icmp_ln82_reg_632,
      O => \ap_CS_fsm_reg[7]_0\
    );
\medium_state_read_1_reg_652[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => medium_state(0),
      I1 => \medium_state_read_1_reg_652[0]_i_2_n_1\,
      I2 => Q(9),
      I3 => grp_fu_310_p2,
      I4 => medium_state_read_1_reg_652,
      O => medium_state_0_sn_1
    );
\medium_state_read_1_reg_652[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I1 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      I2 => ap_CS_fsm_state1,
      O => \medium_state_read_1_reg_652[0]_i_2_n_1\
    );
\medium_state_read_1_reg_652[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A0A0C000000"
    )
        port map (
      I0 => ap_return_preg(1),
      I1 => \p_0_reg_199_reg_n_1_[1]\,
      I2 => \ap_return_preg[0]_i_1_n_1\,
      I3 => \p_0_reg_199_reg_n_1_[2]\,
      I4 => grp_enqueue_dequeue_fram_fu_243_ap_ready,
      I5 => ap_return_preg(2),
      O => grp_fu_310_p2
    );
\medium_state_read_2_reg_644[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => medium_state(0),
      I1 => \medium_state_read_1_reg_652[0]_i_2_n_1\,
      I2 => Q(7),
      I3 => grp_fu_310_p2,
      I4 => medium_state_read_2_reg_644,
      O => \medium_state[0]_0\
    );
\medium_state_read_3_reg_636[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => medium_state(0),
      I1 => \medium_state_read_1_reg_652[0]_i_2_n_1\,
      I2 => Q(4),
      I3 => grp_fu_310_p2,
      I4 => medium_state_read_3_reg_636,
      O => \medium_state[0]_1\
    );
\medium_state_read_reg_660[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => medium_state(0),
      I1 => \medium_state_read_1_reg_652[0]_i_2_n_1\,
      I2 => Q(11),
      I3 => grp_fu_310_p2,
      I4 => medium_state_read_reg_660,
      O => \medium_state[0]_2\
    );
\p_0_reg_199[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCDCCCCCCCC"
    )
        port map (
      I0 => \ap_CS_fsm[9]_i_2_n_1\,
      I1 => p_0_reg_199(0),
      I2 => \p_0_reg_199[2]_i_2_n_1\,
      I3 => ap_NS_fsm134_out,
      I4 => ap_NS_fsm133_out,
      I5 => \p_0_reg_199_reg_n_1_[0]\,
      O => \p_0_reg_199[0]_i_1_n_1\
    );
\p_0_reg_199[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => p_0_reg_199(1),
      I1 => \ap_CS_fsm[9]_i_2_n_1\,
      I2 => p_0_reg_199(0),
      I3 => \p_0_reg_199[2]_i_2_n_1\,
      I4 => \p_0_reg_199[1]_i_3_n_1\,
      I5 => \p_0_reg_199_reg_n_1_[1]\,
      O => \p_0_reg_199[1]_i_1_n_1\
    );
\p_0_reg_199[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF0000FEFFFEFF"
    )
        port map (
      I0 => available_spaces_be(1),
      I1 => available_spaces_be(0),
      I2 => available_spaces_be(2),
      I3 => available_spaces_be_s_reg_6420,
      I4 => \ap_CS_fsm[9]_i_8_n_1\,
      I5 => available_spaces_bk_s_reg_6600,
      O => p_0_reg_199(1)
    );
\p_0_reg_199[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \ap_CS_fsm[9]_i_12_n_1\,
      I1 => \p_0_reg_199[1]_i_4_n_1\,
      I2 => \ap_CS_fsm[9]_i_13_n_1\,
      I3 => \p_0_reg_199[1]_i_5_n_1\,
      O => \p_0_reg_199[1]_i_3_n_1\
    );
\p_0_reg_199[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => vo_0_reg_155(6),
      I1 => vo_0_reg_155(2),
      I2 => vo_0_reg_155(4),
      I3 => vo_0_reg_155(3),
      O => \p_0_reg_199[1]_i_4_n_1\
    );
\p_0_reg_199[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => vi_0_reg_166(6),
      I1 => vi_0_reg_166(2),
      I2 => vi_0_reg_166(4),
      I3 => vi_0_reg_166(3),
      O => \p_0_reg_199[1]_i_5_n_1\
    );
\p_0_reg_199[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => \ap_CS_fsm[9]_i_2_n_1\,
      I1 => p_0_reg_199(0),
      I2 => \p_0_reg_199[2]_i_2_n_1\,
      I3 => ap_NS_fsm134_out,
      I4 => ap_NS_fsm133_out,
      I5 => \p_0_reg_199_reg_n_1_[2]\,
      O => \p_0_reg_199[2]_i_1_n_1\
    );
\p_0_reg_199[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \ap_CS_fsm[9]_i_10_n_1\,
      I1 => \p_0_reg_199[2]_i_3_n_1\,
      I2 => \ap_CS_fsm[9]_i_11_n_1\,
      I3 => \p_0_reg_199[2]_i_4_n_1\,
      O => \p_0_reg_199[2]_i_2_n_1\
    );
\p_0_reg_199[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => bk_0_reg_188(3),
      I1 => bk_0_reg_188(6),
      I2 => bk_0_reg_188(5),
      I3 => ap_CS_fsm_state8,
      O => \p_0_reg_199[2]_i_3_n_1\
    );
\p_0_reg_199[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => be_0_reg_177(3),
      I1 => be_0_reg_177(6),
      I2 => be_0_reg_177(5),
      I3 => ap_CS_fsm_state6,
      O => \p_0_reg_199[2]_i_4_n_1\
    );
\p_0_reg_199_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \p_0_reg_199[0]_i_1_n_1\,
      Q => \p_0_reg_199_reg_n_1_[0]\,
      R => '0'
    );
\p_0_reg_199_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \p_0_reg_199[1]_i_1_n_1\,
      Q => \p_0_reg_199_reg_n_1_[1]\,
      R => '0'
    );
\p_0_reg_199_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \p_0_reg_199[2]_i_1_n_1\,
      Q => \p_0_reg_199_reg_n_1_[2]\,
      R => '0'
    );
\vi_0_reg_166[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => available_spaces_vi_s_reg_6240,
      I1 => available_spaces_vi(2),
      I2 => available_spaces_vi(0),
      I3 => available_spaces_vi(1),
      O => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(0),
      Q => vi_0_reg_166(0),
      R => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(1),
      Q => vi_0_reg_166(1),
      R => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(2),
      Q => vi_0_reg_166(2),
      R => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(3),
      Q => vi_0_reg_166(3),
      R => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(4),
      Q => vi_0_reg_166(4),
      R => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(5),
      Q => vi_0_reg_166(5),
      R => ap_NS_fsm142_out
    );
\vi_0_reg_166_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => vi_reg_699(6),
      Q => vi_0_reg_166(6),
      R => ap_NS_fsm142_out
    );
\vi_reg_699[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vi_0_reg_166(0),
      O => vi_fu_428_p2(0)
    );
\vi_reg_699[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vi_0_reg_166(1),
      I1 => vi_0_reg_166(0),
      O => vi_fu_428_p2(1)
    );
\vi_reg_699[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => vi_0_reg_166(2),
      I1 => vi_0_reg_166(1),
      I2 => vi_0_reg_166(0),
      O => vi_fu_428_p2(2)
    );
\vi_reg_699[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => vi_0_reg_166(3),
      I1 => vi_0_reg_166(0),
      I2 => vi_0_reg_166(1),
      I3 => vi_0_reg_166(2),
      O => vi_fu_428_p2(3)
    );
\vi_reg_699[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => vi_0_reg_166(4),
      I1 => vi_0_reg_166(2),
      I2 => vi_0_reg_166(1),
      I3 => vi_0_reg_166(0),
      I4 => vi_0_reg_166(3),
      O => vi_fu_428_p2(4)
    );
\vi_reg_699[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => vi_0_reg_166(3),
      I1 => vi_0_reg_166(0),
      I2 => vi_0_reg_166(1),
      I3 => vi_0_reg_166(2),
      I4 => vi_0_reg_166(4),
      I5 => vi_0_reg_166(5),
      O => vi_fu_428_p2(5)
    );
\vi_reg_699[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => vi_0_reg_166(6),
      I1 => \vi_reg_699[6]_i_2_n_1\,
      I2 => vi_0_reg_166(5),
      O => vi_fu_428_p2(6)
    );
\vi_reg_699[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => vi_0_reg_166(3),
      I1 => vi_0_reg_166(0),
      I2 => vi_0_reg_166(1),
      I3 => vi_0_reg_166(2),
      I4 => vi_0_reg_166(4),
      O => \vi_reg_699[6]_i_2_n_1\
    );
\vi_reg_699_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(0),
      Q => vi_reg_699(0),
      R => '0'
    );
\vi_reg_699_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(1),
      Q => vi_reg_699(1),
      R => '0'
    );
\vi_reg_699_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(2),
      Q => vi_reg_699(2),
      R => '0'
    );
\vi_reg_699_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(3),
      Q => vi_reg_699(3),
      R => '0'
    );
\vi_reg_699_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(4),
      Q => vi_reg_699(4),
      R => '0'
    );
\vi_reg_699_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(5),
      Q => vi_reg_699(5),
      R => '0'
    );
\vi_reg_699_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => vi_fu_428_p2(6),
      Q => vi_reg_699(6),
      R => '0'
    );
\vo_0_reg_155[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => available_spaces_vo_s_reg_6060,
      I1 => available_spaces_vo(2),
      I2 => available_spaces_vo(0),
      I3 => available_spaces_vo(1),
      O => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(0),
      Q => vo_0_reg_155(0),
      R => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(1),
      Q => vo_0_reg_155(1),
      R => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(2),
      Q => vo_0_reg_155(2),
      R => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(3),
      Q => vo_0_reg_155(3),
      R => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(4),
      Q => vo_0_reg_155(4),
      R => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(5),
      Q => vo_0_reg_155(5),
      R => ap_NS_fsm141_out
    );
\vo_0_reg_155_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state3,
      D => vo_reg_681(6),
      Q => vo_0_reg_155(6),
      R => ap_NS_fsm141_out
    );
\vo_reg_681[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vo_0_reg_155(0),
      O => vo_fu_366_p2(0)
    );
\vo_reg_681[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vo_0_reg_155(1),
      I1 => vo_0_reg_155(0),
      O => vo_fu_366_p2(1)
    );
\vo_reg_681[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => vo_0_reg_155(2),
      I1 => vo_0_reg_155(1),
      I2 => vo_0_reg_155(0),
      O => vo_fu_366_p2(2)
    );
\vo_reg_681[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => vo_0_reg_155(3),
      I1 => vo_0_reg_155(0),
      I2 => vo_0_reg_155(1),
      I3 => vo_0_reg_155(2),
      O => vo_fu_366_p2(3)
    );
\vo_reg_681[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => vo_0_reg_155(4),
      I1 => vo_0_reg_155(2),
      I2 => vo_0_reg_155(1),
      I3 => vo_0_reg_155(0),
      I4 => vo_0_reg_155(3),
      O => vo_fu_366_p2(4)
    );
\vo_reg_681[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => vo_0_reg_155(3),
      I1 => vo_0_reg_155(0),
      I2 => vo_0_reg_155(1),
      I3 => vo_0_reg_155(2),
      I4 => vo_0_reg_155(4),
      I5 => vo_0_reg_155(5),
      O => vo_fu_366_p2(5)
    );
\vo_reg_681[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => vo_0_reg_155(6),
      I1 => \vo_reg_681[6]_i_2_n_1\,
      I2 => vo_0_reg_155(5),
      O => vo_fu_366_p2(6)
    );
\vo_reg_681[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => vo_0_reg_155(3),
      I1 => vo_0_reg_155(0),
      I2 => vo_0_reg_155(1),
      I3 => vo_0_reg_155(2),
      I4 => vo_0_reg_155(4),
      O => \vo_reg_681[6]_i_2_n_1\
    );
\vo_reg_681_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(0),
      Q => vo_reg_681(0),
      R => '0'
    );
\vo_reg_681_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(1),
      Q => vo_reg_681(1),
      R => '0'
    );
\vo_reg_681_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(2),
      Q => vo_reg_681(2),
      R => '0'
    );
\vo_reg_681_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(3),
      Q => vo_reg_681(3),
      R => '0'
    );
\vo_reg_681_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(4),
      Q => vo_reg_681(4),
      R => '0'
    );
\vo_reg_681_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(5),
      Q => vo_reg_681(5),
      R => '0'
    );
\vo_reg_681_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => vo_fu_366_p2(6),
      Q => vo_reg_681(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_int_gen is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln43_reg_656_reg[0]\ : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[0]_0\ : in STD_LOGIC;
    icmp_ln43_reg_656 : in STD_LOGIC;
    medium_state_read_reg_660 : in STD_LOGIC;
    icmp_ln41_reg_616 : in STD_LOGIC;
    ap_ready_0 : in STD_LOGIC;
    s_class : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_12_reg_584 : in STD_LOGIC;
    grp_random_int_gen_fu_281_ap_start_reg : in STD_LOGIC;
    and_ln23_reg_580 : in STD_LOGIC;
    \ap_CS_fsm[8]_i_3_0\ : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_int_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_int_gen is
  signal \ap_CS_fsm[8]_i_6_n_1\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm_reg_n_1_[0]\ : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_ready_INST_0_i_1_n_1 : STD_LOGIC;
  signal ap_ready_INST_0_i_3_n_1 : STD_LOGIC;
  signal \^icmp_ln43_reg_656_reg[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_6\ : label is "soft_lutpair45";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of ap_ready_INST_0_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of ap_ready_INST_0_i_3 : label is "soft_lutpair46";
begin
  \ap_CS_fsm_reg[1]_0\(0) <= \^ap_cs_fsm_reg[1]_0\(0);
  \icmp_ln43_reg_656_reg[0]\ <= \^icmp_ln43_reg_656_reg[0]\;
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555C0CC"
    )
        port map (
      I0 => ap_start,
      I1 => Q(1),
      I2 => \^icmp_ln43_reg_656_reg[0]\,
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => grp_random_int_gen_fu_281_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\(0),
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      I2 => grp_random_int_gen_fu_281_ap_start_reg,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFD0"
    )
        port map (
      I0 => icmp_ln43_reg_656,
      I1 => medium_state_read_reg_660,
      I2 => icmp_ln41_reg_616,
      I3 => ap_ready_INST_0_i_3_n_1,
      I4 => \ap_CS_fsm[8]_i_6_n_1\,
      O => \^icmp_ln43_reg_656_reg[0]\
    );
\ap_CS_fsm[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => empty_12_reg_584,
      I1 => \^ap_cs_fsm_reg[1]_0\(0),
      I2 => s_class(0),
      I3 => ap_ready_0,
      O => \ap_CS_fsm[8]_i_6_n_1\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_1_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^ap_cs_fsm_reg[1]_0\(0),
      R => ap_rst
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA200AAAAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => icmp_ln43_reg_656,
      I2 => medium_state_read_reg_660,
      I3 => icmp_ln41_reg_616,
      I4 => ap_ready_INST_0_i_1_n_1,
      I5 => \ap_CS_fsm_reg[0]_0\,
      O => ap_ready
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => ap_ready_0,
      I1 => s_class(0),
      I2 => \^ap_cs_fsm_reg[1]_0\(0),
      I3 => empty_12_reg_584,
      I4 => ap_ready_INST_0_i_3_n_1,
      O => ap_ready_INST_0_i_1_n_1
    );
ap_ready_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => grp_random_int_gen_fu_281_ap_start_reg,
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      I2 => and_ln23_reg_580,
      I3 => \ap_CS_fsm[8]_i_3_0\,
      O => ap_ready_INST_0_i_3_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    source_addr_mac_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    source_addr_mac_ce0 : out STD_LOGIC;
    source_addr_mac_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    source_addr_mac_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    source_addr_mac_ce1 : out STD_LOGIC;
    source_addr_mac_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_addr_mac_ce0 : out STD_LOGIC;
    dest_addr_mac_we0 : out STD_LOGIC;
    dest_addr_mac_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_addr_mac_ce1 : out STD_LOGIC;
    dest_addr_mac_we1 : out STD_LOGIC;
    dest_addr_mac_d1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dest_addr_mac_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_address0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_ce0 : out STD_LOGIC;
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
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000100000000000";
  attribute ap_ST_fsm_state13 : string;
  attribute ap_ST_fsm_state13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00001000000000000";
  attribute ap_ST_fsm_state14 : string;
  attribute ap_ST_fsm_state14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00010000000000000";
  attribute ap_ST_fsm_state15 : string;
  attribute ap_ST_fsm_state15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00100000000000000";
  attribute ap_ST_fsm_state16 : string;
  attribute ap_ST_fsm_state16 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b01000000000000000";
  attribute ap_ST_fsm_state17 : string;
  attribute ap_ST_fsm_state17 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b10000000000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "17'b00000000100000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal and_ln23_reg_580 : STD_LOGIC;
  signal \and_ln23_reg_580[0]_i_1_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[16]_i_2_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[16]_i_3_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[16]_i_4_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[5]_i_3_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_4_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_5_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_1_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_1_[13]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state12 : STD_LOGIC;
  signal ap_CS_fsm_state13 : STD_LOGIC;
  signal ap_CS_fsm_state15 : STD_LOGIC;
  signal ap_CS_fsm_state16 : STD_LOGIC;
  signal ap_CS_fsm_state17 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9153_in : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal ap_NS_fsm1165_out : STD_LOGIC;
  signal ap_NS_fsm1169_out : STD_LOGIC;
  signal ap_NS_fsm_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_ready_INST_0_i_2_n_1 : STD_LOGIC;
  signal ap_ready_INST_0_i_4_n_1 : STD_LOGIC;
  signal \^data_address0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^data_ce0\ : STD_LOGIC;
  signal empty_12_fu_377_p2 : STD_LOGIC;
  signal empty_12_reg_584 : STD_LOGIC;
  signal empty_12_reg_5840 : STD_LOGIC;
  signal \empty_12_reg_584[0]_i_1_n_1\ : STD_LOGIC;
  signal empty_27_fu_467_p2 : STD_LOGIC;
  signal \empty_27_reg_588[0]_i_1_n_1\ : STD_LOGIC;
  signal \empty_27_reg_588_reg_n_1_[0]\ : STD_LOGIC;
  signal empty_31_reg_620 : STD_LOGIC;
  signal grp_compose_mac_frame_fu_271_ap_start_reg : STD_LOGIC;
  signal grp_compose_mac_frame_fu_271_n_10 : STD_LOGIC;
  signal grp_compose_mac_frame_fu_271_n_11 : STD_LOGIC;
  signal grp_compose_mac_frame_fu_271_n_12 : STD_LOGIC;
  signal grp_compose_mac_frame_fu_271_n_13 : STD_LOGIC;
  signal grp_compose_mac_frame_fu_271_n_14 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_ap_start_reg : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_ap_start_reg0 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_10 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_11 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_12 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_13 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_14 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_15 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_6 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_7 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_8 : STD_LOGIC;
  signal grp_enqueue_dequeue_fram_fu_243_n_9 : STD_LOGIC;
  signal grp_random_int_gen_fu_281_ap_ready : STD_LOGIC;
  signal grp_random_int_gen_fu_281_ap_start_reg : STD_LOGIC;
  signal grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1 : STD_LOGIC;
  signal grp_random_int_gen_fu_281_n_2 : STD_LOGIC;
  signal \i_0_reg_232[6]_i_4_n_1\ : STD_LOGIC;
  signal \i_0_reg_232[6]_i_5_n_1\ : STD_LOGIC;
  signal \i_0_reg_232[6]_i_6_n_1\ : STD_LOGIC;
  signal \i_0_reg_232[6]_i_7_n_1\ : STD_LOGIC;
  signal \i_0_reg_232[6]_i_8_n_1\ : STD_LOGIC;
  signal \i_0_reg_232[6]_i_9_n_1\ : STD_LOGIC;
  signal i_fu_479_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_reg_595 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \i_reg_595[6]_i_2_n_1\ : STD_LOGIC;
  signal icmp_ln41_reg_616 : STD_LOGIC;
  signal icmp_ln43_reg_656 : STD_LOGIC;
  signal icmp_ln56_reg_648 : STD_LOGIC;
  signal icmp_ln67_reg_624 : STD_LOGIC;
  signal icmp_ln69_reg_640 : STD_LOGIC;
  signal icmp_ln80_reg_628 : STD_LOGIC;
  signal icmp_ln82_reg_632 : STD_LOGIC;
  signal medium_state_read_1_reg_652 : STD_LOGIC;
  signal medium_state_read_2_reg_644 : STD_LOGIC;
  signal medium_state_read_3_reg_636 : STD_LOGIC;
  signal medium_state_read_reg_660 : STD_LOGIC;
  signal p_216_in : STD_LOGIC;
  signal \^source_addr_mac_address0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^source_addr_mac_ce0\ : STD_LOGIC;
  signal \tmp_reg_576[0]_i_1_n_1\ : STD_LOGIC;
  signal \tmp_reg_576_reg_n_1_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[16]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ap_CS_fsm[16]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_2\ : label is "soft_lutpair49";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[12]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[13]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[14]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[15]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[16]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of \empty_12_reg_584[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \empty_27_reg_588[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i_0_reg_232[6]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \i_0_reg_232[6]_i_8\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \i_reg_595[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \i_reg_595[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \i_reg_595[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \i_reg_595[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i_reg_595[6]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \tmp_reg_576[0]_i_1\ : label is "soft_lutpair53";
begin
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  data_address0(6 downto 0) <= \^data_address0\(6 downto 0);
  data_ce0 <= \^data_ce0\;
  dest_addr_mac_address0(2) <= \<const0>\;
  dest_addr_mac_address0(1) <= \<const0>\;
  dest_addr_mac_address0(0) <= \<const0>\;
  dest_addr_mac_address1(2) <= \<const0>\;
  dest_addr_mac_address1(1) <= \<const0>\;
  dest_addr_mac_address1(0) <= \<const0>\;
  dest_addr_mac_ce0 <= \<const0>\;
  dest_addr_mac_ce1 <= \<const0>\;
  dest_addr_mac_d0(7) <= \<const0>\;
  dest_addr_mac_d0(6) <= \<const0>\;
  dest_addr_mac_d0(5) <= \<const0>\;
  dest_addr_mac_d0(4) <= \<const0>\;
  dest_addr_mac_d0(3) <= \<const0>\;
  dest_addr_mac_d0(2) <= \<const0>\;
  dest_addr_mac_d0(1) <= \<const0>\;
  dest_addr_mac_d0(0) <= \<const0>\;
  dest_addr_mac_d1(7) <= \<const0>\;
  dest_addr_mac_d1(6) <= \<const0>\;
  dest_addr_mac_d1(5) <= \<const0>\;
  dest_addr_mac_d1(4) <= \<const0>\;
  dest_addr_mac_d1(3) <= \<const0>\;
  dest_addr_mac_d1(2) <= \<const0>\;
  dest_addr_mac_d1(1) <= \<const0>\;
  dest_addr_mac_d1(0) <= \<const0>\;
  dest_addr_mac_we0 <= \<const0>\;
  dest_addr_mac_we1 <= \<const0>\;
  source_addr_mac_address0(2 downto 1) <= \^source_addr_mac_address0\(2 downto 1);
  source_addr_mac_address0(0) <= \<const0>\;
  source_addr_mac_address1(2 downto 1) <= \^source_addr_mac_address0\(2 downto 1);
  source_addr_mac_address1(0) <= \<const1>\;
  source_addr_mac_ce0 <= \^source_addr_mac_ce0\;
  source_addr_mac_ce1 <= \^source_addr_mac_ce0\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\and_ln23_reg_580[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEAAAAAAA2AAAAA"
    )
        port map (
      I0 => and_ln23_reg_580,
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      I2 => ap_start,
      I3 => up(3),
      I4 => s_class(0),
      I5 => p_216_in,
      O => \and_ln23_reg_580[0]_i_1_n_1\
    );
\and_ln23_reg_580_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \and_ln23_reg_580[0]_i_1_n_1\,
      Q => and_ln23_reg_580,
      R => '0'
    );
\ap_CS_fsm[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => empty_12_reg_5840,
      I1 => \ap_CS_fsm[16]_i_2_n_1\,
      I2 => empty_27_fu_467_p2,
      I3 => empty_12_fu_377_p2,
      O => ap_NS_fsm(15)
    );
\ap_CS_fsm[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \ap_CS_fsm[16]_i_2_n_1\,
      I1 => up(3),
      I2 => \ap_CS_fsm_reg_n_1_[0]\,
      I3 => ap_start,
      O => ap_NS_fsm(16)
    );
\ap_CS_fsm[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => ap_CS_fsm_state16,
      I1 => ap_CS_fsm_state9153_in,
      I2 => \ap_CS_fsm[16]_i_3_n_1\,
      I3 => \ap_CS_fsm[16]_i_4_n_1\,
      I4 => grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1,
      I5 => grp_enqueue_dequeue_fram_fu_243_ap_start_reg0,
      O => \ap_CS_fsm[16]_i_2_n_1\
    );
\ap_CS_fsm[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_ce0\,
      I1 => ap_CS_fsm_state5,
      O => \ap_CS_fsm[16]_i_3_n_1\
    );
\ap_CS_fsm[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_CS_fsm_state6,
      I2 => ap_CS_fsm_state17,
      I3 => ap_CS_fsm_state3,
      O => \ap_CS_fsm[16]_i_4_n_1\
    );
\ap_CS_fsm[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => ap_CS_fsm_state10,
      I2 => \ap_CS_fsm_reg_n_1_[13]\,
      I3 => ap_CS_fsm_state12,
      O => grp_enqueue_dequeue_fram_fu_243_ap_start_reg0
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \ap_CS_fsm[16]_i_2_n_1\,
      I1 => up(3),
      I2 => ap_start,
      I3 => \ap_CS_fsm_reg_n_1_[0]\,
      I4 => s_class(0),
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \ap_CS_fsm[16]_i_2_n_1\,
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      I2 => ap_start,
      I3 => up(3),
      I4 => s_class(0),
      I5 => p_216_in,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \i_0_reg_232[6]_i_7_n_1\,
      I1 => \i_0_reg_232[6]_i_6_n_1\,
      I2 => \i_0_reg_232[6]_i_5_n_1\,
      I3 => \i_0_reg_232[6]_i_4_n_1\,
      O => p_216_in
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4040"
    )
        port map (
      I0 => empty_27_fu_467_p2,
      I1 => empty_12_fu_377_p2,
      I2 => empty_12_reg_5840,
      I3 => \ap_CS_fsm_reg_n_1_[0]\,
      I4 => ap_CS_fsm_state5,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => tx_power_lvl(3),
      I1 => tx_power_lvl(2),
      I2 => tx_power_lvl(1),
      I3 => tx_power_lvl(0),
      O => empty_27_fu_467_p2
    );
\ap_CS_fsm[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_ce0\,
      I1 => ap_NS_fsm1165_out,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^data_address0\(5),
      I1 => \^data_address0\(0),
      I2 => \^data_address0\(1),
      I3 => \^data_ce0\,
      I4 => \ap_CS_fsm[5]_i_3_n_1\,
      O => ap_NS_fsm1165_out
    );
\ap_CS_fsm[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^data_address0\(2),
      I1 => \^data_address0\(4),
      I2 => \^data_address0\(6),
      I3 => \^data_address0\(3),
      O => \ap_CS_fsm[5]_i_3_n_1\
    );
\ap_CS_fsm[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ap_CS_fsm_state12,
      I1 => \ap_CS_fsm_reg_n_1_[13]\,
      I2 => ap_CS_fsm_state10,
      I3 => ap_CS_fsm_state7,
      I4 => ap_CS_fsm_state5,
      I5 => \^data_ce0\,
      O => \ap_CS_fsm[8]_i_4_n_1\
    );
\ap_CS_fsm[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => up(1),
      I1 => up(2),
      I2 => up(3),
      O => \ap_CS_fsm[8]_i_5_n_1\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_1_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(10),
      Q => ap_CS_fsm_state11,
      R => ap_rst
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(11),
      Q => ap_CS_fsm_state12,
      R => ap_rst
    );
\ap_CS_fsm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(12),
      Q => ap_CS_fsm_state13,
      R => ap_rst
    );
\ap_CS_fsm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(13),
      Q => \ap_CS_fsm_reg_n_1_[13]\,
      R => ap_rst
    );
\ap_CS_fsm_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(14),
      Q => ap_CS_fsm_state15,
      R => ap_rst
    );
\ap_CS_fsm_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(15),
      Q => ap_CS_fsm_state16,
      R => ap_rst
    );
\ap_CS_fsm_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(16),
      Q => ap_CS_fsm_state17,
      R => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => \^data_ce0\,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state9153_in,
      R => ap_rst
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(9),
      Q => ap_CS_fsm_state10,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_1_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22E2"
    )
        port map (
      I0 => ap_ready_INST_0_i_4_n_1,
      I1 => empty_31_reg_620,
      I2 => icmp_ln56_reg_648,
      I3 => medium_state_read_1_reg_652,
      I4 => icmp_ln41_reg_616,
      O => ap_ready_INST_0_i_2_n_1
    );
ap_ready_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440F0044440000"
    )
        port map (
      I0 => medium_state_read_2_reg_644,
      I1 => icmp_ln69_reg_640,
      I2 => medium_state_read_3_reg_636,
      I3 => icmp_ln80_reg_628,
      I4 => icmp_ln67_reg_624,
      I5 => icmp_ln82_reg_632,
      O => ap_ready_INST_0_i_4_n_1
    );
\empty_12_reg_584[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => empty_12_fu_377_p2,
      I1 => empty_12_reg_5840,
      I2 => empty_12_reg_584,
      O => \empty_12_reg_584[0]_i_1_n_1\
    );
\empty_12_reg_584_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \empty_12_reg_584[0]_i_1_n_1\,
      Q => empty_12_reg_584,
      R => '0'
    );
\empty_27_reg_588[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => empty_27_fu_467_p2,
      I1 => empty_12_fu_377_p2,
      I2 => empty_12_reg_5840,
      I3 => \empty_27_reg_588_reg_n_1_[0]\,
      O => \empty_27_reg_588[0]_i_1_n_1\
    );
\empty_27_reg_588_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \empty_27_reg_588[0]_i_1_n_1\,
      Q => \empty_27_reg_588_reg_n_1_[0]\,
      R => '0'
    );
\empty_31_reg_620_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_compose_mac_frame_fu_271_n_10,
      Q => empty_31_reg_620,
      R => '0'
    );
grp_compose_mac_frame_fu_271: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compose_mac_frame
     port map (
      D(4) => ap_NS_fsm(13),
      D(3) => ap_NS_fsm(11),
      D(2) => ap_NS_fsm(9),
      D(1 downto 0) => ap_NS_fsm(6 downto 5),
      Q(1) => ap_CS_fsm_state6,
      Q(0) => \^data_ce0\,
      ap_NS_fsm1165_out => ap_NS_fsm1165_out,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      empty_31_reg_620 => empty_31_reg_620,
      grp_compose_mac_frame_fu_271_ap_start_reg => grp_compose_mac_frame_fu_271_ap_start_reg,
      grp_compose_mac_frame_fu_271_ap_start_reg_reg(0) => ap_NS_fsm_0(0),
      icmp_ln41_reg_616 => icmp_ln41_reg_616,
      icmp_ln67_reg_624 => icmp_ln67_reg_624,
      icmp_ln80_reg_628 => icmp_ln80_reg_628,
      \k_0_reg_539_reg[0]_0\ => grp_compose_mac_frame_fu_271_n_14,
      source_addr_mac_address0(1 downto 0) => \^source_addr_mac_address0\(2 downto 1),
      source_addr_mac_ce0 => \^source_addr_mac_ce0\,
      up(3 downto 0) => up(3 downto 0),
      \up[3]_0\ => grp_compose_mac_frame_fu_271_n_13,
      up_0_sp_1 => grp_compose_mac_frame_fu_271_n_10,
      up_1_sp_1 => grp_compose_mac_frame_fu_271_n_12,
      up_3_sp_1 => grp_compose_mac_frame_fu_271_n_11
    );
grp_compose_mac_frame_fu_271_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_compose_mac_frame_fu_271_n_14,
      Q => grp_compose_mac_frame_fu_271_ap_start_reg,
      R => ap_rst
    );
grp_enqueue_dequeue_fram_fu_243: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_enqueue_dequeue_fram
     port map (
      D(4) => ap_NS_fsm(14),
      D(3) => ap_NS_fsm(12),
      D(2) => ap_NS_fsm(10),
      D(1 downto 0) => ap_NS_fsm(8 downto 7),
      Q(11) => ap_CS_fsm_state15,
      Q(10) => \ap_CS_fsm_reg_n_1_[13]\,
      Q(9) => ap_CS_fsm_state13,
      Q(8) => ap_CS_fsm_state12,
      Q(7) => ap_CS_fsm_state11,
      Q(6) => ap_CS_fsm_state10,
      Q(5) => ap_CS_fsm_state9153_in,
      Q(4) => ap_CS_fsm_state8,
      Q(3) => ap_CS_fsm_state7,
      Q(2) => ap_CS_fsm_state6,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => \ap_CS_fsm_reg_n_1_[0]\,
      \ap_CS_fsm_reg[10]\ => grp_enqueue_dequeue_fram_fu_243_n_11,
      \ap_CS_fsm_reg[12]\ => grp_enqueue_dequeue_fram_fu_243_n_10,
      \ap_CS_fsm_reg[14]\ => grp_enqueue_dequeue_fram_fu_243_n_13,
      \ap_CS_fsm_reg[1]_0\ => grp_enqueue_dequeue_fram_fu_243_n_15,
      \ap_CS_fsm_reg[7]_0\ => grp_enqueue_dequeue_fram_fu_243_n_12,
      \ap_CS_fsm_reg[8]_0\ => ap_ready_INST_0_i_2_n_1,
      \ap_CS_fsm_reg[8]_1\ => grp_random_int_gen_fu_281_n_2,
      \ap_CS_fsm_reg[8]_2\ => \ap_CS_fsm[8]_i_4_n_1\,
      \ap_CS_fsm_reg[8]_3\(0) => ap_NS_fsm_0(0),
      \ap_CS_fsm_reg[8]_4\ => \ap_CS_fsm[8]_i_5_n_1\,
      \ap_CS_fsm_reg[9]_0\ => grp_enqueue_dequeue_fram_fu_243_n_14,
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      grp_enqueue_dequeue_fram_fu_243_ap_start_reg => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      grp_random_int_gen_fu_281_ap_start_reg => grp_random_int_gen_fu_281_ap_start_reg,
      grp_random_int_gen_fu_281_ap_start_reg_reg => grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1,
      grp_random_int_gen_fu_281_ap_start_reg_reg_0(0) => grp_random_int_gen_fu_281_ap_ready,
      icmp_ln43_reg_656 => icmp_ln43_reg_656,
      icmp_ln56_reg_648 => icmp_ln56_reg_648,
      icmp_ln69_reg_640 => icmp_ln69_reg_640,
      icmp_ln82_reg_632 => icmp_ln82_reg_632,
      medium_state(0) => medium_state(0),
      \medium_state[0]_0\ => grp_enqueue_dequeue_fram_fu_243_n_7,
      \medium_state[0]_1\ => grp_enqueue_dequeue_fram_fu_243_n_8,
      \medium_state[0]_2\ => grp_enqueue_dequeue_fram_fu_243_n_9,
      medium_state_0_sp_1 => grp_enqueue_dequeue_fram_fu_243_n_6,
      medium_state_read_1_reg_652 => medium_state_read_1_reg_652,
      medium_state_read_2_reg_644 => medium_state_read_2_reg_644,
      medium_state_read_3_reg_636 => medium_state_read_3_reg_636,
      medium_state_read_reg_660 => medium_state_read_reg_660
    );
grp_enqueue_dequeue_fram_fu_243_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_14,
      Q => grp_enqueue_dequeue_fram_fu_243_ap_start_reg,
      R => ap_rst
    );
grp_random_int_gen_fu_281: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_random_int_gen
     port map (
      D(0) => ap_NS_fsm(0),
      Q(1) => ap_CS_fsm_state9153_in,
      Q(0) => \ap_CS_fsm_reg_n_1_[0]\,
      and_ln23_reg_580 => and_ln23_reg_580,
      \ap_CS_fsm[8]_i_3_0\ => \empty_27_reg_588_reg_n_1_[0]\,
      \ap_CS_fsm_reg[0]_0\ => ap_ready_INST_0_i_2_n_1,
      \ap_CS_fsm_reg[1]_0\(0) => grp_random_int_gen_fu_281_ap_ready,
      ap_clk => ap_clk,
      ap_ready => \^ap_ready\,
      ap_ready_0 => \tmp_reg_576_reg_n_1_[0]\,
      ap_rst => ap_rst,
      ap_start => ap_start,
      empty_12_reg_584 => empty_12_reg_584,
      grp_random_int_gen_fu_281_ap_start_reg => grp_random_int_gen_fu_281_ap_start_reg,
      icmp_ln41_reg_616 => icmp_ln41_reg_616,
      icmp_ln43_reg_656 => icmp_ln43_reg_656,
      \icmp_ln43_reg_656_reg[0]\ => grp_random_int_gen_fu_281_n_2,
      medium_state_read_reg_660 => medium_state_read_reg_660,
      s_class(0) => s_class(0)
    );
grp_random_int_gen_fu_281_ap_start_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ap_CS_fsm_state15,
      I1 => ap_CS_fsm_state13,
      I2 => ap_CS_fsm_state11,
      I3 => ap_CS_fsm_state8,
      O => grp_random_int_gen_fu_281_ap_start_reg_i_2_n_1
    );
grp_random_int_gen_fu_281_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_15,
      Q => grp_random_int_gen_fu_281_ap_start_reg,
      R => ap_rst
    );
\i_0_reg_232[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808080880"
    )
        port map (
      I0 => empty_12_reg_5840,
      I1 => empty_12_fu_377_p2,
      I2 => tx_power_lvl(3),
      I3 => tx_power_lvl(2),
      I4 => tx_power_lvl(1),
      I5 => tx_power_lvl(0),
      O => ap_NS_fsm1169_out
    );
\i_0_reg_232[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \i_0_reg_232[6]_i_4_n_1\,
      I1 => \i_0_reg_232[6]_i_5_n_1\,
      I2 => \i_0_reg_232[6]_i_6_n_1\,
      I3 => \i_0_reg_232[6]_i_7_n_1\,
      I4 => \i_0_reg_232[6]_i_8_n_1\,
      O => empty_12_reg_5840
    );
\i_0_reg_232[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006660"
    )
        port map (
      I0 => d_rate(3),
      I1 => d_rate(1),
      I2 => d_rate(4),
      I3 => d_rate(2),
      I4 => \i_0_reg_232[6]_i_9_n_1\,
      O => empty_12_fu_377_p2
    );
\i_0_reg_232[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => c_identifier_channel_number(1),
      I1 => c_identifier_channel_number(0),
      I2 => c_identifier_operating_class(6),
      I3 => c_identifier_channel_number(3),
      O => \i_0_reg_232[6]_i_4_n_1\
    );
\i_0_reg_232[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => c_identifier_channel_number(5),
      I1 => c_identifier_operating_class(4),
      I2 => c_identifier_operating_class(1),
      I3 => c_identifier_operating_class(5),
      O => \i_0_reg_232[6]_i_5_n_1\
    );
\i_0_reg_232[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => c_identifier_operating_class(2),
      I1 => c_identifier_channel_number(4),
      I2 => c_identifier_channel_number(7),
      I3 => c_identifier_channel_number(6),
      O => \i_0_reg_232[6]_i_6_n_1\
    );
\i_0_reg_232[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => c_identifier_channel_number(2),
      I1 => c_identifier_operating_class(3),
      I2 => c_identifier_operating_class(0),
      I3 => c_identifier_operating_class(7),
      O => \i_0_reg_232[6]_i_7_n_1\
    );
\i_0_reg_232[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_1_[0]\,
      I1 => ap_start,
      I2 => up(3),
      I3 => s_class(0),
      O => \i_0_reg_232[6]_i_8_n_1\
    );
\i_0_reg_232[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFEFE"
    )
        port map (
      I0 => d_rate(5),
      I1 => d_rate(6),
      I2 => d_rate(0),
      I3 => d_rate(2),
      I4 => d_rate(1),
      I5 => d_rate(4),
      O => \i_0_reg_232[6]_i_9_n_1\
    );
\i_0_reg_232_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(0),
      Q => \^data_address0\(0),
      R => ap_NS_fsm1169_out
    );
\i_0_reg_232_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(1),
      Q => \^data_address0\(1),
      R => ap_NS_fsm1169_out
    );
\i_0_reg_232_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(2),
      Q => \^data_address0\(2),
      R => ap_NS_fsm1169_out
    );
\i_0_reg_232_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(3),
      Q => \^data_address0\(3),
      R => ap_NS_fsm1169_out
    );
\i_0_reg_232_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(4),
      Q => \^data_address0\(4),
      R => ap_NS_fsm1169_out
    );
\i_0_reg_232_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(5),
      Q => \^data_address0\(5),
      R => ap_NS_fsm1169_out
    );
\i_0_reg_232_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_595(6),
      Q => \^data_address0\(6),
      R => ap_NS_fsm1169_out
    );
\i_reg_595[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_address0\(0),
      O => i_fu_479_p2(0)
    );
\i_reg_595[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^data_address0\(1),
      I1 => \^data_address0\(0),
      O => i_fu_479_p2(1)
    );
\i_reg_595[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^data_address0\(2),
      I1 => \^data_address0\(1),
      I2 => \^data_address0\(0),
      O => i_fu_479_p2(2)
    );
\i_reg_595[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^data_address0\(3),
      I1 => \^data_address0\(0),
      I2 => \^data_address0\(1),
      I3 => \^data_address0\(2),
      O => i_fu_479_p2(3)
    );
\i_reg_595[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^data_address0\(4),
      I1 => \^data_address0\(2),
      I2 => \^data_address0\(1),
      I3 => \^data_address0\(0),
      I4 => \^data_address0\(3),
      O => i_fu_479_p2(4)
    );
\i_reg_595[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^data_address0\(3),
      I1 => \^data_address0\(0),
      I2 => \^data_address0\(1),
      I3 => \^data_address0\(2),
      I4 => \^data_address0\(4),
      I5 => \^data_address0\(5),
      O => i_fu_479_p2(5)
    );
\i_reg_595[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \^data_address0\(6),
      I1 => \i_reg_595[6]_i_2_n_1\,
      I2 => \^data_address0\(5),
      O => i_fu_479_p2(6)
    );
\i_reg_595[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^data_address0\(3),
      I1 => \^data_address0\(0),
      I2 => \^data_address0\(1),
      I3 => \^data_address0\(2),
      I4 => \^data_address0\(4),
      O => \i_reg_595[6]_i_2_n_1\
    );
\i_reg_595_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(0),
      Q => i_reg_595(0),
      R => '0'
    );
\i_reg_595_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(1),
      Q => i_reg_595(1),
      R => '0'
    );
\i_reg_595_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(2),
      Q => i_reg_595(2),
      R => '0'
    );
\i_reg_595_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(3),
      Q => i_reg_595(3),
      R => '0'
    );
\i_reg_595_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(4),
      Q => i_reg_595(4),
      R => '0'
    );
\i_reg_595_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(5),
      Q => i_reg_595(5),
      R => '0'
    );
\i_reg_595_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^data_ce0\,
      D => i_fu_479_p2(6),
      Q => i_reg_595(6),
      R => '0'
    );
\icmp_ln41_reg_616_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_compose_mac_frame_fu_271_n_11,
      Q => icmp_ln41_reg_616,
      R => '0'
    );
\icmp_ln43_reg_656_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_13,
      Q => icmp_ln43_reg_656,
      R => '0'
    );
\icmp_ln56_reg_648_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_10,
      Q => icmp_ln56_reg_648,
      R => '0'
    );
\icmp_ln67_reg_624_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_compose_mac_frame_fu_271_n_12,
      Q => icmp_ln67_reg_624,
      R => '0'
    );
\icmp_ln69_reg_640_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_11,
      Q => icmp_ln69_reg_640,
      R => '0'
    );
\icmp_ln80_reg_628_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_compose_mac_frame_fu_271_n_13,
      Q => icmp_ln80_reg_628,
      R => '0'
    );
\icmp_ln82_reg_632_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_12,
      Q => icmp_ln82_reg_632,
      R => '0'
    );
\medium_state_read_1_reg_652_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_6,
      Q => medium_state_read_1_reg_652,
      R => '0'
    );
\medium_state_read_2_reg_644_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_7,
      Q => medium_state_read_2_reg_644,
      R => '0'
    );
\medium_state_read_3_reg_636_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_8,
      Q => medium_state_read_3_reg_636,
      R => '0'
    );
\medium_state_read_reg_660_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => grp_enqueue_dequeue_fram_fu_243_n_9,
      Q => medium_state_read_reg_660,
      R => '0'
    );
\tmp_reg_576[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => \tmp_reg_576_reg_n_1_[0]\,
      I1 => \ap_CS_fsm_reg_n_1_[0]\,
      I2 => ap_start,
      I3 => up(3),
      O => \tmp_reg_576[0]_i_1_n_1\
    );
\tmp_reg_576_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_reg_576[0]_i_1_n_1\,
      Q => \tmp_reg_576_reg_n_1_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,ma_unitdatax_request,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ma_unitdatax_request,Vivado 2019.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "17'b00000000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of inst : label is "17'b00000001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of inst : label is "17'b00000010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of inst : label is "17'b00000100000000000";
  attribute ap_ST_fsm_state13 : string;
  attribute ap_ST_fsm_state13 of inst : label is "17'b00001000000000000";
  attribute ap_ST_fsm_state14 : string;
  attribute ap_ST_fsm_state14 of inst : label is "17'b00010000000000000";
  attribute ap_ST_fsm_state15 : string;
  attribute ap_ST_fsm_state15 of inst : label is "17'b00100000000000000";
  attribute ap_ST_fsm_state16 : string;
  attribute ap_ST_fsm_state16 of inst : label is "17'b01000000000000000";
  attribute ap_ST_fsm_state17 : string;
  attribute ap_ST_fsm_state17 of inst : label is "17'b10000000000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "17'b00000000000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "17'b00000000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "17'b00000000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "17'b00000000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "17'b00000000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "17'b00000000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "17'b00000000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of inst : label is "17'b00000000100000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of c_identifier_channel_number : signal is "xilinx.com:signal:data:1.0 c_identifier_channel_number DATA";
  attribute X_INTERFACE_PARAMETER of c_identifier_channel_number : signal is "XIL_INTERFACENAME c_identifier_channel_number, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c_identifier_operating_class : signal is "xilinx.com:signal:data:1.0 c_identifier_operating_class DATA";
  attribute X_INTERFACE_PARAMETER of c_identifier_operating_class : signal is "XIL_INTERFACENAME c_identifier_operating_class, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of d_rate : signal is "xilinx.com:signal:data:1.0 d_rate DATA";
  attribute X_INTERFACE_PARAMETER of d_rate : signal is "XIL_INTERFACENAME d_rate, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_address0 : signal is "xilinx.com:signal:data:1.0 data_address0 DATA";
  attribute X_INTERFACE_PARAMETER of data_address0 : signal is "XIL_INTERFACENAME data_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_q0 : signal is "xilinx.com:signal:data:1.0 data_q0 DATA";
  attribute X_INTERFACE_PARAMETER of data_q0 : signal is "XIL_INTERFACENAME data_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dest_addr_mac_address0 : signal is "xilinx.com:signal:data:1.0 dest_addr_mac_address0 DATA";
  attribute X_INTERFACE_PARAMETER of dest_addr_mac_address0 : signal is "XIL_INTERFACENAME dest_addr_mac_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dest_addr_mac_address1 : signal is "xilinx.com:signal:data:1.0 dest_addr_mac_address1 DATA";
  attribute X_INTERFACE_PARAMETER of dest_addr_mac_address1 : signal is "XIL_INTERFACENAME dest_addr_mac_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dest_addr_mac_d0 : signal is "xilinx.com:signal:data:1.0 dest_addr_mac_d0 DATA";
  attribute X_INTERFACE_PARAMETER of dest_addr_mac_d0 : signal is "XIL_INTERFACENAME dest_addr_mac_d0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dest_addr_mac_d1 : signal is "xilinx.com:signal:data:1.0 dest_addr_mac_d1 DATA";
  attribute X_INTERFACE_PARAMETER of dest_addr_mac_d1 : signal is "XIL_INTERFACENAME dest_addr_mac_d1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dest_addr_mac_q0 : signal is "xilinx.com:signal:data:1.0 dest_addr_mac_q0 DATA";
  attribute X_INTERFACE_PARAMETER of dest_addr_mac_q0 : signal is "XIL_INTERFACENAME dest_addr_mac_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dest_addr_mac_q1 : signal is "xilinx.com:signal:data:1.0 dest_addr_mac_q1 DATA";
  attribute X_INTERFACE_PARAMETER of dest_addr_mac_q1 : signal is "XIL_INTERFACENAME dest_addr_mac_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of expiry_time : signal is "xilinx.com:signal:data:1.0 expiry_time DATA";
  attribute X_INTERFACE_PARAMETER of expiry_time : signal is "XIL_INTERFACENAME expiry_time, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of medium_state : signal is "xilinx.com:signal:data:1.0 medium_state DATA";
  attribute X_INTERFACE_PARAMETER of medium_state : signal is "XIL_INTERFACENAME medium_state, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_class : signal is "xilinx.com:signal:data:1.0 s_class DATA";
  attribute X_INTERFACE_PARAMETER of s_class : signal is "XIL_INTERFACENAME s_class, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of source_addr_mac_address0 : signal is "xilinx.com:signal:data:1.0 source_addr_mac_address0 DATA";
  attribute X_INTERFACE_PARAMETER of source_addr_mac_address0 : signal is "XIL_INTERFACENAME source_addr_mac_address0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of source_addr_mac_address1 : signal is "xilinx.com:signal:data:1.0 source_addr_mac_address1 DATA";
  attribute X_INTERFACE_PARAMETER of source_addr_mac_address1 : signal is "XIL_INTERFACENAME source_addr_mac_address1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of source_addr_mac_q0 : signal is "xilinx.com:signal:data:1.0 source_addr_mac_q0 DATA";
  attribute X_INTERFACE_PARAMETER of source_addr_mac_q0 : signal is "XIL_INTERFACENAME source_addr_mac_q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of source_addr_mac_q1 : signal is "xilinx.com:signal:data:1.0 source_addr_mac_q1 DATA";
  attribute X_INTERFACE_PARAMETER of source_addr_mac_q1 : signal is "XIL_INTERFACENAME source_addr_mac_q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of t_slot : signal is "xilinx.com:signal:data:1.0 t_slot DATA";
  attribute X_INTERFACE_PARAMETER of t_slot : signal is "XIL_INTERFACENAME t_slot, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of tx_power_lvl : signal is "xilinx.com:signal:data:1.0 tx_power_lvl DATA";
  attribute X_INTERFACE_PARAMETER of tx_power_lvl : signal is "XIL_INTERFACENAME tx_power_lvl, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of up : signal is "xilinx.com:signal:data:1.0 up DATA";
  attribute X_INTERFACE_PARAMETER of up : signal is "XIL_INTERFACENAME up, LAYERED_METADATA undef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ma_unitdatax_request
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start,
      c_identifier_channel_number(7 downto 0) => c_identifier_channel_number(7 downto 0),
      c_identifier_operating_class(7 downto 0) => c_identifier_operating_class(7 downto 0),
      d_rate(6 downto 0) => d_rate(6 downto 0),
      data_address0(6 downto 0) => data_address0(6 downto 0),
      data_ce0 => data_ce0,
      data_q0(7 downto 0) => data_q0(7 downto 0),
      dest_addr_mac_address0(2 downto 0) => dest_addr_mac_address0(2 downto 0),
      dest_addr_mac_address1(2 downto 0) => dest_addr_mac_address1(2 downto 0),
      dest_addr_mac_ce0 => dest_addr_mac_ce0,
      dest_addr_mac_ce1 => dest_addr_mac_ce1,
      dest_addr_mac_d0(7 downto 0) => dest_addr_mac_d0(7 downto 0),
      dest_addr_mac_d1(7 downto 0) => dest_addr_mac_d1(7 downto 0),
      dest_addr_mac_q0(7 downto 0) => dest_addr_mac_q0(7 downto 0),
      dest_addr_mac_q1(7 downto 0) => dest_addr_mac_q1(7 downto 0),
      dest_addr_mac_we0 => dest_addr_mac_we0,
      dest_addr_mac_we1 => dest_addr_mac_we1,
      expiry_time(63 downto 0) => expiry_time(63 downto 0),
      medium_state(0) => medium_state(0),
      s_class(0) => s_class(0),
      source_addr_mac_address0(2 downto 0) => source_addr_mac_address0(2 downto 0),
      source_addr_mac_address1(2 downto 0) => source_addr_mac_address1(2 downto 0),
      source_addr_mac_ce0 => source_addr_mac_ce0,
      source_addr_mac_ce1 => source_addr_mac_ce1,
      source_addr_mac_q0(7 downto 0) => source_addr_mac_q0(7 downto 0),
      source_addr_mac_q1(7 downto 0) => source_addr_mac_q1(7 downto 0),
      t_slot(1 downto 0) => t_slot(1 downto 0),
      tx_power_lvl(3 downto 0) => tx_power_lvl(3 downto 0),
      up(3 downto 0) => up(3 downto 0)
    );
end STRUCTURE;
