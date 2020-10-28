// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _start_backoff_vo_HH_
#define _start_backoff_vo_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "start_backoff_vo_bkb.h"

namespace ap_rtl {

struct start_backoff_vo : public sc_module {
    // Port declarations 7
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<1> > invoke_reason;


    // Module declarations
    start_backoff_vo(sc_module_name name);
    SC_HAS_PROCESS(start_backoff_vo);

    ~start_backoff_vo();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    start_backoff_vo_bkb<1,1,17,17,32>* start_backoff_vo_bkb_U1;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > CW_vo;
    sc_signal< sc_lv<32> > rand_state;
    sc_signal< sc_lv<32> > low_1_fu_96_p2;
    sc_signal< sc_lv<32> > low_1_reg_197;
    sc_signal< sc_lv<32> > high_2_fu_184_p2;
    sc_signal< sc_lv<32> > high_2_reg_202;
    sc_signal< sc_lv<16> > trunc_ln_reg_207;
    sc_signal< sc_lv<1> > invoke_reason_read_read_fu_44_p2;
    sc_signal< sc_lv<10> > or_ln273_fu_72_p2;
    sc_signal< sc_lv<1> > icmp_ln272_fu_60_p2;
    sc_signal< sc_lv<32> > x_2_fu_172_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > shl_ln273_fu_66_p2;
    sc_signal< sc_lv<15> > low_fu_88_p1;
    sc_signal< sc_lv<15> > low_1_fu_96_p0;
    sc_signal< sc_lv<17> > high_fu_102_p4;
    sc_signal< sc_lv<16> > trunc_ln9_fu_125_p1;
    sc_signal< sc_lv<16> > add_ln10_fu_132_p2;
    sc_signal< sc_lv<32> > zext_ln10_fu_128_p1;
    sc_signal< sc_lv<32> > zext_ln10_1_fu_137_p1;
    sc_signal< sc_lv<32> > x_fu_141_p2;
    sc_signal< sc_lv<32> > x_1_fu_147_p2;
    sc_signal< sc_lv<31> > trunc_ln11_fu_152_p1;
    sc_signal< sc_lv<1> > tmp_fu_160_p3;
    sc_signal< sc_lv<32> > zext_ln13_1_fu_168_p1;
    sc_signal< sc_lv<32> > zext_ln13_fu_156_p1;
    sc_signal< sc_lv<17> > high_2_fu_184_p0;
    sc_signal< sc_lv<17> > high_2_fu_184_p1;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< sc_lv<32> > high_2_fu_184_p10;
    sc_signal< sc_lv<32> > low_1_fu_96_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<10> ap_const_lv10_F;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<10> ap_const_lv10_3FF;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_BC8F;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<16> ap_const_lv16_F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln10_fu_132_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_high_2_fu_184_p0();
    void thread_high_2_fu_184_p1();
    void thread_high_2_fu_184_p10();
    void thread_high_fu_102_p4();
    void thread_icmp_ln272_fu_60_p2();
    void thread_invoke_reason_read_read_fu_44_p2();
    void thread_low_1_fu_96_p0();
    void thread_low_1_fu_96_p00();
    void thread_low_1_fu_96_p2();
    void thread_low_fu_88_p1();
    void thread_or_ln273_fu_72_p2();
    void thread_shl_ln273_fu_66_p2();
    void thread_tmp_fu_160_p3();
    void thread_trunc_ln11_fu_152_p1();
    void thread_trunc_ln9_fu_125_p1();
    void thread_x_1_fu_147_p2();
    void thread_x_2_fu_172_p2();
    void thread_x_fu_141_p2();
    void thread_zext_ln10_1_fu_137_p1();
    void thread_zext_ln10_fu_128_p1();
    void thread_zext_ln13_1_fu_168_p1();
    void thread_zext_ln13_fu_156_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
