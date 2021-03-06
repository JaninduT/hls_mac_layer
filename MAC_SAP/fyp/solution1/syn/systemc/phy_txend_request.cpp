// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "phy_txend_request.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic phy_txend_request::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic phy_txend_request::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> phy_txend_request::ap_ST_fsm_state1 = "1";
const sc_lv<32> phy_txend_request::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> phy_txend_request::ap_const_lv1_0 = "0";
const sc_lv<1> phy_txend_request::ap_const_lv1_1 = "1";
const bool phy_txend_request::ap_const_boolean_1 = true;

phy_txend_request::phy_txend_request(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_stop_tx_load_load_fu_4_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( stop_tx );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_CS_fsm = "1";
    stop_tx = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "phy_txend_request_sc_trace_" << apTFileNum ++;
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
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, stop_tx, "stop_tx");
    sc_trace(mVcdFile, stop_tx_load_load_fu_4_p1, "stop_tx_load_load_fu_4_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

phy_txend_request::~phy_txend_request() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void phy_txend_request::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_lv1_0, stop_tx_load_load_fu_4_p1.read()))) {
        stop_tx = ap_const_lv1_1;
    }
}

void phy_txend_request::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void phy_txend_request::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void phy_txend_request::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void phy_txend_request::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void phy_txend_request::thread_stop_tx_load_load_fu_4_p1() {
    stop_tx_load_load_fu_4_p1 = stop_tx.read();
}

void phy_txend_request::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}

