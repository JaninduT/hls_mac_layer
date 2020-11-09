// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _random_int_gen_HH_
#define _random_int_gen_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ma_unitdatax_requcud.h"

namespace ap_rtl {

struct random_int_gen : public sc_module {
    // Port declarations 6
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;


    // Module declarations
    random_int_gen(sc_module_name name);
    SC_HAS_PROCESS(random_int_gen);

    ~random_int_gen();

    sc_trace_file* mVcdFile;

    ma_unitdatax_requcud<1,1,17,17,32>* ma_unitdatax_requcud_U10;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > rand_state;
    sc_signal< sc_lv<32> > low_1_fu_44_p2;
    sc_signal< sc_lv<32> > low_1_reg_139;
    sc_signal< sc_lv<32> > high_2_fu_132_p2;
    sc_signal< sc_lv<32> > high_2_reg_144;
    sc_signal< sc_lv<16> > trunc_ln1_reg_149;
    sc_signal< sc_lv<32> > x_2_fu_120_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<15> > low_fu_36_p1;
    sc_signal< sc_lv<15> > low_1_fu_44_p0;
    sc_signal< sc_lv<17> > high_fu_50_p4;
    sc_signal< sc_lv<16> > trunc_ln10_fu_73_p1;
    sc_signal< sc_lv<16> > add_ln11_fu_80_p2;
    sc_signal< sc_lv<32> > zext_ln11_fu_76_p1;
    sc_signal< sc_lv<32> > zext_ln11_1_fu_85_p1;
    sc_signal< sc_lv<32> > x_fu_89_p2;
    sc_signal< sc_lv<32> > x_1_fu_95_p2;
    sc_signal< sc_lv<31> > trunc_ln12_fu_100_p1;
    sc_signal< sc_lv<1> > tmp_1_fu_108_p3;
    sc_signal< sc_lv<32> > zext_ln13_1_fu_116_p1;
    sc_signal< sc_lv<32> > zext_ln13_fu_104_p1;
    sc_signal< sc_lv<17> > high_2_fu_132_p0;
    sc_signal< sc_lv<17> > high_2_fu_132_p1;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< sc_lv<32> > high_2_fu_132_p10;
    sc_signal< sc_lv<32> > low_1_fu_44_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_BC8F;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<16> ap_const_lv16_F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln11_fu_80_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_high_2_fu_132_p0();
    void thread_high_2_fu_132_p1();
    void thread_high_2_fu_132_p10();
    void thread_high_fu_50_p4();
    void thread_low_1_fu_44_p0();
    void thread_low_1_fu_44_p00();
    void thread_low_1_fu_44_p2();
    void thread_low_fu_36_p1();
    void thread_tmp_1_fu_108_p3();
    void thread_trunc_ln10_fu_73_p1();
    void thread_trunc_ln12_fu_100_p1();
    void thread_x_1_fu_95_p2();
    void thread_x_2_fu_120_p2();
    void thread_x_fu_89_p2();
    void thread_zext_ln11_1_fu_85_p1();
    void thread_zext_ln11_fu_76_p1();
    void thread_zext_ln13_1_fu_116_p1();
    void thread_zext_ln13_fu_104_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
