#include "PHY_TXSTART_request.h"

static bool stop_tx = 0;

void phy_txend_request(){
#pragma HLS INLINE off
	if(stop_tx == 0){
		stop_tx = 1;
	}
	return;
}
