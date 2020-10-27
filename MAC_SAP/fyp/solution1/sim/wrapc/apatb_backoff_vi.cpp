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

// apint = uint3
#define uint3 char

// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "current_txop_holder"
#define AUTOTB_TVIN_current_txop_holder  "../tv/cdatafile/c.backoff_vi.autotvin_current_txop_holder.dat"
#define AUTOTB_TVOUT_current_txop_holder  "../tv/cdatafile/c.backoff_vi.autotvout_current_txop_holder.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "current_txop_holder"
#define AUTOTB_TVOUT_PC_current_txop_holder  "../tv/rtldatafile/rtl.backoff_vi.autotvout_current_txop_holder.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			current_txop_holder_depth = 0;
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
			total_list << "{current_txop_holder " << current_txop_holder_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int current_txop_holder_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void backoff_vi (
uint3* current_txop_holder);

extern "C" void AESL_WRAP_backoff_vi (
uint3* current_txop_holder)
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


		// output port post check: "current_txop_holder"
		aesl_fh.read(AUTOTB_TVOUT_PC_current_txop_holder, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_current_txop_holder, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_current_txop_holder, AESL_token); // data

			sc_bv<3> *current_txop_holder_pc_buffer = new sc_bv<3>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'current_txop_holder', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'current_txop_holder', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					current_txop_holder_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_current_txop_holder, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_current_txop_holder))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: current_txop_holder
				{
					// bitslice(2, 0)
					// {
						// celement: current_txop_holder(2, 0)
						// {
							sc_lv<3>* current_txop_holder_lv0_0_0_1 = new sc_lv<3>[1];
						// }
					// }

					// bitslice(2, 0)
					{
						int hls_map_index = 0;
						// celement: current_txop_holder(2, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(current_txop_holder[0]) != NULL) // check the null address if the c port is array or others
								{
									current_txop_holder_lv0_0_0_1[hls_map_index].range(2, 0) = sc_bv<3>(current_txop_holder_pc_buffer[hls_map_index].range(2, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(2, 0)
					{
						int hls_map_index = 0;
						// celement: current_txop_holder(2, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : current_txop_holder[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : current_txop_holder[0]
								// output_left_conversion : current_txop_holder[i_0]
								// output_type_conversion : (current_txop_holder_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(current_txop_holder[0]) != NULL) // check the null address if the c port is array or others
								{
									current_txop_holder[i_0] = (current_txop_holder_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] current_txop_holder_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "current_txop_holder"
		char* tvin_current_txop_holder = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_current_txop_holder);
		char* tvout_current_txop_holder = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_current_txop_holder);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_current_txop_holder, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_current_txop_holder, tvin_current_txop_holder);

		sc_bv<3>* current_txop_holder_tvin_wrapc_buffer = new sc_bv<3>[1];

		// RTL Name: current_txop_holder
		{
			// bitslice(2, 0)
			{
				int hls_map_index = 0;
				// celement: current_txop_holder(2, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : current_txop_holder[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : current_txop_holder[0]
						// regulate_c_name       : current_txop_holder
						// input_type_conversion : current_txop_holder[i_0]
						if (&(current_txop_holder[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<3> current_txop_holder_tmp_mem;
							current_txop_holder_tmp_mem = current_txop_holder[i_0];
							current_txop_holder_tvin_wrapc_buffer[hls_map_index].range(2, 0) = current_txop_holder_tmp_mem.range(2, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_current_txop_holder, "%s\n", (current_txop_holder_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_current_txop_holder, tvin_current_txop_holder);
		}

		tcl_file.set_num(1, &tcl_file.current_txop_holder_depth);
		sprintf(tvin_current_txop_holder, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_current_txop_holder, tvin_current_txop_holder);

		// release memory allocation
		delete [] current_txop_holder_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		backoff_vi(current_txop_holder);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_current_txop_holder, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_current_txop_holder, tvout_current_txop_holder);

		sc_bv<3>* current_txop_holder_tvout_wrapc_buffer = new sc_bv<3>[1];

		// RTL Name: current_txop_holder
		{
			// bitslice(2, 0)
			{
				int hls_map_index = 0;
				// celement: current_txop_holder(2, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : current_txop_holder[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : current_txop_holder[0]
						// regulate_c_name       : current_txop_holder
						// input_type_conversion : current_txop_holder[i_0]
						if (&(current_txop_holder[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<3> current_txop_holder_tmp_mem;
							current_txop_holder_tmp_mem = current_txop_holder[i_0];
							current_txop_holder_tvout_wrapc_buffer[hls_map_index].range(2, 0) = current_txop_holder_tmp_mem.range(2, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_current_txop_holder, "%s\n", (current_txop_holder_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_current_txop_holder, tvout_current_txop_holder);
		}

		tcl_file.set_num(1, &tcl_file.current_txop_holder_depth);
		sprintf(tvout_current_txop_holder, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_current_txop_holder, tvout_current_txop_holder);

		// release memory allocation
		delete [] current_txop_holder_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "current_txop_holder"
		delete [] tvin_current_txop_holder;
		delete [] tvout_current_txop_holder;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint3
#undef uint3
