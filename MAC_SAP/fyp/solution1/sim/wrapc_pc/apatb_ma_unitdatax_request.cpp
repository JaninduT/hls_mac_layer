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



// [dump_enumeration [get_enumeration_list]] ---------->
typedef enum {AESL_AUTO_0} service_class;
typedef enum {AESL_AUTO_1} time_slot;


// wrapc file define: "source_addr_mac"
#define AUTOTB_TVIN_source_addr_mac  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_source_addr_mac.dat"
// wrapc file define: "data"
#define AUTOTB_TVIN_data  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_data.dat"
// wrapc file define: "up"
#define AUTOTB_TVIN_up  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_up.dat"
// wrapc file define: "s_class"
#define AUTOTB_TVIN_s_class  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_s_class.dat"
// wrapc file define: "c_identifier_operating_class"
#define AUTOTB_TVIN_c_identifier_operating_class  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_c_identifier_operating_class.dat"
// wrapc file define: "c_identifier_channel_number"
#define AUTOTB_TVIN_c_identifier_channel_number  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_c_identifier_channel_number.dat"
// wrapc file define: "d_rate"
#define AUTOTB_TVIN_d_rate  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_d_rate.dat"
// wrapc file define: "tx_power_lvl"
#define AUTOTB_TVIN_tx_power_lvl  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_tx_power_lvl.dat"
// wrapc file define: "medium_state"
#define AUTOTB_TVIN_medium_state  "../tv/cdatafile/c.ma_unitdatax_request.autotvin_medium_state.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"


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
			total_list << "{source_addr_mac " << source_addr_mac_depth << "}\n";
			total_list << "{data " << data_depth << "}\n";
			total_list << "{up " << up_depth << "}\n";
			total_list << "{s_class " << s_class_depth << "}\n";
			total_list << "{c_identifier_operating_class " << c_identifier_operating_class_depth << "}\n";
			total_list << "{c_identifier_channel_number " << c_identifier_channel_number_depth << "}\n";
			total_list << "{d_rate " << d_rate_depth << "}\n";
			total_list << "{tx_power_lvl " << tx_power_lvl_depth << "}\n";
			total_list << "{medium_state " << medium_state_depth << "}\n";
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
		int medium_state_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void ma_unitdatax_request (
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
uint1* medium_state);

extern "C" void AESL_WRAP_ma_unitdatax_request (
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

		// "medium_state"
		char* tvin_medium_state = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_medium_state);

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
		ma_unitdatax_request(source_addr, dest_addr, data, up, s_class, c_identifier, t_slot, d_rate, tx_power_lvl, expiry_time, medium_state);

		CodeState = DUMP_OUTPUTS;

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
		// release memory allocation: "medium_state"
		delete [] tvin_medium_state;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint1
#undef uint1

// apint = uint4
#undef uint4

// apint = uint7
#undef uint7
