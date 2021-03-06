-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity backoff_vo is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    current_txop_holder : OUT STD_LOGIC_VECTOR (2 downto 0);
    current_txop_holder_ap_vld : OUT STD_LOGIC;
    available_spaces_vo : IN STD_LOGIC_VECTOR (2 downto 0);
    vo_backoff_counter_i : IN STD_LOGIC_VECTOR (9 downto 0);
    vo_backoff_counter_o : OUT STD_LOGIC_VECTOR (9 downto 0);
    vo_backoff_counter_o_ap_vld : OUT STD_LOGIC;
    rand_state_i : IN STD_LOGIC_VECTOR (31 downto 0);
    rand_state_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    rand_state_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of backoff_vo is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_F : STD_LOGIC_VECTOR (9 downto 0) := "0000001111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_3FF : STD_LOGIC_VECTOR (9 downto 0) := "1111111111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_fu_44_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_80 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln255_fu_56_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln255_reg_84 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_random_int_gen_fu_32_ap_start : STD_LOGIC;
    signal grp_random_int_gen_fu_32_ap_done : STD_LOGIC;
    signal grp_random_int_gen_fu_32_ap_idle : STD_LOGIC;
    signal grp_random_int_gen_fu_32_ap_ready : STD_LOGIC;
    signal grp_random_int_gen_fu_32_rand_state_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_random_int_gen_fu_32_rand_state_o_ap_vld : STD_LOGIC;
    signal grp_random_int_gen_fu_32_ap_return : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_random_int_gen_fu_32_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_predicate_op14_call_state2 : BOOLEAN;
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal add_ln260_fu_62_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);

    component random_int_gen IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        max_val : IN STD_LOGIC_VECTOR (9 downto 0);
        rand_state_i : IN STD_LOGIC_VECTOR (31 downto 0);
        rand_state_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        rand_state_o_ap_vld : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (9 downto 0) );
    end component;



begin
    grp_random_int_gen_fu_32 : component random_int_gen
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_random_int_gen_fu_32_ap_start,
        ap_done => grp_random_int_gen_fu_32_ap_done,
        ap_idle => grp_random_int_gen_fu_32_ap_idle,
        ap_ready => grp_random_int_gen_fu_32_ap_ready,
        max_val => ap_const_lv10_F,
        rand_state_i => rand_state_i,
        rand_state_o => grp_random_int_gen_fu_32_rand_state_o,
        rand_state_o_ap_vld => grp_random_int_gen_fu_32_rand_state_o_ap_vld,
        ap_return => grp_random_int_gen_fu_32_ap_return);





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


    grp_random_int_gen_fu_32_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_random_int_gen_fu_32_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (icmp_ln255_fu_56_p2 = ap_const_lv1_1) and (tmp_fu_44_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_random_int_gen_fu_32_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_random_int_gen_fu_32_ap_ready = ap_const_logic_1)) then 
                    grp_random_int_gen_fu_32_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (tmp_fu_44_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                icmp_ln255_reg_84 <= icmp_ln255_fu_56_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                tmp_reg_80 <= available_spaces_vo(2 downto 2);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln260_fu_62_p2 <= std_logic_vector(unsigned(vo_backoff_counter_i) + unsigned(ap_const_lv10_3FF));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_block_state2_on_subcall_done_assign_proc : process(grp_random_int_gen_fu_32_ap_done, ap_predicate_op14_call_state2)
    begin
                ap_block_state2_on_subcall_done <= ((grp_random_int_gen_fu_32_ap_done = ap_const_logic_0) and (ap_predicate_op14_call_state2 = ap_const_boolean_1));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
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


    ap_predicate_op14_call_state2_assign_proc : process(tmp_reg_80, icmp_ln255_reg_84)
    begin
                ap_predicate_op14_call_state2 <= ((icmp_ln255_reg_84 = ap_const_lv1_1) and (tmp_reg_80 = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    current_txop_holder <= ap_const_lv3_4;

    current_txop_holder_ap_vld_assign_proc : process(tmp_reg_80, icmp_ln255_reg_84, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (icmp_ln255_reg_84 = ap_const_lv1_1) and (tmp_reg_80 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            current_txop_holder_ap_vld <= ap_const_logic_1;
        else 
            current_txop_holder_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_random_int_gen_fu_32_ap_start <= grp_random_int_gen_fu_32_ap_start_reg;
    icmp_ln255_fu_56_p2 <= "1" when (vo_backoff_counter_i = ap_const_lv10_0) else "0";

    rand_state_o_assign_proc : process(rand_state_i, tmp_reg_80, icmp_ln255_reg_84, grp_random_int_gen_fu_32_rand_state_o, grp_random_int_gen_fu_32_rand_state_o_ap_vld, ap_CS_fsm_state2)
    begin
        if (((icmp_ln255_reg_84 = ap_const_lv1_1) and (tmp_reg_80 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (grp_random_int_gen_fu_32_rand_state_o_ap_vld = ap_const_logic_1))) then 
            rand_state_o <= grp_random_int_gen_fu_32_rand_state_o;
        else 
            rand_state_o <= rand_state_i;
        end if; 
    end process;

    rand_state_o_ap_vld <= grp_random_int_gen_fu_32_rand_state_o_ap_vld;
    tmp_fu_44_p3 <= available_spaces_vo(2 downto 2);

    vo_backoff_counter_o_assign_proc : process(ap_start, ap_CS_fsm_state1, vo_backoff_counter_i, tmp_fu_44_p3, tmp_reg_80, icmp_ln255_fu_56_p2, icmp_ln255_reg_84, grp_random_int_gen_fu_32_ap_return, ap_CS_fsm_state2, ap_block_state2_on_subcall_done, add_ln260_fu_62_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (icmp_ln255_reg_84 = ap_const_lv1_1) and (tmp_reg_80 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            vo_backoff_counter_o <= grp_random_int_gen_fu_32_ap_return;
        elsif (((ap_start = ap_const_logic_1) and (icmp_ln255_fu_56_p2 = ap_const_lv1_0) and (tmp_fu_44_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            vo_backoff_counter_o <= add_ln260_fu_62_p2;
        else 
            vo_backoff_counter_o <= vo_backoff_counter_i;
        end if; 
    end process;


    vo_backoff_counter_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1, tmp_fu_44_p3, tmp_reg_80, icmp_ln255_fu_56_p2, icmp_ln255_reg_84, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if ((((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (icmp_ln255_reg_84 = ap_const_lv1_1) and (tmp_reg_80 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_1) and (icmp_ln255_fu_56_p2 = ap_const_lv1_0) and (tmp_fu_44_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            vo_backoff_counter_o_ap_vld <= ap_const_logic_1;
        else 
            vo_backoff_counter_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
