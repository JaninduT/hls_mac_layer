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


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "frame_to_transfer"
#define AUTOTB_TVIN_frame_to_transfer  "../tv/cdatafile/c.phy_data_confirm.autotvin_frame_to_transfer.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"


class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			frame_to_transfer_depth = 0;
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
			total_list << "{frame_to_transfer " << frame_to_transfer_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int frame_to_transfer_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void phy_data_confirm (
char frame_to_transfer[100]);

extern "C" void AESL_WRAP_phy_data_confirm (
char frame_to_transfer[100])
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

		// "frame_to_transfer"
		char* tvin_frame_to_transfer = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_frame_to_transfer);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_frame_to_transfer, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_frame_to_transfer, tvin_frame_to_transfer);

		sc_bv<8>* frame_to_transfer_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: frame_to_transfer
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: frame_to_transfer(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : frame_to_transfer[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : frame_to_transfer[0]
						// regulate_c_name       : frame_to_transfer
						// input_type_conversion : frame_to_transfer[i_0]
						if (&(frame_to_transfer[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> frame_to_transfer_tmp_mem;
							frame_to_transfer_tmp_mem = frame_to_transfer[i_0];
							frame_to_transfer_tvin_wrapc_buffer[hls_map_index].range(7, 0) = frame_to_transfer_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_frame_to_transfer, "%s\n", (frame_to_transfer_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_frame_to_transfer, tvin_frame_to_transfer);
		}

		tcl_file.set_num(100, &tcl_file.frame_to_transfer_depth);
		sprintf(tvin_frame_to_transfer, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_frame_to_transfer, tvin_frame_to_transfer);

		// release memory allocation
		delete [] frame_to_transfer_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		phy_data_confirm(frame_to_transfer);

		CodeState = DUMP_OUTPUTS;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "frame_to_transfer"
		delete [] tvin_frame_to_transfer;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}
