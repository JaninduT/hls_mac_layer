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
// apint = uint2
#define uint2 char

// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "timing_mode"
#define AUTOTB_TVIN_timing_mode  "../tv/cdatafile/c.slot_boundary_timing.autotvin_timing_mode.dat"
// wrapc file define: "idle_waiting"
#define AUTOTB_TVOUT_idle_waiting  "../tv/cdatafile/c.slot_boundary_timing.autotvout_idle_waiting.dat"
// wrapc file define: "medium_state"
#define AUTOTB_TVIN_medium_state  "../tv/cdatafile/c.slot_boundary_timing.autotvin_medium_state.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "idle_waiting"
#define AUTOTB_TVOUT_PC_idle_waiting  "../tv/rtldatafile/rtl.slot_boundary_timing.autotvout_idle_waiting.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			timing_mode_depth = 0;
			idle_waiting_depth = 0;
			medium_state_depth = 0;
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
			total_list << "{timing_mode " << timing_mode_depth << "}\n";
			total_list << "{idle_waiting " << idle_waiting_depth << "}\n";
			total_list << "{medium_state " << medium_state_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int timing_mode_depth;
		int idle_waiting_depth;
		int medium_state_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void slot_boundary_timing (
uint2 timing_mode,
uint1* idle_waiting,
uint1* medium_state);

extern "C" void AESL_WRAP_slot_boundary_timing (
uint2 timing_mode,
uint1* idle_waiting,
uint1* medium_state)
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


		// output port post check: "idle_waiting"
		aesl_fh.read(AUTOTB_TVOUT_PC_idle_waiting, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_idle_waiting, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_idle_waiting, AESL_token); // data

			sc_bv<1> *idle_waiting_pc_buffer = new sc_bv<1>[1];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'idle_waiting', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'idle_waiting', possible cause: There are uninitialized variables in the C design." << endl;
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
					idle_waiting_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_idle_waiting, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_idle_waiting))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: idle_waiting
				{
					// bitslice(0, 0)
					// {
						// celement: idle_waiting(0, 0)
						// {
							sc_lv<1>* idle_waiting_lv0_0_0_1 = new sc_lv<1>[1];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: idle_waiting(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(idle_waiting[0]) != NULL) // check the null address if the c port is array or others
								{
									idle_waiting_lv0_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(idle_waiting_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: idle_waiting(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : idle_waiting[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : idle_waiting[0]
								// output_left_conversion : idle_waiting[i_0]
								// output_type_conversion : (idle_waiting_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(idle_waiting[0]) != NULL) // check the null address if the c port is array or others
								{
									idle_waiting[i_0] = (idle_waiting_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] idle_waiting_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "timing_mode"
		char* tvin_timing_mode = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_timing_mode);

		// "idle_waiting"
		char* tvout_idle_waiting = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_idle_waiting);

		// "medium_state"
		char* tvin_medium_state = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_medium_state);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_timing_mode, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_timing_mode, tvin_timing_mode);

		sc_bv<2> timing_mode_tvin_wrapc_buffer;

		// RTL Name: timing_mode
		{
			// bitslice(1, 0)
			{
				// celement: timing_mode(1, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : timing_mode
						// sub_1st_elem          : 
						// ori_name_1st_elem     : timing_mode
						// regulate_c_name       : timing_mode
						// input_type_conversion : timing_mode
						if (&(timing_mode) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<2> timing_mode_tmp_mem;
							timing_mode_tmp_mem = timing_mode;
							timing_mode_tvin_wrapc_buffer.range(1, 0) = timing_mode_tmp_mem.range(1, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_timing_mode, "%s\n", (timing_mode_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_timing_mode, tvin_timing_mode);
		}

		tcl_file.set_num(1, &tcl_file.timing_mode_depth);
		sprintf(tvin_timing_mode, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_timing_mode, tvin_timing_mode);

		// [[transaction]]
		sprintf(tvin_medium_state, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_medium_state, tvin_medium_state);

		sc_bv<1>* medium_state_tvin_wrapc_buffer = new sc_bv<1>[1];

		// RTL Name: medium_state
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: medium_state(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : medium_state[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : medium_state[0]
						// regulate_c_name       : medium_state
						// input_type_conversion : medium_state[i_0]
						if (&(medium_state[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> medium_state_tmp_mem;
							medium_state_tmp_mem = medium_state[i_0];
							medium_state_tvin_wrapc_buffer[hls_map_index].range(0, 0) = medium_state_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_medium_state, "%s\n", (medium_state_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_medium_state, tvin_medium_state);
		}

		tcl_file.set_num(1, &tcl_file.medium_state_depth);
		sprintf(tvin_medium_state, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_medium_state, tvin_medium_state);

		// release memory allocation
		delete [] medium_state_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		slot_boundary_timing(timing_mode, idle_waiting, medium_state);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_idle_waiting, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_idle_waiting, tvout_idle_waiting);

		sc_bv<1>* idle_waiting_tvout_wrapc_buffer = new sc_bv<1>[1];

		// RTL Name: idle_waiting
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: idle_waiting(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : idle_waiting[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : idle_waiting[0]
						// regulate_c_name       : idle_waiting
						// input_type_conversion : idle_waiting[i_0]
						if (&(idle_waiting[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> idle_waiting_tmp_mem;
							idle_waiting_tmp_mem = idle_waiting[i_0];
							idle_waiting_tvout_wrapc_buffer[hls_map_index].range(0, 0) = idle_waiting_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_idle_waiting, "%s\n", (idle_waiting_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_idle_waiting, tvout_idle_waiting);
		}

		tcl_file.set_num(1, &tcl_file.idle_waiting_depth);
		sprintf(tvout_idle_waiting, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_idle_waiting, tvout_idle_waiting);

		// release memory allocation
		delete [] idle_waiting_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "timing_mode"
		delete [] tvin_timing_mode;
		// release memory allocation: "idle_waiting"
		delete [] tvout_idle_waiting;
		// release memory allocation: "medium_state"
		delete [] tvin_medium_state;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint1
#undef uint1

// apint = uint2
#undef uint2
