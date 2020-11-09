#ifndef PHY_RXEND_INDICATION_H_
#define PHY_RXEND_INDICATION_H_

#include "stdbool.h"

enum rx_error{
	NO_ERROR = 0,
	FORMAT_VIOLATION = 1,
	CARRIER_LOST = 2,
	UNSUPPORTED_RATE = 3
};

void phy_rxend_indication(
		enum rx_error rec_error,
		bool *receive_error,
		bool *start_edca
		);

#endif
