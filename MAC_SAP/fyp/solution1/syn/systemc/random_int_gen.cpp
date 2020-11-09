// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "random_int_gen.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic random_int_gen::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic random_int_gen::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> random_int_gen::ap_ST_fsm_state1 = "1";
const sc_lv<2> random_int_gen::ap_ST_fsm_state2 = "10";
const sc_lv<32> random_int_gen::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> random_int_gen::ap_const_lv32_1 = "1";
const sc_lv<32> random_int_gen::ap_const_lv32_BC8F = "1011110010001111";
const sc_lv<32> random_int_gen::ap_const_lv32_F = "1111";
const sc_lv<32> random_int_gen::ap_const_lv32_1F = "11111";
const sc_lv<32> random_int_gen::ap_const_lv32_10 = "10000";
const sc_lv<16> random_int_gen::ap_const_lv16_F = "1111";
const bool random_int_gen::ap_const_boolean_1 = true;

random_int_gen::random_int_gen(sc_module_name name) : sc_module(name), mVcdFile(0) {
    ma_unitdatax_requcud_U10 = new ma_unitdatax_requcud<1,1,17,17,32>("ma_unitdatax_requcud_U10");
    ma_unitdatax_requcud_U10->din0(high_2_fu_132_p0);
    ma_unitdatax_requcud_U10->din1(high_2_fu_132_p1);
    ma_unitdatax_requcud_U10->dout(high_2_fu_132_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln11_fu_80_p2);
    sensitive << ( trunc_ln1_reg_149 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_high_2_fu_132_p0);
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_high_2_fu_132_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( high_2_fu_132_p10 );

    SC_METHOD(thread_high_2_fu_132_p10);
    sensitive << ( high_fu_50_p4 );

    SC_METHOD(thread_high_fu_50_p4);
    sensitive << ( rand_state );

    SC_METHOD(thread_low_1_fu_44_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( low_1_fu_44_p00 );

    SC_METHOD(thread_low_1_fu_44_p00);
    sensitive << ( low_fu_36_p1 );

    SC_METHOD(thread_low_1_fu_44_p2);
    sensitive << ( low_1_fu_44_p0 );

    SC_METHOD(thread_low_fu_36_p1);
    sensitive << ( rand_state );

    SC_METHOD(thread_tmp_1_fu_108_p3);
    sensitive << ( x_1_fu_95_p2 );

    SC_METHOD(thread_trunc_ln10_fu_73_p1);
    sensitive << ( high_2_reg_144 );

    SC_METHOD(thread_trunc_ln12_fu_100_p1);
    sensitive << ( x_1_fu_95_p2 );

    SC_METHOD(thread_x_1_fu_95_p2);
    sensitive << ( low_1_reg_139 );
    sensitive << ( x_fu_89_p2 );

    SC_METHOD(thread_x_2_fu_120_p2);
    sensitive << ( zext_ln13_1_fu_116_p1 );
    sensitive << ( zext_ln13_fu_104_p1 );

    SC_METHOD(thread_x_fu_89_p2);
    sensitive << ( zext_ln11_fu_76_p1 );
    sensitive << ( zext_ln11_1_fu_85_p1 );

    SC_METHOD(thread_zext_ln11_1_fu_85_p1);
    sensitive << ( add_ln11_fu_80_p2 );

    SC_METHOD(thread_zext_ln11_fu_76_p1);
    sensitive << ( trunc_ln10_fu_73_p1 );

    SC_METHOD(thread_zext_ln13_1_fu_116_p1);
    sensitive << ( tmp_1_fu_108_p3 );

    SC_METHOD(thread_zext_ln13_fu_104_p1);
    sensitive << ( trunc_ln12_fu_100_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_CS_fsm = "01";
    rand_state = "00000111010110111100110100010101";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "random_int_gen_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, rand_state, "rand_state");
    sc_trace(mVcdFile, low_1_fu_44_p2, "low_1_fu_44_p2");
    sc_trace(mVcdFile, low_1_reg_139, "low_1_reg_139");
    sc_trace(mVcdFile, high_2_fu_132_p2, "high_2_fu_132_p2");
    sc_trace(mVcdFile, high_2_reg_144, "high_2_reg_144");
    sc_trace(mVcdFile, trunc_ln1_reg_149, "trunc_ln1_reg_149");
    sc_trace(mVcdFile, x_2_fu_120_p2, "x_2_fu_120_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, low_fu_36_p1, "low_fu_36_p1");
    sc_trace(mVcdFile, low_1_fu_44_p0, "low_1_fu_44_p0");
    sc_trace(mVcdFile, high_fu_50_p4, "high_fu_50_p4");
    sc_trace(mVcdFile, trunc_ln10_fu_73_p1, "trunc_ln10_fu_73_p1");
    sc_trace(mVcdFile, add_ln11_fu_80_p2, "add_ln11_fu_80_p2");
    sc_trace(mVcdFile, zext_ln11_fu_76_p1, "zext_ln11_fu_76_p1");
    sc_trace(mVcdFile, zext_ln11_1_fu_85_p1, "zext_ln11_1_fu_85_p1");
    sc_trace(mVcdFile, x_fu_89_p2, "x_fu_89_p2");
    sc_trace(mVcdFile, x_1_fu_95_p2, "x_1_fu_95_p2");
    sc_trace(mVcdFile, trunc_ln12_fu_100_p1, "trunc_ln12_fu_100_p1");
    sc_trace(mVcdFile, tmp_1_fu_108_p3, "tmp_1_fu_108_p3");
    sc_trace(mVcdFile, zext_ln13_1_fu_116_p1, "zext_ln13_1_fu_116_p1");
    sc_trace(mVcdFile, zext_ln13_fu_104_p1, "zext_ln13_fu_104_p1");
    sc_trace(mVcdFile, high_2_fu_132_p0, "high_2_fu_132_p0");
    sc_trace(mVcdFile, high_2_fu_132_p1, "high_2_fu_132_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, high_2_fu_132_p10, "high_2_fu_132_p10");
    sc_trace(mVcdFile, low_1_fu_44_p00, "low_1_fu_44_p00");
#endif

    }
}

random_int_gen::~random_int_gen() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete ma_unitdatax_requcud_U10;
}

void random_int_gen::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        high_2_reg_144 = high_2_fu_132_p2.read();
        low_1_reg_139 = low_1_fu_44_p2.read();
        trunc_ln1_reg_149 = high_2_fu_132_p2.read().range(31, 16);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        rand_state = x_2_fu_120_p2.read();
    }
}

void random_int_gen::thread_add_ln11_fu_80_p2() {
    add_ln11_fu_80_p2 = (!ap_const_lv16_F.is_01() || !trunc_ln1_reg_149.read().is_01())? sc_lv<16>(): (sc_biguint<16>(ap_const_lv16_F) + sc_biguint<16>(trunc_ln1_reg_149.read()));
}

void random_int_gen::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void random_int_gen::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void random_int_gen::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void random_int_gen::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void random_int_gen::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void random_int_gen::thread_high_2_fu_132_p0() {
    high_2_fu_132_p0 =  (sc_lv<17>) (ap_const_lv32_BC8F);
}

void random_int_gen::thread_high_2_fu_132_p1() {
    high_2_fu_132_p1 =  (sc_lv<17>) (high_2_fu_132_p10.read());
}

void random_int_gen::thread_high_2_fu_132_p10() {
    high_2_fu_132_p10 = esl_zext<32,17>(high_fu_50_p4.read());
}

void random_int_gen::thread_high_fu_50_p4() {
    high_fu_50_p4 = rand_state.read().range(31, 15);
}

void random_int_gen::thread_low_1_fu_44_p0() {
    low_1_fu_44_p0 =  (sc_lv<15>) (low_1_fu_44_p00.read());
}

void random_int_gen::thread_low_1_fu_44_p00() {
    low_1_fu_44_p00 = esl_zext<32,15>(low_fu_36_p1.read());
}

void random_int_gen::thread_low_1_fu_44_p2() {
    low_1_fu_44_p2 = (!low_1_fu_44_p0.read().is_01() || !ap_const_lv32_BC8F.is_01())? sc_lv<32>(): sc_biguint<15>(low_1_fu_44_p0.read()) * sc_biguint<32>(ap_const_lv32_BC8F);
}

void random_int_gen::thread_low_fu_36_p1() {
    low_fu_36_p1 = rand_state.read().range(15-1, 0);
}

void random_int_gen::thread_tmp_1_fu_108_p3() {
    tmp_1_fu_108_p3 = x_1_fu_95_p2.read().range(31, 31);
}

void random_int_gen::thread_trunc_ln10_fu_73_p1() {
    trunc_ln10_fu_73_p1 = high_2_reg_144.read().range(16-1, 0);
}

void random_int_gen::thread_trunc_ln12_fu_100_p1() {
    trunc_ln12_fu_100_p1 = x_1_fu_95_p2.read().range(31-1, 0);
}

void random_int_gen::thread_x_1_fu_95_p2() {
    x_1_fu_95_p2 = (!low_1_reg_139.read().is_01() || !x_fu_89_p2.read().is_01())? sc_lv<32>(): (sc_biguint<32>(low_1_reg_139.read()) + sc_biguint<32>(x_fu_89_p2.read()));
}

void random_int_gen::thread_x_2_fu_120_p2() {
    x_2_fu_120_p2 = (!zext_ln13_1_fu_116_p1.read().is_01() || !zext_ln13_fu_104_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(zext_ln13_1_fu_116_p1.read()) + sc_biguint<32>(zext_ln13_fu_104_p1.read()));
}

void random_int_gen::thread_x_fu_89_p2() {
    x_fu_89_p2 = (!zext_ln11_1_fu_85_p1.read().is_01())? sc_lv<32>(): zext_ln11_fu_76_p1.read() << (unsigned short)zext_ln11_1_fu_85_p1.read().to_uint();
}

void random_int_gen::thread_zext_ln11_1_fu_85_p1() {
    zext_ln11_1_fu_85_p1 = esl_zext<32,16>(add_ln11_fu_80_p2.read());
}

void random_int_gen::thread_zext_ln11_fu_76_p1() {
    zext_ln11_fu_76_p1 = esl_zext<32,16>(trunc_ln10_fu_73_p1.read());
}

void random_int_gen::thread_zext_ln13_1_fu_116_p1() {
    zext_ln13_1_fu_116_p1 = esl_zext<32,1>(tmp_1_fu_108_p3.read());
}

void random_int_gen::thread_zext_ln13_fu_104_p1() {
    zext_ln13_fu_104_p1 = esl_zext<32,31>(trunc_ln12_fu_100_p1.read());
}

void random_int_gen::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}
