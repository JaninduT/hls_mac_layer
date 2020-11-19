// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _phy_data_request_1_HH_
#define _phy_data_request_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct phy_data_request_1 : public sc_module {
    // Port declarations 2
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > data;


    // Module declarations
    phy_data_request_1(sc_module_name name);
    SC_HAS_PROCESS(phy_data_request_1);

    ~phy_data_request_1();

    sc_trace_file* mVcdFile;

    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_ready();
};

}

using namespace ap_rtl;

#endif