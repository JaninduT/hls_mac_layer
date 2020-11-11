#ifndef PHY_TXEND_CONFIRM_H_
#define PHY_TXEND_CONFIRM_H_

#include "common.h"

void phy_txend_confirm(
		volatile uint1 *medium_state,
		uint3 *current_txop_holder,
		unsigned char frame_to_transfer[100]
		);

#endif
