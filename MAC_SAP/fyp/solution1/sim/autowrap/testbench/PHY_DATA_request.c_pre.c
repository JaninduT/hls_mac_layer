# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_DATA_request.c"
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_DATA_request.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_DATA_request.c" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_DATA_request.h" 1



void phy_data_request(
  volatile unsigned char *data
  );
# 2 "E:/FYP/HLS/MAC_SAP/fyp/PHY_DATA_request.c" 2

unsigned char tx_0 = 0;

void phy_data_request(volatile unsigned char *data){
#pragma HLS INLINE off
 tx_0 = *data;
 return;
}
