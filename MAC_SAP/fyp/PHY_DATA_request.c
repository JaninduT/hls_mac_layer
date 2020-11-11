#include "PHY_DATA_request.h"

unsigned char tx_0 = 0;

void phy_data_request(volatile unsigned char *data){
#pragma HLS INLINE off
	tx_0 = *data;
	return;
}
