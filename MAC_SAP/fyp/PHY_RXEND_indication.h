#ifndef PHY_RXEND_INDICATION_H_
#define PHY_RXEND_INDICATION_H_

#include "common.h"

enum rx_error{
	NO_ERROR = 0,
	FORMAT_VIOLATION = 1,
	CARRIER_LOST = 2,
	UNSUPPORTED_RATE = 3
};

void phy_rxend_indication(
		enum rx_error rec_error,
		volatile uint1 *medium_state,
		uint3 *current_txop_holder,
		unsigned char frame_to_transfer[100],
		unsigned char received_frame[100]
		);

#endif
