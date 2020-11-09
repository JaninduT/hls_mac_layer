// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_RXEND_indication.c"
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_RXEND_indication.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_RXEND_indication.c" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_RXEND_indication.h" 1



# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdbool.h" 1 3 4
# 5 "E:/FYP/HLS/MAC_SAP/fyp/PHY_RXEND_indication.h" 2

enum rx_error{
 NO_ERROR = 0,
 FORMAT_VIOLATION = 1,
 CARRIER_LOST = 2,
 UNSUPPORTED_RATE = 3
};

void phy_rxend_indication(
  enum rx_error rec_error,
  _Bool *receive_error,
  _Bool *start_edca
  );
# 2 "E:/FYP/HLS/MAC_SAP/fyp/PHY_RXEND_indication.c" 2

void phy_rxend_indication(enum rx_error rec_error, _Bool *receive_error, _Bool *start_edca){
 if(rec_error == NO_ERROR){
  *receive_error = 0;
  *start_edca = 0;
 }else{
  *receive_error = 1;
  *start_edca = 1;
 }
 return;
}
