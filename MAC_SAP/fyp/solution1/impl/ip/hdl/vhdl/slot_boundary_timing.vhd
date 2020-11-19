-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity slot_boundary_timing is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    timing_mode : IN STD_LOGIC_VECTOR (2 downto 0);
    medium_state : IN STD_LOGIC_VECTOR (0 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of slot_boundary_timing is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln187_fu_64_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln187_reg_94 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln203_fu_70_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln203_reg_98 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln213_fu_76_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln213_reg_102 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_start_timer_fu_53_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_start_timer_fu_53_ap_ready : STD_LOGIC;
    signal grp_start_timer_fu_53_ap_done : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal sifs_timeout_1_reg_122 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal sifs_timeout_reg_131 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_start_timer_fu_53_ap_start : STD_LOGIC;
    signal grp_start_timer_fu_53_ap_idle : STD_LOGIC;
    signal grp_start_timer_fu_53_count_idle : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16 : STD_LOGIC_VECTOR (0 downto 0);
    signal idle_waiting_write_a_reg_28 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln229_fu_82_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln239_fu_88_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_predicate_op33_call_state6 : BOOLEAN;
    signal ap_predicate_op35_call_state6 : BOOLEAN;
    signal ap_block_state6_on_subcall_done : BOOLEAN;
    signal grp_start_timer_fu_53_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component start_timer IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        count_idle : IN STD_LOGIC_VECTOR (0 downto 0);
        medium_state : IN STD_LOGIC_VECTOR (0 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    grp_start_timer_fu_53 : component start_timer
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_start_timer_fu_53_ap_start,
        ap_done => grp_start_timer_fu_53_ap_done,
        ap_idle => grp_start_timer_fu_53_ap_idle,
        ap_ready => grp_start_timer_fu_53_ap_ready,
        count_idle => grp_start_timer_fu_53_count_idle,
        medium_state => medium_state,
        ap_return => grp_start_timer_fu_53_ap_return);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
                    ap_return_preg <= ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16;
                end if; 
            end if;
        end if;
    end process;


    grp_start_timer_fu_53_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_start_timer_fu_53_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state5) or ((icmp_ln213_fu_76_p2 = ap_const_lv1_0) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1) and (icmp_ln229_fu_82_p2 = ap_const_lv1_1)) or ((icmp_ln213_fu_76_p2 = ap_const_lv1_0) and (icmp_ln229_fu_82_p2 = ap_const_lv1_0) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1) and (icmp_ln239_fu_88_p2 = ap_const_lv1_1)) or ((icmp_ln213_fu_76_p2 = ap_const_lv1_1) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)) or ((icmp_ln203_fu_70_p2 = ap_const_lv1_1) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)) or ((icmp_ln187_fu_64_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
                    grp_start_timer_fu_53_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_start_timer_fu_53_ap_ready = ap_const_logic_1)) then 
                    grp_start_timer_fu_53_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    idle_waiting_write_a_reg_28_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7)) or ((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((sifs_timeout_reg_131 = ap_const_lv1_1) and (icmp_ln187_reg_94 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done)) or ((sifs_timeout_1_reg_122 = ap_const_lv1_1) and (icmp_ln213_reg_102 = ap_const_lv1_1) and (icmp_ln203_reg_98 = ap_const_lv1_0) and (icmp_ln187_reg_94 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done)))) then 
                idle_waiting_write_a_reg_28 <= grp_start_timer_fu_53_ap_return;
            elsif ((((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (grp_start_timer_fu_53_ap_return = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)) or ((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (grp_start_timer_fu_53_ap_return = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln213_fu_76_p2 = ap_const_lv1_0) and (icmp_ln239_fu_88_p2 = ap_const_lv1_0) and (icmp_ln229_fu_82_p2 = ap_const_lv1_0) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)))) then 
                idle_waiting_write_a_reg_28 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                icmp_ln187_reg_94 <= icmp_ln187_fu_64_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                icmp_ln203_reg_98 <= icmp_ln203_fu_70_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                icmp_ln213_reg_102 <= icmp_ln213_fu_76_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                sifs_timeout_1_reg_122 <= grp_start_timer_fu_53_ap_return;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                sifs_timeout_reg_131 <= grp_start_timer_fu_53_ap_return;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln187_fu_64_p2, icmp_ln203_fu_70_p2, icmp_ln213_fu_76_p2, grp_start_timer_fu_53_ap_return, ap_CS_fsm_state2, grp_start_timer_fu_53_ap_done, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state8, icmp_ln229_fu_82_p2, icmp_ln239_fu_88_p2, ap_CS_fsm_state6, ap_block_state6_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln213_fu_76_p2 = ap_const_lv1_0) and (icmp_ln239_fu_88_p2 = ap_const_lv1_0) and (icmp_ln229_fu_82_p2 = ap_const_lv1_0) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif (((icmp_ln213_fu_76_p2 = ap_const_lv1_0) and (icmp_ln229_fu_82_p2 = ap_const_lv1_0) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1) and (icmp_ln239_fu_88_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((icmp_ln213_fu_76_p2 = ap_const_lv1_0) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1) and (icmp_ln229_fu_82_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif (((icmp_ln213_fu_76_p2 = ap_const_lv1_1) and (icmp_ln203_fu_70_p2 = ap_const_lv1_0) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif (((icmp_ln203_fu_70_p2 = ap_const_lv1_1) and (icmp_ln187_fu_64_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                elsif (((icmp_ln187_fu_64_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (grp_start_timer_fu_53_ap_return = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (grp_start_timer_fu_53_ap_return = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                if (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (grp_start_timer_fu_53_ap_return = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                elsif (((grp_start_timer_fu_53_ap_done = ap_const_logic_1) and (grp_start_timer_fu_53_ap_return = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state6_on_subcall_done_assign_proc : process(grp_start_timer_fu_53_ap_done, ap_predicate_op33_call_state6, ap_predicate_op35_call_state6)
    begin
                ap_block_state6_on_subcall_done <= (((grp_start_timer_fu_53_ap_done = ap_const_logic_0) and (ap_predicate_op35_call_state6 = ap_const_boolean_1)) or ((grp_start_timer_fu_53_ap_done = ap_const_logic_0) and (ap_predicate_op33_call_state6 = ap_const_boolean_1)));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state6, ap_block_state6_on_subcall_done)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16_assign_proc : process(icmp_ln187_reg_94, icmp_ln203_reg_98, icmp_ln213_reg_102, grp_start_timer_fu_53_ap_return, sifs_timeout_1_reg_122, sifs_timeout_reg_131, idle_waiting_write_a_reg_28, ap_CS_fsm_state6)
    begin
        if ((((sifs_timeout_reg_131 = ap_const_lv1_1) and (icmp_ln187_reg_94 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6)) or ((sifs_timeout_1_reg_122 = ap_const_lv1_1) and (icmp_ln213_reg_102 = ap_const_lv1_1) and (icmp_ln203_reg_98 = ap_const_lv1_0) and (icmp_ln187_reg_94 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16 <= grp_start_timer_fu_53_ap_return;
        else 
            ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16 <= idle_waiting_write_a_reg_28;
        end if; 
    end process;


    ap_predicate_op33_call_state6_assign_proc : process(icmp_ln187_reg_94, icmp_ln203_reg_98, icmp_ln213_reg_102, sifs_timeout_1_reg_122)
    begin
                ap_predicate_op33_call_state6 <= ((sifs_timeout_1_reg_122 = ap_const_lv1_1) and (icmp_ln213_reg_102 = ap_const_lv1_1) and (icmp_ln203_reg_98 = ap_const_lv1_0) and (icmp_ln187_reg_94 = ap_const_lv1_0));
    end process;


    ap_predicate_op35_call_state6_assign_proc : process(icmp_ln187_reg_94, sifs_timeout_reg_131)
    begin
                ap_predicate_op35_call_state6 <= ((sifs_timeout_reg_131 = ap_const_lv1_1) and (icmp_ln187_reg_94 = ap_const_lv1_1));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state6, ap_block_state6_on_subcall_done)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16, ap_CS_fsm_state6, ap_block_state6_on_subcall_done, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_boolean_0 = ap_block_state6_on_subcall_done))) then 
            ap_return <= ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    grp_start_timer_fu_53_ap_start <= grp_start_timer_fu_53_ap_start_reg;

    grp_start_timer_fu_53_count_idle_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state6, ap_predicate_op33_call_state6, ap_predicate_op35_call_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            grp_start_timer_fu_53_count_idle <= ap_const_lv1_0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_predicate_op35_call_state6 = ap_const_boolean_1)) or ((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_predicate_op33_call_state6 = ap_const_boolean_1)))) then 
            grp_start_timer_fu_53_count_idle <= ap_const_lv1_1;
        else 
            grp_start_timer_fu_53_count_idle <= "X";
        end if; 
    end process;

    icmp_ln187_fu_64_p2 <= "1" when (timing_mode = ap_const_lv3_0) else "0";
    icmp_ln203_fu_70_p2 <= "1" when (timing_mode = ap_const_lv3_1) else "0";
    icmp_ln213_fu_76_p2 <= "1" when (timing_mode = ap_const_lv3_2) else "0";
    icmp_ln229_fu_82_p2 <= "1" when (timing_mode = ap_const_lv3_3) else "0";
    icmp_ln239_fu_88_p2 <= "1" when (timing_mode = ap_const_lv3_4) else "0";
end behav;
