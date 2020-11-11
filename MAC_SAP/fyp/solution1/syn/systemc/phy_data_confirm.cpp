// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "phy_data_confirm.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic phy_data_confirm::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic phy_data_confirm::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> phy_data_confirm::ap_ST_fsm_state1 = "1";
const sc_lv<4> phy_data_confirm::ap_ST_fsm_state2 = "10";
const sc_lv<4> phy_data_confirm::ap_ST_fsm_state3 = "100";
const sc_lv<4> phy_data_confirm::ap_ST_fsm_state4 = "1000";
const sc_lv<32> phy_data_confirm::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<7> phy_data_confirm::ap_const_lv7_0 = "0000000";
const sc_lv<1> phy_data_confirm::ap_const_lv1_0 = "0";
const sc_lv<32> phy_data_confirm::ap_const_lv32_1 = "1";
const sc_lv<1> phy_data_confirm::ap_const_lv1_1 = "1";
const sc_lv<32> phy_data_confirm::ap_const_lv32_2 = "10";
const sc_lv<32> phy_data_confirm::ap_const_lv32_3 = "11";
const bool phy_data_confirm::ap_const_boolean_0 = false;
const sc_lv<7> phy_data_confirm::ap_const_lv7_64 = "1100100";
const sc_lv<7> phy_data_confirm::ap_const_lv7_1 = "1";
const bool phy_data_confirm::ap_const_boolean_1 = true;

phy_data_confirm::phy_data_confirm(sc_module_name name) : sc_module(name), mVcdFile(0) {
    frame_U = new phy_data_confirm_bkb("frame_U");
    frame_U->clk(ap_clk);
    frame_U->reset(ap_rst);
    frame_U->address0(frame_address0);
    frame_U->ce0(frame_ce0);
    frame_U->we0(frame_we0);
    frame_U->d0(frame_to_transfer_q0);
    frame_U->q0(frame_q0);
    grp_phy_data_request_fu_79 = new phy_data_request("grp_phy_data_request_fu_79");
    grp_phy_data_request_fu_79->ap_clk(ap_clk);
    grp_phy_data_request_fu_79->ap_rst(ap_rst);
    grp_phy_data_request_fu_79->ap_start(grp_phy_data_request_fu_79_ap_start);
    grp_phy_data_request_fu_79->ap_done(grp_phy_data_request_fu_79_ap_done);
    grp_phy_data_request_fu_79->ap_idle(grp_phy_data_request_fu_79_ap_idle);
    grp_phy_data_request_fu_79->ap_ready(grp_phy_data_request_fu_79_ap_ready);
    grp_phy_data_request_fu_79->data_address0(grp_phy_data_request_fu_79_data_address0);
    grp_phy_data_request_fu_79->data_ce0(grp_phy_data_request_fu_79_data_ce0);
    grp_phy_data_request_fu_79->data_q0(frame_q0);
    grp_phy_data_request_fu_79->data_offset(add_ln15_reg_168);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln15_fu_113_p2);
    sensitive << ( count_load_reg_141 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state4_on_subcall_done);
    sensitive << ( icmp_ln16_reg_174 );
    sensitive << ( grp_phy_data_request_fu_79_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_count_new_0_phi_fu_72_p4);
    sensitive << ( add_ln15_reg_168 );
    sensitive << ( icmp_ln16_reg_174 );
    sensitive << ( count_new_0_reg_68 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_METHOD(thread_frame_address0);
    sensitive << ( zext_ln12_reg_158 );
    sensitive << ( icmp_ln16_reg_174 );
    sensitive << ( grp_phy_data_request_fu_79_data_address0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_frame_ce0);
    sensitive << ( icmp_ln16_reg_174 );
    sensitive << ( grp_phy_data_request_fu_79_data_ce0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_frame_to_transfer_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln12_fu_108_p1 );

    SC_METHOD(thread_frame_to_transfer_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_frame_we0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_phy_data_request_fu_79_ap_start);
    sensitive << ( grp_phy_data_request_fu_79_ap_start_reg );

    SC_METHOD(thread_icmp_ln10_fu_90_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( count );

    SC_METHOD(thread_icmp_ln11_fu_96_p2);
    sensitive << ( icmp_ln10_reg_146 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( q_0_reg_57 );

    SC_METHOD(thread_icmp_ln16_fu_119_p2);
    sensitive << ( icmp_ln10_reg_146 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln11_fu_96_p2 );
    sensitive << ( add_ln15_fu_113_p2 );

    SC_METHOD(thread_q_fu_102_p2);
    sensitive << ( q_0_reg_57 );

    SC_METHOD(thread_stop_tx_load_load_fu_125_p1);
    sensitive << ( stop_tx );
    sensitive << ( icmp_ln10_reg_146 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln11_fu_96_p2 );
    sensitive << ( icmp_ln16_fu_119_p2 );

    SC_METHOD(thread_zext_ln12_fu_108_p1);
    sensitive << ( q_0_reg_57 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln10_reg_146 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln11_fu_96_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_block_state4_on_subcall_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0001";
    count = "0000000";
    stop_tx = "0";
    grp_phy_data_request_fu_79_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "phy_data_confirm_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, frame_to_transfer_address0, "(port)frame_to_transfer_address0");
    sc_trace(mVcdFile, frame_to_transfer_ce0, "(port)frame_to_transfer_ce0");
    sc_trace(mVcdFile, frame_to_transfer_q0, "(port)frame_to_transfer_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, count, "count");
    sc_trace(mVcdFile, frame_address0, "frame_address0");
    sc_trace(mVcdFile, frame_ce0, "frame_ce0");
    sc_trace(mVcdFile, frame_we0, "frame_we0");
    sc_trace(mVcdFile, frame_q0, "frame_q0");
    sc_trace(mVcdFile, stop_tx, "stop_tx");
    sc_trace(mVcdFile, count_load_reg_141, "count_load_reg_141");
    sc_trace(mVcdFile, icmp_ln10_fu_90_p2, "icmp_ln10_fu_90_p2");
    sc_trace(mVcdFile, icmp_ln10_reg_146, "icmp_ln10_reg_146");
    sc_trace(mVcdFile, q_fu_102_p2, "q_fu_102_p2");
    sc_trace(mVcdFile, q_reg_153, "q_reg_153");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln12_fu_108_p1, "zext_ln12_fu_108_p1");
    sc_trace(mVcdFile, zext_ln12_reg_158, "zext_ln12_reg_158");
    sc_trace(mVcdFile, icmp_ln11_fu_96_p2, "icmp_ln11_fu_96_p2");
    sc_trace(mVcdFile, add_ln15_fu_113_p2, "add_ln15_fu_113_p2");
    sc_trace(mVcdFile, add_ln15_reg_168, "add_ln15_reg_168");
    sc_trace(mVcdFile, icmp_ln16_fu_119_p2, "icmp_ln16_fu_119_p2");
    sc_trace(mVcdFile, icmp_ln16_reg_174, "icmp_ln16_reg_174");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_ap_start, "grp_phy_data_request_fu_79_ap_start");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_ap_done, "grp_phy_data_request_fu_79_ap_done");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_ap_idle, "grp_phy_data_request_fu_79_ap_idle");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_ap_ready, "grp_phy_data_request_fu_79_ap_ready");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_data_address0, "grp_phy_data_request_fu_79_data_address0");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_data_ce0, "grp_phy_data_request_fu_79_data_ce0");
    sc_trace(mVcdFile, q_0_reg_57, "q_0_reg_57");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_phi_mux_count_new_0_phi_fu_72_p4, "ap_phi_mux_count_new_0_phi_fu_72_p4");
    sc_trace(mVcdFile, count_new_0_reg_68, "count_new_0_reg_68");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_block_state4_on_subcall_done, "ap_block_state4_on_subcall_done");
    sc_trace(mVcdFile, grp_phy_data_request_fu_79_ap_start_reg, "grp_phy_data_request_fu_79_ap_start_reg");
    sc_trace(mVcdFile, stop_tx_load_load_fu_125_p1, "stop_tx_load_load_fu_125_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("phy_data_confirm.hdltvin.dat");
    mHdltvoutHandle.open("phy_data_confirm.hdltvout.dat");
}

phy_data_confirm::~phy_data_confirm() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete frame_U;
    delete grp_phy_data_request_fu_79;
}

void phy_data_confirm::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_reg_174.read()) && 
         esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0))) {
        count_new_0_reg_68 = add_ln15_reg_168.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                ((esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln11_fu_96_p2.read()) && 
                  esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln16_fu_119_p2.read())) || 
                 (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln10_reg_146.read()) && 
                  esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln16_fu_119_p2.read()))))) {
        count_new_0_reg_68 = ap_const_lv7_0;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_phy_data_request_fu_79_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             ((esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln11_fu_96_p2.read()) && 
               esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_fu_119_p2.read())) || 
              (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln10_reg_146.read()) && 
               esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_fu_119_p2.read()))))) {
            grp_phy_data_request_fu_79_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_phy_data_request_fu_79_ap_ready.read())) {
            grp_phy_data_request_fu_79_ap_start_reg = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(icmp_ln10_fu_90_p2.read(), ap_const_lv1_1))) {
        q_0_reg_57 = ap_const_lv7_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        q_0_reg_57 = q_reg_153.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln11_fu_96_p2.read()) || 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln10_reg_146.read())))) {
        add_ln15_reg_168 = add_ln15_fu_113_p2.read();
        icmp_ln16_reg_174 = icmp_ln16_fu_119_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0))) {
        count = ap_phi_mux_count_new_0_phi_fu_72_p4.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        count_load_reg_141 = count.read();
        icmp_ln10_reg_146 = icmp_ln10_fu_90_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln10_reg_146.read(), ap_const_lv1_1))) {
        q_reg_153 = q_fu_102_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && ((esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln11_fu_96_p2.read()) && 
   esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln16_fu_119_p2.read()) && 
   esl_seteq<1,1,1>(ap_const_lv1_0, stop_tx_load_load_fu_125_p1.read())) || 
  (esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln10_reg_146.read()) && 
   esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln16_fu_119_p2.read()) && 
   esl_seteq<1,1,1>(ap_const_lv1_0, stop_tx_load_load_fu_125_p1.read()))))) {
        stop_tx = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln10_reg_146.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln11_fu_96_p2.read()))) {
        zext_ln12_reg_158 = zext_ln12_fu_108_p1.read();
    }
}

void phy_data_confirm::thread_add_ln15_fu_113_p2() {
    add_ln15_fu_113_p2 = (!count_load_reg_141.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(count_load_reg_141.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void phy_data_confirm::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void phy_data_confirm::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void phy_data_confirm::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void phy_data_confirm::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void phy_data_confirm::thread_ap_block_state4_on_subcall_done() {
    ap_block_state4_on_subcall_done = (esl_seteq<1,1,1>(ap_const_logic_0, grp_phy_data_request_fu_79_ap_done.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_reg_174.read()));
}

void phy_data_confirm::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void phy_data_confirm::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void phy_data_confirm::thread_ap_phi_mux_count_new_0_phi_fu_72_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_reg_174.read()))) {
        ap_phi_mux_count_new_0_phi_fu_72_p4 = add_ln15_reg_168.read();
    } else {
        ap_phi_mux_count_new_0_phi_fu_72_p4 = count_new_0_reg_68.read();
    }
}

void phy_data_confirm::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void phy_data_confirm::thread_frame_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        frame_address0 =  (sc_lv<7>) (zext_ln12_reg_158.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_reg_174.read()))) {
        frame_address0 = grp_phy_data_request_fu_79_data_address0.read();
    } else {
        frame_address0 = "XXXXXXX";
    }
}

void phy_data_confirm::thread_frame_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        frame_ce0 = ap_const_logic_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln16_reg_174.read()))) {
        frame_ce0 = grp_phy_data_request_fu_79_data_ce0.read();
    } else {
        frame_ce0 = ap_const_logic_0;
    }
}

void phy_data_confirm::thread_frame_to_transfer_address0() {
    frame_to_transfer_address0 =  (sc_lv<7>) (zext_ln12_fu_108_p1.read());
}

void phy_data_confirm::thread_frame_to_transfer_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        frame_to_transfer_ce0 = ap_const_logic_1;
    } else {
        frame_to_transfer_ce0 = ap_const_logic_0;
    }
}

void phy_data_confirm::thread_frame_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        frame_we0 = ap_const_logic_1;
    } else {
        frame_we0 = ap_const_logic_0;
    }
}

void phy_data_confirm::thread_grp_phy_data_request_fu_79_ap_start() {
    grp_phy_data_request_fu_79_ap_start = grp_phy_data_request_fu_79_ap_start_reg.read();
}

void phy_data_confirm::thread_icmp_ln10_fu_90_p2() {
    icmp_ln10_fu_90_p2 = (!count.read().is_01() || !ap_const_lv7_0.is_01())? sc_lv<1>(): sc_lv<1>(count.read() == ap_const_lv7_0);
}

void phy_data_confirm::thread_icmp_ln11_fu_96_p2() {
    icmp_ln11_fu_96_p2 = (!q_0_reg_57.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(q_0_reg_57.read() == ap_const_lv7_64);
}

void phy_data_confirm::thread_icmp_ln16_fu_119_p2() {
    icmp_ln16_fu_119_p2 = (!add_ln15_fu_113_p2.read().is_01() || !ap_const_lv7_64.is_01())? sc_lv<1>(): sc_lv<1>(add_ln15_fu_113_p2.read() == ap_const_lv7_64);
}

void phy_data_confirm::thread_q_fu_102_p2() {
    q_fu_102_p2 = (!q_0_reg_57.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(q_0_reg_57.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void phy_data_confirm::thread_stop_tx_load_load_fu_125_p1() {
    stop_tx_load_load_fu_125_p1 = stop_tx.read();
}

void phy_data_confirm::thread_zext_ln12_fu_108_p1() {
    zext_ln12_fu_108_p1 = esl_zext<64,7>(q_0_reg_57.read());
}

void phy_data_confirm::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && (esl_seteq<1,1,1>(ap_const_lv1_1, icmp_ln11_fu_96_p2.read()) || 
  esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln10_reg_146.read())))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_block_state4_on_subcall_done.read(), ap_const_boolean_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}

void phy_data_confirm::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"frame_to_transfer_address0\" :  \"" << frame_to_transfer_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"frame_to_transfer_ce0\" :  \"" << frame_to_transfer_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"frame_to_transfer_q0\" :  \"" << frame_to_transfer_q0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

