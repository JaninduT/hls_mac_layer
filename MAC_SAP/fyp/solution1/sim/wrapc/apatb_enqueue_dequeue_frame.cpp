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


// wrapc file define: "operation"
#define AUTOTB_TVIN_operation  "../tv/cdatafile/c.enqueue_dequeue_frame.autotvin_operation.dat"
// wrapc file define: "ac"
#define AUTOTB_TVIN_ac  "../tv/cdatafile/c.enqueue_dequeue_frame.autotvin_ac.dat"
// wrapc file define: "inout_frame"
#define AUTOTB_TVIN_inout_frame  "../tv/cdatafile/c.enqueue_dequeue_frame.autotvin_inout_frame.dat"
#define AUTOTB_TVOUT_inout_frame  "../tv/cdatafile/c.enqueue_dequeue_frame.autotvout_inout_frame.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.enqueue_dequeue_frame.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "inout_frame"
#define AUTOTB_TVOUT_PC_inout_frame  "../tv/rtldatafile/rtl.enqueue_dequeue_frame.autotvout_inout_frame.dat"
// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.enqueue_dequeue_frame.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			operation_depth = 0;
			ac_depth = 0;
			inout_frame_depth = 0;
			ap_return_depth = 0;
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
			total_list << "{operation " << operation_depth << "}\n";
			total_list << "{ac " << ac_depth << "}\n";
			total_list << "{inout_frame " << inout_frame_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int operation_depth;
		int ac_depth;
		int inout_frame_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" uint1 enqueue_dequeue_frame (
uint1 operation,
uint2 ac,
char inout_frame[100]);

extern "C" uint1 AESL_WRAP_enqueue_dequeue_frame (
uint1 operation,
uint2 ac,
char inout_frame[100])
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

		uint1 AESL_return;

		// output port post check: "inout_frame"
		aesl_fh.read(AUTOTB_TVOUT_PC_inout_frame, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_inout_frame, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_inout_frame, AESL_token); // data

			sc_bv<8> *inout_frame_pc_buffer = new sc_bv<8>[100];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'inout_frame', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'inout_frame', possible cause: There are uninitialized variables in the C design." << endl;
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
					inout_frame_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_inout_frame, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_inout_frame))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: inout_frame
				{
					// bitslice(7, 0)
					// {
						// celement: inout_frame(7, 0)
						// {
							sc_lv<8>* inout_frame_lv0_0_99_1 = new sc_lv<8>[100];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: inout_frame(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								if (&(inout_frame[0]) != NULL) // check the null address if the c port is array or others
								{
									inout_frame_lv0_0_99_1[hls_map_index].range(7, 0) = sc_bv<8>(inout_frame_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: inout_frame(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : inout_frame[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : inout_frame[0]
								// output_left_conversion : inout_frame[i_0]
								// output_type_conversion : (inout_frame_lv0_0_99_1[hls_map_index]).to_uint64()
								if (&(inout_frame[0]) != NULL) // check the null address if the c port is array or others
								{
									inout_frame[i_0] = (inout_frame_lv0_0_99_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] inout_frame_pc_buffer;
		}

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<1> ap_return_pc_buffer;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
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
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(0, 0)
					// {
						// celement: return(0, 0)
						// {
							sc_lv<1> return_lv0_0_1_0;
						// }
					// }

					// bitslice(0, 0)
					{
						// celement: return(0, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(0, 0) = sc_bv<1>(ap_return_pc_buffer.range(0, 0));
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						// celement: return(0, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "operation"
		char* tvin_operation = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_operation);

		// "ac"
		char* tvin_ac = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_ac);

		// "inout_frame"
		char* tvin_inout_frame = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inout_frame);
		char* tvout_inout_frame = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_inout_frame);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_operation, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_operation, tvin_operation);

		sc_bv<1> operation_tvin_wrapc_buffer;

		// RTL Name: operation
		{
			// bitslice(0, 0)
			{
				// celement: operation(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : operation
						// sub_1st_elem          : 
						// ori_name_1st_elem     : operation
						// regulate_c_name       : operation
						// input_type_conversion : operation
						if (&(operation) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> operation_tmp_mem;
							operation_tmp_mem = operation;
							operation_tvin_wrapc_buffer.range(0, 0) = operation_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_operation, "%s\n", (operation_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_operation, tvin_operation);
		}

		tcl_file.set_num(1, &tcl_file.operation_depth);
		sprintf(tvin_operation, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_operation, tvin_operation);

		// [[transaction]]
		sprintf(tvin_ac, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_ac, tvin_ac);

		sc_bv<2> ac_tvin_wrapc_buffer;

		// RTL Name: ac
		{
			// bitslice(1, 0)
			{
				// celement: ac(1, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : ac
						// sub_1st_elem          : 
						// ori_name_1st_elem     : ac
						// regulate_c_name       : ac
						// input_type_conversion : ac
						if (&(ac) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<2> ac_tmp_mem;
							ac_tmp_mem = ac;
							ac_tvin_wrapc_buffer.range(1, 0) = ac_tmp_mem.range(1, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_ac, "%s\n", (ac_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_ac, tvin_ac);
		}

		tcl_file.set_num(1, &tcl_file.ac_depth);
		sprintf(tvin_ac, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_ac, tvin_ac);

		// [[transaction]]
		sprintf(tvin_inout_frame, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inout_frame, tvin_inout_frame);

		sc_bv<8>* inout_frame_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: inout_frame
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: inout_frame(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : inout_frame[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : inout_frame[0]
						// regulate_c_name       : inout_frame
						// input_type_conversion : inout_frame[i_0]
						if (&(inout_frame[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> inout_frame_tmp_mem;
							inout_frame_tmp_mem = inout_frame[i_0];
							inout_frame_tvin_wrapc_buffer[hls_map_index].range(7, 0) = inout_frame_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_inout_frame, "%s\n", (inout_frame_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inout_frame, tvin_inout_frame);
		}

		tcl_file.set_num(100, &tcl_file.inout_frame_depth);
		sprintf(tvin_inout_frame, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inout_frame, tvin_inout_frame);

		// release memory allocation
		delete [] inout_frame_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		uint1 AESL_return = enqueue_dequeue_frame(operation, ac, inout_frame);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_inout_frame, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_inout_frame, tvout_inout_frame);

		sc_bv<8>* inout_frame_tvout_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: inout_frame
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: inout_frame(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : inout_frame[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : inout_frame[0]
						// regulate_c_name       : inout_frame
						// input_type_conversion : inout_frame[i_0]
						if (&(inout_frame[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> inout_frame_tmp_mem;
							inout_frame_tmp_mem = inout_frame[i_0];
							inout_frame_tvout_wrapc_buffer[hls_map_index].range(7, 0) = inout_frame_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvout_inout_frame, "%s\n", (inout_frame_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_inout_frame, tvout_inout_frame);
		}

		tcl_file.set_num(100, &tcl_file.inout_frame_depth);
		sprintf(tvout_inout_frame, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_inout_frame, tvout_inout_frame);

		// release memory allocation
		delete [] inout_frame_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<1> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(0, 0)
			{
				// celement: return(0, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(0, 0) = return_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "operation"
		delete [] tvin_operation;
		// release memory allocation: "ac"
		delete [] tvin_ac;
		// release memory allocation: "inout_frame"
		delete [] tvin_inout_frame;
		delete [] tvout_inout_frame;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}


// apint = uint1
#undef uint1

// apint = uint2
#undef uint2
