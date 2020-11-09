#include "PHY_RXEND_indication.h"

void phy_rxend_indication(enum rx_error rec_error, bool *receive_error, bool *start_edca){
	if(rec_error == NO_ERROR){
		*receive_error = 0;
		*start_edca = 0;
	}else{
		*receive_error = 1;
		*start_edca = 1;
	}
	return;
}
