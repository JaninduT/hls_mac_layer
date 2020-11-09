// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXEND_confirm.c"
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXEND_confirm.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXEND_confirm.c" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXEND_confirm.h" 1



# 1 "D:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdbool.h" 1 3 4
# 5 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXEND_confirm.h" 2

void phy_txend_confirm(
  _Bool *tx_ended
  );
# 2 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXEND_confirm.c" 2

void phy_txend_confirm(_Bool *tx_ended){
 *tx_ended = 1;
 return;
}
