// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _start_timer_HH_
#define _start_timer_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct start_timer : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<1> > count_idle;
    sc_in< sc_lv<1> > medium_state;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    start_timer(sc_module_name name);
    SC_HAS_PROCESS(start_timer);

    ~start_timer();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > count_idle_read_read_fu_36_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<20> > i_fu_130_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<20> > i_0_reg_48;
    sc_signal< sc_lv<1> > icmp_ln8_fu_124_p2;
    sc_signal< sc_lv<1> > medium_state_read_read_fu_42_p2;
    sc_signal< sc_lv<1> > ap_phi_mux_timeout_write_assign_phi_fu_62_p4;
    sc_signal< sc_lv<7> > total_count_fu_28;
    sc_signal< sc_lv<16> > tc_fu_32;
    sc_signal< sc_lv<16> > grp_fu_73_p2;
    sc_signal< sc_lv<8> > sext_ln8_1_fu_106_p1;
    sc_signal< sc_lv<9> > zext_ln8_1_fu_110_p1;
    sc_signal< sc_lv<9> > add_ln8_fu_114_p2;
    sc_signal< sc_lv<21> > zext_ln8_fu_99_p1;
    sc_signal< sc_lv<21> > sext_ln8_fu_120_p1;
    sc_signal< sc_lv<1> > ap_return_preg;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< bool > ap_condition_61;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<7> ap_const_lv7_48;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<9> ap_const_lv9_1FE;
    static const sc_lv<20> ap_const_lv20_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln8_fu_114_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_condition_61();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_timeout_write_assign_phi_fu_62_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_count_idle_read_read_fu_36_p2();
    void thread_grp_fu_73_p2();
    void thread_i_fu_130_p2();
    void thread_icmp_ln8_fu_124_p2();
    void thread_medium_state_read_read_fu_42_p2();
    void thread_sext_ln8_1_fu_106_p1();
    void thread_sext_ln8_fu_120_p1();
    void thread_zext_ln8_1_fu_110_p1();
    void thread_zext_ln8_fu_99_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
