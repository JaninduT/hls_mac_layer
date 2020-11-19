// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern void AESL_WRAP_send_frame (
mac48 source_addr,
mac48 dest_addr,
unsigned char data[70],
uint4 up,
enum service_class s_class,
channel_identifier c_identifier,
enum time_slot t_slot,
uint7 d_rate,
uint4 tx_power_lvl,
long long int expiry_time,
unsigned char mac_frame[100],
volatile uint1* medium_state,
uint3* current_txop_holder,
unsigned char received_frame[100]);
