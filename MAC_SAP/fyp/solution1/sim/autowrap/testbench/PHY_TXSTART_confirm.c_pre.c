# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXSTART_confirm.c"
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXSTART_confirm.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXSTART_confirm.c" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXSTART_confirm.h" 1



void phy_txstart_confirm(
  unsigned char *data_0
  );
# 2 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXSTART_confirm.c" 2
# 1 "E:/FYP/HLS/MAC_SAP/fyp/PHY_DATA_request.h" 1



void phy_data_request(
  volatile unsigned char *data
  );
# 3 "E:/FYP/HLS/MAC_SAP/fyp/PHY_TXSTART_confirm.c" 2

void phy_txstart_confirm(unsigned char *data_0){
 volatile unsigned char data = *data_0;
 phy_data_request(&data);
 return;
}
