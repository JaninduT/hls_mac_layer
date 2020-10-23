// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "E:/FYP/HLS/MAC_SAP/fyp/crc_32.c"
# 1 "E:/FYP/HLS/MAC_SAP/fyp/crc_32.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/crc_32.c" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/crc_32.h" 1








unsigned int calc_crc(unsigned char data[100]);

unsigned int validate_crc(unsigned char data[100]);
# 2 "E:/FYP/HLS/MAC_SAP/fyp/crc_32.c" 2



unsigned int calc_crc(unsigned char data[100]){
 unsigned int remainder = 0xffffffff;

 char_array_loop: for (int i=0; i < 96; i++){
  unsigned int byte_of_interest = data[i];
  remainder = remainder ^ (byte_of_interest << 24);
  iter_through_byte_loop: for (int j=0; j < 8; j++){
   if (remainder & 0x80000000){
    remainder = (remainder << 1) ^ 0x04c11db7;
   }else{
    remainder = remainder << 1;
   }


  }
 }
 return remainder;
}
