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
// apint = uint3
#define uint3 char
// apint = uint4
#define uint4 char
// apint = uint7
#define uint7 char

// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
#pragma pack(1)
    typedef struct {
        unsigned char mac[6];
       } mac48;

#pragma pack()
          typedef struct {
              unsigned char operating_class;
              unsigned char channel_number;
             } channel_identifier;

extern unsigned char tx_0;



// [dump_enumeration [get_enumeration_list]] ---------->
typedef enum {AESL_AUTO_0} service_class;
typedef enum {AESL_AUTO_1} time_slot;


// wrapc file define: "source_addr_mac"
#define AUTOTB_TVIN_source_addr_mac  "../tv/cdatafile/c.send_frame.autotvin_source_addr_mac.dat"
// wrapc file define: "data"
#define AUTOTB_TVIN_data  "../tv/cdatafile/c.send_frame.autotvin_data.dat"
// wrapc file define: "up"
#define AUTOTB_TVIN_up  "../tv/cdatafile/c.send_frame.autotvin_up.dat"
// wrapc file define: "s_class"
#define AUTOTB_TVIN_s_class  "../tv/cdatafile/c.send_frame.autotvin_s_class.dat"
// wrapc file define: "c_identifier_operating_class"
#define AUTOTB_TVIN_c_identifier_operating_class  "../tv/cdatafile/c.send_frame.autotvin_c_identifier_operating_class.dat"
// wrapc file define: "c_identifier_channel_number"
#define AUTOTB_TVIN_c_identifier_channel_number  "../tv/cdatafile/c.send_frame.autotvin_c_identifier_channel_number.dat"
// wrapc file define: "d_rate"
#define AUTOTB_TVIN_d_rate  "../tv/cdatafile/c.send_frame.autotvin_d_rate.dat"
// wrapc file define: "tx_power_lvl"
#define AUTOTB_TVIN_tx_power_lvl  "../tv/cdatafile/c.send_frame.autotvin_tx_power_lvl.dat"
// wrapc file define: "mac_frame"
#define AUTOTB_TVIN_mac_frame  "../tv/cdatafile/c.send_frame.autotvin_mac_frame.dat"
#define AUTOTB_TVOUT_mac_frame  "../tv/cdatafile/c.send_frame.autotvout_mac_frame.dat"
// wrapc file define: "medium_state"
#define AUTOTB_TVIN_medium_state  "../tv/cdatafile/c.send_frame.autotvin_medium_state.dat"
// wrapc file define: "current_txop_holder"
#define AUTOTB_TVIN_current_txop_holder  "../tv/cdatafile/c.send_frame.autotvin_current_txop_holder.dat"
#define AUTOTB_TVOUT_current_txop_holder  "../tv/cdatafile/c.send_frame.autotvout_current_txop_holder.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "mac_frame"
#define AUTOTB_TVOUT_PC_mac_frame  "../tv/rtldatafile/rtl.send_frame.autotvout_mac_frame.dat"
// tvout file define: "current_txop_holder"
#define AUTOTB_TVOUT_PC_current_txop_holder  "../tv/rtldatafile/rtl.send_frame.autotvout_current_txop_holder.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			source_addr_mac_depth = 0;
			data_depth = 0;
			up_depth = 0;
			s_class_depth = 0;
			c_identifier_operating_class_depth = 0;
			c_identifier_channel_number_depth = 0;
			d_rate_depth = 0;
			tx_power_lvl_depth = 0;
			mac_frame_depth = 0;
			medium_state_depth = 0;
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
			total_list << "{source_addr_mac " << source_addr_mac_depth << "}\n";
			total_list << "{data " << data_depth << "}\n";
			total_list << "{up " << up_depth << "}\n";
			total_list << "{s_class " << s_class_depth << "}\n";
			total_list << "{c_identifier_operating_class " << c_identifier_operating_class_depth << "}\n";
			total_list << "{c_identifier_channel_number " << c_identifier_channel_number_depth << "}\n";
			total_list << "{d_rate " << d_rate_depth << "}\n";
			total_list << "{tx_power_lvl " << tx_power_lvl_depth << "}\n";
			total_list << "{mac_frame " << mac_frame_depth << "}\n";
			total_list << "{medium_state " << medium_state_depth << "}\n";
			total_list << "{current_txop_holder " << current_txop_holder_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int source_addr_mac_depth;
		int data_depth;
		int up_depth;
		int s_class_depth;
		int c_identifier_operating_class_depth;
		int c_identifier_channel_number_depth;
		int d_rate_depth;
		int tx_power_lvl_depth;
		int mac_frame_depth;
		int medium_state_depth;
		int current_txop_holder_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void send_frame (
mac48 source_addr,
mac48 dest_addr,
char data[70],
uint4 up,

#ifdef AUTOCC
bool
#else
service_class
#endif
 s_class,
channel_identifier c_identifier,

#ifdef AUTOCC
char
#else
time_slot
#endif
 t_slot,
uint7 d_rate,
uint4 tx_power_lvl,
long long int expiry_time,
char mac_frame[100],
uint1* medium_state,
uint3* current_txop_holder,
char received_frame[100]);

extern "C" void AESL_WRAP_send_frame (
mac48 source_addr,
mac48 dest_addr,
char data[70],
uint4 up,

#ifdef AUTOCC
bool
#else
service_class
#endif
 s_class,
channel_identifier c_identifier,

#ifdef AUTOCC
char
#else
time_slot
#endif
 t_slot,
uint7 d_rate,
uint4 tx_power_lvl,
long long int expiry_time,
char mac_frame[100],
uint1* medium_state,
uint3* current_txop_holder,
char received_frame[100])
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


		// output port post check: "mac_frame"
		aesl_fh.read(AUTOTB_TVOUT_PC_mac_frame, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_mac_frame, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_mac_frame, AESL_token); // data

			sc_bv<8> *mac_frame_pc_buffer = new sc_bv<8>[100];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'mac_frame', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'mac_frame', possible cause: There are uninitialized variables in the C design." << endl;
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
					mac_frame_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_mac_frame, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_mac_frame))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: mac_frame
				{
					// bitslice(7, 0)
					// {
						// celement: mac_frame(7, 0)
						// {
							sc_lv<8>* mac_frame_lv0_0_99_1 = new sc_lv<8>[100];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: mac_frame(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								if (&(mac_frame[0]) != NULL) // check the null address if the c port is array or others
								{
									mac_frame_lv0_0_99_1[hls_map_index].range(7, 0) = sc_bv<8>(mac_frame_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: mac_frame(7, 0)
						{
							// carray: (0) => (99) @ (1)
							for (int i_0 = 0; i_0 <= 99; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : mac_frame[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : mac_frame[0]
								// output_left_conversion : mac_frame[i_0]
								// output_type_conversion : (mac_frame_lv0_0_99_1[hls_map_index]).to_uint64()
								if (&(mac_frame[0]) != NULL) // check the null address if the c port is array or others
								{
									mac_frame[i_0] = (mac_frame_lv0_0_99_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] mac_frame_pc_buffer;
		}

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

		// "source_addr_mac"
		char* tvin_source_addr_mac = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_source_addr_mac);

		// "data"
		char* tvin_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_data);

		// "up"
		char* tvin_up = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_up);

		// "s_class"
		char* tvin_s_class = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_s_class);

		// "c_identifier_operating_class"
		char* tvin_c_identifier_operating_class = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_identifier_operating_class);

		// "c_identifier_channel_number"
		char* tvin_c_identifier_channel_number = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_identifier_channel_number);

		// "d_rate"
		char* tvin_d_rate = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_d_rate);

		// "tx_power_lvl"
		char* tvin_tx_power_lvl = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_tx_power_lvl);

		// "mac_frame"
		char* tvin_mac_frame = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_mac_frame);
		char* tvout_mac_frame = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_mac_frame);

		// "medium_state"
		char* tvin_medium_state = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_medium_state);

		// "current_txop_holder"
		char* tvin_current_txop_holder = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_current_txop_holder);
		char* tvout_current_txop_holder = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_current_txop_holder);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_source_addr_mac, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_source_addr_mac, tvin_source_addr_mac);

		sc_bv<8>* source_addr_mac_tvin_wrapc_buffer = new sc_bv<8>[6];

		// RTL Name: source_addr_mac
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: source_addr.mac(7, 0)
				{
					// carray: (0) => (5) @ (1)
					for (int i_0 = 0; i_0 <= 5; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : source_addr.mac[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : source_addr.mac[0]
						// regulate_c_name       : source_addr_mac
						// input_type_conversion : source_addr.mac[i_0]
						if (&(source_addr.mac[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> source_addr_mac_tmp_mem;
							source_addr_mac_tmp_mem = source_addr.mac[i_0];
							source_addr_mac_tvin_wrapc_buffer[hls_map_index].range(7, 0) = source_addr_mac_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 6; i++)
		{
			sprintf(tvin_source_addr_mac, "%s\n", (source_addr_mac_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_source_addr_mac, tvin_source_addr_mac);
		}

		tcl_file.set_num(6, &tcl_file.source_addr_mac_depth);
		sprintf(tvin_source_addr_mac, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_source_addr_mac, tvin_source_addr_mac);

		// release memory allocation
		delete [] source_addr_mac_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_data, tvin_data);

		sc_bv<8>* data_tvin_wrapc_buffer = new sc_bv<8>[70];

		// RTL Name: data
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: data(7, 0)
				{
					// carray: (0) => (69) @ (1)
					for (int i_0 = 0; i_0 <= 69; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : data[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : data[0]
						// regulate_c_name       : data
						// input_type_conversion : data[i_0]
						if (&(data[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> data_tmp_mem;
							data_tmp_mem = data[i_0];
							data_tvin_wrapc_buffer[hls_map_index].range(7, 0) = data_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 70; i++)
		{
			sprintf(tvin_data, "%s\n", (data_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_data, tvin_data);
		}

		tcl_file.set_num(70, &tcl_file.data_depth);
		sprintf(tvin_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_data, tvin_data);

		// release memory allocation
		delete [] data_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_up, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_up, tvin_up);

		sc_bv<4> up_tvin_wrapc_buffer;

		// RTL Name: up
		{
			// bitslice(3, 0)
			{
				// celement: up(3, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : up
						// sub_1st_elem          : 
						// ori_name_1st_elem     : up
						// regulate_c_name       : up
						// input_type_conversion : up
						if (&(up) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> up_tmp_mem;
							up_tmp_mem = up;
							up_tvin_wrapc_buffer.range(3, 0) = up_tmp_mem.range(3, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_up, "%s\n", (up_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_up, tvin_up);
		}

		tcl_file.set_num(1, &tcl_file.up_depth);
		sprintf(tvin_up, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_up, tvin_up);

		// [[transaction]]
		sprintf(tvin_s_class, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_s_class, tvin_s_class);

		sc_bv<1> s_class_tvin_wrapc_buffer;

		// RTL Name: s_class
		{
			// bitslice(0, 0)
			{
				// celement: s_class(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : s_class
						// sub_1st_elem          : 
						// ori_name_1st_elem     : s_class
						// regulate_c_name       : s_class
						// input_type_conversion : s_class
						if (&(s_class) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> s_class_tmp_mem;
							s_class_tmp_mem = s_class;
							s_class_tvin_wrapc_buffer.range(0, 0) = s_class_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_s_class, "%s\n", (s_class_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_s_class, tvin_s_class);
		}

		tcl_file.set_num(1, &tcl_file.s_class_depth);
		sprintf(tvin_s_class, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_s_class, tvin_s_class);

		// [[transaction]]
		sprintf(tvin_c_identifier_operating_class, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_identifier_operating_class, tvin_c_identifier_operating_class);

		sc_bv<8> c_identifier_operating_class_tvin_wrapc_buffer;

		// RTL Name: c_identifier_operating_class
		{
			// bitslice(7, 0)
			{
				// celement: c_identifier.operating_class(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : c_identifier.operating_class
						// sub_1st_elem          : 
						// ori_name_1st_elem     : c_identifier.operating_class
						// regulate_c_name       : c_identifier_operating_class
						// input_type_conversion : c_identifier.operating_class
						if (&(c_identifier.operating_class) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> c_identifier_operating_class_tmp_mem;
							c_identifier_operating_class_tmp_mem = c_identifier.operating_class;
							c_identifier_operating_class_tvin_wrapc_buffer.range(7, 0) = c_identifier_operating_class_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_identifier_operating_class, "%s\n", (c_identifier_operating_class_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_identifier_operating_class, tvin_c_identifier_operating_class);
		}

		tcl_file.set_num(1, &tcl_file.c_identifier_operating_class_depth);
		sprintf(tvin_c_identifier_operating_class, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_identifier_operating_class, tvin_c_identifier_operating_class);

		// [[transaction]]
		sprintf(tvin_c_identifier_channel_number, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_identifier_channel_number, tvin_c_identifier_channel_number);

		sc_bv<8> c_identifier_channel_number_tvin_wrapc_buffer;

		// RTL Name: c_identifier_channel_number
		{
			// bitslice(7, 0)
			{
				// celement: c_identifier.channel_number(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : c_identifier.channel_number
						// sub_1st_elem          : 
						// ori_name_1st_elem     : c_identifier.channel_number
						// regulate_c_name       : c_identifier_channel_number
						// input_type_conversion : c_identifier.channel_number
						if (&(c_identifier.channel_number) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> c_identifier_channel_number_tmp_mem;
							c_identifier_channel_number_tmp_mem = c_identifier.channel_number;
							c_identifier_channel_number_tvin_wrapc_buffer.range(7, 0) = c_identifier_channel_number_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_identifier_channel_number, "%s\n", (c_identifier_channel_number_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_identifier_channel_number, tvin_c_identifier_channel_number);
		}

		tcl_file.set_num(1, &tcl_file.c_identifier_channel_number_depth);
		sprintf(tvin_c_identifier_channel_number, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_identifier_channel_number, tvin_c_identifier_channel_number);

		// [[transaction]]
		sprintf(tvin_d_rate, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_d_rate, tvin_d_rate);

		sc_bv<7> d_rate_tvin_wrapc_buffer;

		// RTL Name: d_rate
		{
			// bitslice(6, 0)
			{
				// celement: d_rate(6, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : d_rate
						// sub_1st_elem          : 
						// ori_name_1st_elem     : d_rate
						// regulate_c_name       : d_rate
						// input_type_conversion : d_rate
						if (&(d_rate) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<7> d_rate_tmp_mem;
							d_rate_tmp_mem = d_rate;
							d_rate_tvin_wrapc_buffer.range(6, 0) = d_rate_tmp_mem.range(6, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_d_rate, "%s\n", (d_rate_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_d_rate, tvin_d_rate);
		}

		tcl_file.set_num(1, &tcl_file.d_rate_depth);
		sprintf(tvin_d_rate, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_d_rate, tvin_d_rate);

		// [[transaction]]
		sprintf(tvin_tx_power_lvl, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_tx_power_lvl, tvin_tx_power_lvl);

		sc_bv<4> tx_power_lvl_tvin_wrapc_buffer;

		// RTL Name: tx_power_lvl
		{
			// bitslice(3, 0)
			{
				// celement: tx_power_lvl(3, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : tx_power_lvl
						// sub_1st_elem          : 
						// ori_name_1st_elem     : tx_power_lvl
						// regulate_c_name       : tx_power_lvl
						// input_type_conversion : tx_power_lvl
						if (&(tx_power_lvl) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> tx_power_lvl_tmp_mem;
							tx_power_lvl_tmp_mem = tx_power_lvl;
							tx_power_lvl_tvin_wrapc_buffer.range(3, 0) = tx_power_lvl_tmp_mem.range(3, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_tx_power_lvl, "%s\n", (tx_power_lvl_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_tx_power_lvl, tvin_tx_power_lvl);
		}

		tcl_file.set_num(1, &tcl_file.tx_power_lvl_depth);
		sprintf(tvin_tx_power_lvl, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_tx_power_lvl, tvin_tx_power_lvl);

		// [[transaction]]
		sprintf(tvin_mac_frame, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_mac_frame, tvin_mac_frame);

		sc_bv<8>* mac_frame_tvin_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: mac_frame
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: mac_frame(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : mac_frame[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : mac_frame[0]
						// regulate_c_name       : mac_frame
						// input_type_conversion : mac_frame[i_0]
						if (&(mac_frame[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> mac_frame_tmp_mem;
							mac_frame_tmp_mem = mac_frame[i_0];
							mac_frame_tvin_wrapc_buffer[hls_map_index].range(7, 0) = mac_frame_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvin_mac_frame, "%s\n", (mac_frame_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_mac_frame, tvin_mac_frame);
		}

		tcl_file.set_num(100, &tcl_file.mac_frame_depth);
		sprintf(tvin_mac_frame, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_mac_frame, tvin_mac_frame);

		// release memory allocation
		delete [] mac_frame_tvin_wrapc_buffer;

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
		send_frame(source_addr, dest_addr, data, up, s_class, c_identifier, t_slot, d_rate, tx_power_lvl, expiry_time, mac_frame, medium_state, current_txop_holder, received_frame);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_mac_frame, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_mac_frame, tvout_mac_frame);

		sc_bv<8>* mac_frame_tvout_wrapc_buffer = new sc_bv<8>[100];

		// RTL Name: mac_frame
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: mac_frame(7, 0)
				{
					// carray: (0) => (99) @ (1)
					for (int i_0 = 0; i_0 <= 99; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : mac_frame[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : mac_frame[0]
						// regulate_c_name       : mac_frame
						// input_type_conversion : mac_frame[i_0]
						if (&(mac_frame[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> mac_frame_tmp_mem;
							mac_frame_tmp_mem = mac_frame[i_0];
							mac_frame_tvout_wrapc_buffer[hls_map_index].range(7, 0) = mac_frame_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 100; i++)
		{
			sprintf(tvout_mac_frame, "%s\n", (mac_frame_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_mac_frame, tvout_mac_frame);
		}

		tcl_file.set_num(100, &tcl_file.mac_frame_depth);
		sprintf(tvout_mac_frame, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_mac_frame, tvout_mac_frame);

		// release memory allocation
		delete [] mac_frame_tvout_wrapc_buffer;

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
		// release memory allocation: "source_addr_mac"
		delete [] tvin_source_addr_mac;
		// release memory allocation: "data"
		delete [] tvin_data;
		// release memory allocation: "up"
		delete [] tvin_up;
		// release memory allocation: "s_class"
		delete [] tvin_s_class;
		// release memory allocation: "c_identifier_operating_class"
		delete [] tvin_c_identifier_operating_class;
		// release memory allocation: "c_identifier_channel_number"
		delete [] tvin_c_identifier_channel_number;
		// release memory allocation: "d_rate"
		delete [] tvin_d_rate;
		// release memory allocation: "tx_power_lvl"
		delete [] tvin_tx_power_lvl;
		// release memory allocation: "mac_frame"
		delete [] tvin_mac_frame;
		delete [] tvout_mac_frame;
		// release memory allocation: "medium_state"
		delete [] tvin_medium_state;
		// release memory allocation: "current_txop_holder"
		delete [] tvin_current_txop_holder;
		delete [] tvout_current_txop_holder;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint1
#undef uint1

// apint = uint3
#undef uint3

// apint = uint4
#undef uint4

// apint = uint7
#undef uint7
