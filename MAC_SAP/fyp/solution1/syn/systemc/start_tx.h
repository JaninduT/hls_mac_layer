// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _start_tx_HH_
#define _start_tx_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "enqueue_dequeue_fram.h"

namespace ap_rtl {

struct start_tx : public sc_module {
    // Port declarations 53
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<3> > current_txop_holder;
    sc_out< sc_lv<7> > tx_frame_address0;
    sc_out< sc_logic > tx_frame_ce0;
    sc_out< sc_logic > tx_frame_we0;
    sc_out< sc_lv<8> > tx_frame_d0;
    sc_in< sc_lv<8> > tx_frame_q0;
    sc_in< sc_lv<3> > available_spaces_bk_i;
    sc_out< sc_lv<3> > available_spaces_bk_o;
    sc_out< sc_logic > available_spaces_bk_o_ap_vld;
    sc_in< sc_lv<2> > write_pointer_bk_i;
    sc_out< sc_lv<2> > write_pointer_bk_o;
    sc_out< sc_logic > write_pointer_bk_o_ap_vld;
    sc_in< sc_lv<3> > available_spaces_be_i;
    sc_out< sc_lv<3> > available_spaces_be_o;
    sc_out< sc_logic > available_spaces_be_o_ap_vld;
    sc_in< sc_lv<2> > write_pointer_be_i;
    sc_out< sc_lv<2> > write_pointer_be_o;
    sc_out< sc_logic > write_pointer_be_o_ap_vld;
    sc_in< sc_lv<3> > available_spaces_vi_i;
    sc_out< sc_lv<3> > available_spaces_vi_o;
    sc_out< sc_logic > available_spaces_vi_o_ap_vld;
    sc_in< sc_lv<2> > write_pointer_vi_i;
    sc_out< sc_lv<2> > write_pointer_vi_o;
    sc_out< sc_logic > write_pointer_vi_o_ap_vld;
    sc_in< sc_lv<3> > available_spaces_vo_i;
    sc_out< sc_lv<3> > available_spaces_vo_o;
    sc_out< sc_logic > available_spaces_vo_o_ap_vld;
    sc_in< sc_lv<2> > write_pointer_vo_i;
    sc_out< sc_lv<2> > write_pointer_vo_o;
    sc_out< sc_logic > write_pointer_vo_o_ap_vld;
    sc_out< sc_lv<11> > edca_queues_address0;
    sc_out< sc_logic > edca_queues_ce0;
    sc_out< sc_logic > edca_queues_we0;
    sc_out< sc_lv<8> > edca_queues_d0;
    sc_in< sc_lv<8> > edca_queues_q0;
    sc_in< sc_lv<2> > read_pointer_bk_i;
    sc_out< sc_lv<2> > read_pointer_bk_o;
    sc_out< sc_logic > read_pointer_bk_o_ap_vld;
    sc_in< sc_lv<2> > read_pointer_be_i;
    sc_out< sc_lv<2> > read_pointer_be_o;
    sc_out< sc_logic > read_pointer_be_o_ap_vld;
    sc_in< sc_lv<2> > read_pointer_vi_i;
    sc_out< sc_lv<2> > read_pointer_vi_o;
    sc_out< sc_logic > read_pointer_vi_o_ap_vld;
    sc_in< sc_lv<2> > read_pointer_vo_i;
    sc_out< sc_lv<2> > read_pointer_vo_o;
    sc_out< sc_logic > read_pointer_vo_o_ap_vld;
    sc_signal< sc_lv<1> > ap_var_for_const0;


    // Module declarations
    start_tx(sc_module_name name);
    SC_HAS_PROCESS(start_tx);

    ~start_tx();

    sc_trace_file* mVcdFile;

    enqueue_dequeue_fram* grp_enqueue_dequeue_fram_fu_44;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > add_ln368_fu_83_p2;
    sc_signal< sc_lv<2> > add_ln368_reg_90;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_ap_start;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_ap_done;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_ap_idle;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_ap_ready;
    sc_signal< sc_lv<7> > grp_enqueue_dequeue_fram_fu_44_inout_frame_address0;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_inout_frame_ce0;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_inout_frame_we0;
    sc_signal< sc_lv<8> > grp_enqueue_dequeue_fram_fu_44_inout_frame_d0;
    sc_signal< sc_lv<3> > grp_enqueue_dequeue_fram_fu_44_available_spaces_bk_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_available_spaces_bk_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_write_pointer_bk_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_write_pointer_bk_o_ap_vld;
    sc_signal< sc_lv<3> > grp_enqueue_dequeue_fram_fu_44_available_spaces_be_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_available_spaces_be_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_write_pointer_be_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_write_pointer_be_o_ap_vld;
    sc_signal< sc_lv<3> > grp_enqueue_dequeue_fram_fu_44_available_spaces_vi_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_available_spaces_vi_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_write_pointer_vi_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_write_pointer_vi_o_ap_vld;
    sc_signal< sc_lv<3> > grp_enqueue_dequeue_fram_fu_44_available_spaces_vo_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_available_spaces_vo_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_write_pointer_vo_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_write_pointer_vo_o_ap_vld;
    sc_signal< sc_lv<11> > grp_enqueue_dequeue_fram_fu_44_edca_queues_address0;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_edca_queues_ce0;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_edca_queues_we0;
    sc_signal< sc_lv<8> > grp_enqueue_dequeue_fram_fu_44_edca_queues_d0;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_read_pointer_bk_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_read_pointer_bk_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_read_pointer_be_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_read_pointer_be_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_read_pointer_vi_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_read_pointer_vi_o_ap_vld;
    sc_signal< sc_lv<2> > grp_enqueue_dequeue_fram_fu_44_read_pointer_vo_o;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_read_pointer_vo_o_ap_vld;
    sc_signal< sc_lv<4> > grp_enqueue_dequeue_fram_fu_44_ap_return;
    sc_signal< sc_logic > grp_enqueue_dequeue_fram_fu_44_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > trunc_ln368_fu_79_p1;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln368_fu_83_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_available_spaces_be_o();
    void thread_available_spaces_be_o_ap_vld();
    void thread_available_spaces_bk_o();
    void thread_available_spaces_bk_o_ap_vld();
    void thread_available_spaces_vi_o();
    void thread_available_spaces_vi_o_ap_vld();
    void thread_available_spaces_vo_o();
    void thread_available_spaces_vo_o_ap_vld();
    void thread_edca_queues_address0();
    void thread_edca_queues_ce0();
    void thread_edca_queues_d0();
    void thread_edca_queues_we0();
    void thread_grp_enqueue_dequeue_fram_fu_44_ap_start();
    void thread_read_pointer_be_o();
    void thread_read_pointer_be_o_ap_vld();
    void thread_read_pointer_bk_o();
    void thread_read_pointer_bk_o_ap_vld();
    void thread_read_pointer_vi_o();
    void thread_read_pointer_vi_o_ap_vld();
    void thread_read_pointer_vo_o();
    void thread_read_pointer_vo_o_ap_vld();
    void thread_trunc_ln368_fu_79_p1();
    void thread_tx_frame_address0();
    void thread_tx_frame_ce0();
    void thread_tx_frame_d0();
    void thread_tx_frame_we0();
    void thread_write_pointer_be_o();
    void thread_write_pointer_be_o_ap_vld();
    void thread_write_pointer_bk_o();
    void thread_write_pointer_bk_o_ap_vld();
    void thread_write_pointer_vi_o();
    void thread_write_pointer_vi_o_ap_vld();
    void thread_write_pointer_vo_o();
    void thread_write_pointer_vo_o_ap_vld();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
