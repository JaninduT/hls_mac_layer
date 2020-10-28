// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// apint = uint1
#define uint1 bool

// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "invoke_reason"
#define AUTOTB_TVIN_invoke_reason  "../tv/cdatafile/c.start_backoff_vo.autotvin_invoke_reason.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"


class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			invoke_reason_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{invoke_reason " << invoke_reason_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int invoke_reason_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void start_backoff_vo (
uint1 invoke_reason);

extern "C" void AESL_WRAP_start_backoff_vo (
uint1 invoke_reason)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "invoke_reason"
		char* tvin_invoke_reason = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_invoke_reason);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_invoke_reason, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_invoke_reason, tvin_invoke_reason);

		sc_bv<1> invoke_reason_tvin_wrapc_buffer;

		// RTL Name: invoke_reason
		{
			// bitslice(0, 0)
			{
				// celement: invoke_reason(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : invoke_reason
						// sub_1st_elem          : 
						// ori_name_1st_elem     : invoke_reason
						// regulate_c_name       : invoke_reason
						// input_type_conversion : invoke_reason
						if (&(invoke_reason) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> invoke_reason_tmp_mem;
							invoke_reason_tmp_mem = invoke_reason;
							invoke_reason_tvin_wrapc_buffer.range(0, 0) = invoke_reason_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_invoke_reason, "%s\n", (invoke_reason_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_invoke_reason, tvin_invoke_reason);
		}

		tcl_file.set_num(1, &tcl_file.invoke_reason_depth);
		sprintf(tvin_invoke_reason, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_invoke_reason, tvin_invoke_reason);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		start_backoff_vo(invoke_reason);

		CodeState = DUMP_OUTPUTS;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "invoke_reason"
		delete [] tvin_invoke_reason;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint1
#undef uint1
