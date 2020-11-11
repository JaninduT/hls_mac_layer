#include "PHY_TXSTART_request.h"

static bool stop_tx = 0;

void phy_txend_request(){
	if(stop_tx == 0){
		stop_tx = 1;
	}
	return;
}
