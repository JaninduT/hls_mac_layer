// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "start_backoff_vi.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic start_backoff_vi::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic start_backoff_vi::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> start_backoff_vi::ap_ST_fsm_state1 = "1";
const sc_lv<2> start_backoff_vi::ap_ST_fsm_state2 = "10";
const sc_lv<32> start_backoff_vi::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<10> start_backoff_vi::ap_const_lv10_F = "1111";
const sc_lv<1> start_backoff_vi::ap_const_lv1_0 = "0";
const sc_lv<1> start_backoff_vi::ap_const_lv1_1 = "1";
const sc_lv<32> start_backoff_vi::ap_const_lv32_1 = "1";
const sc_lv<10> start_backoff_vi::ap_const_lv10_3FF = "1111111111";
const sc_lv<10> start_backoff_vi::ap_const_lv10_1 = "1";
const bool start_backoff_vi::ap_const_boolean_1 = true;

start_backoff_vi::start_backoff_vi(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_random_int_gen_fu_37 = new random_int_gen("grp_random_int_gen_fu_37");
    grp_random_int_gen_fu_37->ap_clk(ap_clk);
    grp_random_int_gen_fu_37->ap_rst(ap_rst);
    grp_random_int_gen_fu_37->ap_start(grp_random_int_gen_fu_37_ap_start);
    grp_random_int_gen_fu_37->ap_done(grp_random_int_gen_fu_37_ap_done);
    grp_random_int_gen_fu_37->ap_idle(grp_random_int_gen_fu_37_ap_idle);
    grp_random_int_gen_fu_37->ap_ready(grp_random_int_gen_fu_37_ap_ready);
    grp_random_int_gen_fu_37->max_val(CW_vi_loc_2_reg_24);
    grp_random_int_gen_fu_37->rand_state_i(rand_state_i);
    grp_random_int_gen_fu_37->rand_state_o(grp_random_int_gen_fu_37_rand_state_o);
    grp_random_int_gen_fu_37->rand_state_o_ap_vld(grp_random_int_gen_fu_37_rand_state_o_ap_vld);
    grp_random_int_gen_fu_37->ap_return(grp_random_int_gen_fu_37_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_CW_vi_o);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( CW_vi_i );
    sensitive << ( invoke_reason_read_read_fu_18_p2 );
    sensitive << ( icmp_ln335_fu_56_p2 );
    sensitive << ( or_ln336_fu_68_p2 );

    SC_METHOD(thread_CW_vi_o_ap_vld);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( invoke_reason_read_read_fu_18_p2 );
    sensitive << ( icmp_ln335_fu_56_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_random_int_gen_fu_37_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_random_int_gen_fu_37_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_grp_random_int_gen_fu_37_ap_start);
    sensitive << ( grp_random_int_gen_fu_37_ap_start_reg );

    SC_METHOD(thread_icmp_ln335_fu_56_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( CW_vi_i );
    sensitive << ( invoke_reason_read_read_fu_18_p2 );

    SC_METHOD(thread_invoke_reason_read_read_fu_18_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( invoke_reason );

    SC_METHOD(thread_or_ln336_fu_68_p2);
    sensitive << ( shl_ln336_fu_62_p2 );

    SC_METHOD(thread_rand_state_o);
    sensitive << ( rand_state_i );
    sensitive << ( grp_random_int_gen_fu_37_rand_state_o );
    sensitive << ( grp_random_int_gen_fu_37_rand_state_o_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_rand_state_o_ap_vld);
    sensitive << ( grp_random_int_gen_fu_37_rand_state_o_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_shl_ln336_fu_62_p2);
    sensitive << ( CW_vi_i );

    SC_METHOD(thread_vi_backoff_counter);
    sensitive << ( grp_random_int_gen_fu_37_ap_done );
    sensitive << ( grp_random_int_gen_fu_37_ap_return );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_vi_backoff_counter_ap_vld);
    sensitive << ( grp_random_int_gen_fu_37_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( grp_random_int_gen_fu_37_ap_done );
    sensitive << ( ap_CS_fsm_state2 );

    ap_CS_fsm = "01";
    grp_random_int_gen_fu_37_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "start_backoff_vi_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, invoke_reason, "(port)invoke_reason");
    sc_trace(mVcdFile, CW_vi_i, "(port)CW_vi_i");
    sc_trace(mVcdFile, CW_vi_o, "(port)CW_vi_o");
    sc_trace(mVcdFile, CW_vi_o_ap_vld, "(port)CW_vi_o_ap_vld");
    sc_trace(mVcdFile, rand_state_i, "(port)rand_state_i");
    sc_trace(mVcdFile, rand_state_o, "(port)rand_state_o");
    sc_trace(mVcdFile, rand_state_o_ap_vld, "(port)rand_state_o_ap_vld");
    sc_trace(mVcdFile, vi_backoff_counter, "(port)vi_backoff_counter");
    sc_trace(mVcdFile, vi_backoff_counter_ap_vld, "(port)vi_backoff_counter_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_ap_start, "grp_random_int_gen_fu_37_ap_start");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_ap_done, "grp_random_int_gen_fu_37_ap_done");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_ap_idle, "grp_random_int_gen_fu_37_ap_idle");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_ap_ready, "grp_random_int_gen_fu_37_ap_ready");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_rand_state_o, "grp_random_int_gen_fu_37_rand_state_o");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_rand_state_o_ap_vld, "grp_random_int_gen_fu_37_rand_state_o_ap_vld");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_ap_return, "grp_random_int_gen_fu_37_ap_return");
    sc_trace(mVcdFile, CW_vi_loc_2_reg_24, "CW_vi_loc_2_reg_24");
    sc_trace(mVcdFile, invoke_reason_read_read_fu_18_p2, "invoke_reason_read_read_fu_18_p2");
    sc_trace(mVcdFile, icmp_ln335_fu_56_p2, "icmp_ln335_fu_56_p2");
    sc_trace(mVcdFile, or_ln336_fu_68_p2, "or_ln336_fu_68_p2");
    sc_trace(mVcdFile, grp_random_int_gen_fu_37_ap_start_reg, "grp_random_int_gen_fu_37_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, shl_ln336_fu_62_p2, "shl_ln336_fu_62_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

start_backoff_vi::~start_backoff_vi() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_random_int_gen_fu_37;
}

void start_backoff_vi::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        if ((esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_1) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln335_fu_56_p2.read()))) {
            CW_vi_loc_2_reg_24 = or_ln336_fu_68_p2.read();
        } else if ((esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_1) && 
                    esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln335_fu_56_p2.read()))) {
            CW_vi_loc_2_reg_24 = CW_vi_i.read();
        } else if (esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_0)) {
            CW_vi_loc_2_reg_24 = ap_const_lv10_F;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_random_int_gen_fu_37_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_random_int_gen_fu_37_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_random_int_gen_fu_37_ap_ready.read())) {
            grp_random_int_gen_fu_37_ap_start_reg = ap_const_logic_0;
        }
    }
}

void start_backoff_vi::thread_CW_vi_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        if ((esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_1) && 
             esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln335_fu_56_p2.read()))) {
            CW_vi_o = or_ln336_fu_68_p2.read();
        } else if (esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_0)) {
            CW_vi_o = ap_const_lv10_F;
        } else {
            CW_vi_o = CW_vi_i.read();
        }
    } else {
        CW_vi_o = CW_vi_i.read();
    }
}

void start_backoff_vi::thread_CW_vi_o_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(invoke_reason_read_read_fu_18_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln335_fu_56_p2.read())))) {
        CW_vi_o_ap_vld = ap_const_logic_1;
    } else {
        CW_vi_o_ap_vld = ap_const_logic_0;
    }
}

void start_backoff_vi::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void start_backoff_vi::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void start_backoff_vi::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(grp_random_int_gen_fu_37_ap_done.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void start_backoff_vi::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void start_backoff_vi::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(grp_random_int_gen_fu_37_ap_done.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void start_backoff_vi::thread_grp_random_int_gen_fu_37_ap_start() {
    grp_random_int_gen_fu_37_ap_start = grp_random_int_gen_fu_37_ap_start_reg.read();
}

void start_backoff_vi::thread_icmp_ln335_fu_56_p2() {
    icmp_ln335_fu_56_p2 = (!CW_vi_i.read().is_01() || !ap_const_lv10_3FF.is_01())? sc_lv<1>(): sc_lv<1>(CW_vi_i.read() == ap_const_lv10_3FF);
}

void start_backoff_vi::thread_invoke_reason_read_read_fu_18_p2() {
    invoke_reason_read_read_fu_18_p2 = invoke_reason.read();
}

void start_backoff_vi::thread_or_ln336_fu_68_p2() {
    or_ln336_fu_68_p2 = (shl_ln336_fu_62_p2.read() | ap_const_lv10_1);
}

void start_backoff_vi::thread_rand_state_o() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, grp_random_int_gen_fu_37_rand_state_o_ap_vld.read()))) {
        rand_state_o = grp_random_int_gen_fu_37_rand_state_o.read();
    } else {
        rand_state_o = rand_state_i.read();
    }
}

void start_backoff_vi::thread_rand_state_o_ap_vld() {
    rand_state_o_ap_vld = grp_random_int_gen_fu_37_rand_state_o_ap_vld.read();
}

void start_backoff_vi::thread_shl_ln336_fu_62_p2() {
    shl_ln336_fu_62_p2 = (!ap_const_lv10_1.is_01())? sc_lv<10>(): CW_vi_i.read() << (unsigned short)ap_const_lv10_1.to_uint();
}

void start_backoff_vi::thread_vi_backoff_counter() {
    vi_backoff_counter = grp_random_int_gen_fu_37_ap_return.read();
}

void start_backoff_vi::thread_vi_backoff_counter_ap_vld() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(grp_random_int_gen_fu_37_ap_done.read(), ap_const_logic_1))) {
        vi_backoff_counter_ap_vld = ap_const_logic_1;
    } else {
        vi_backoff_counter_ap_vld = ap_const_logic_0;
    }
}

void start_backoff_vi::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_random_int_gen_fu_37_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<2>) ("XX");
            break;
    }
}

}

