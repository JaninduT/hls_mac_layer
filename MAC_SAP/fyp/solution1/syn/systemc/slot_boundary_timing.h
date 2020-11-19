// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _slot_boundary_timing_HH_
#define _slot_boundary_timing_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "start_timer.h"

namespace ap_rtl {

struct slot_boundary_timing : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<3> > timing_mode;
    sc_in< sc_lv<1> > medium_state;
    sc_out< sc_lv<1> > ap_return;


    // Module declarations
    slot_boundary_timing(sc_module_name name);
    SC_HAS_PROCESS(slot_boundary_timing);

    ~slot_boundary_timing();

    sc_trace_file* mVcdFile;

    start_timer* grp_start_timer_fu_53;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > icmp_ln187_fu_64_p2;
    sc_signal< sc_lv<1> > icmp_ln187_reg_94;
    sc_signal< sc_lv<1> > icmp_ln203_fu_70_p2;
    sc_signal< sc_lv<1> > icmp_ln203_reg_98;
    sc_signal< sc_lv<1> > icmp_ln213_fu_76_p2;
    sc_signal< sc_lv<1> > icmp_ln213_reg_102;
    sc_signal< sc_lv<1> > grp_start_timer_fu_53_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_start_timer_fu_53_ap_ready;
    sc_signal< sc_logic > grp_start_timer_fu_53_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > sifs_timeout_1_reg_122;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > sifs_timeout_reg_131;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_start_timer_fu_53_ap_start;
    sc_signal< sc_logic > grp_start_timer_fu_53_ap_idle;
    sc_signal< sc_lv<1> > grp_start_timer_fu_53_count_idle;
    sc_signal< sc_lv<1> > ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16;
    sc_signal< sc_lv<1> > idle_waiting_write_a_reg_28;
    sc_signal< sc_lv<1> > icmp_ln229_fu_82_p2;
    sc_signal< sc_lv<1> > icmp_ln239_fu_88_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_predicate_op33_call_state6;
    sc_signal< bool > ap_predicate_op35_call_state6;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< sc_logic > grp_start_timer_fu_53_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > ap_return_preg;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_4;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_idle_waiting_write_a_phi_fu_32_p16();
    void thread_ap_predicate_op33_call_state6();
    void thread_ap_predicate_op35_call_state6();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_start_timer_fu_53_ap_start();
    void thread_grp_start_timer_fu_53_count_idle();
    void thread_icmp_ln187_fu_64_p2();
    void thread_icmp_ln203_fu_70_p2();
    void thread_icmp_ln213_fu_76_p2();
    void thread_icmp_ln229_fu_82_p2();
    void thread_icmp_ln239_fu_88_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
