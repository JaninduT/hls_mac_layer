#ifndef PHY_CCA_INDICATION_H_
#define PHY_CCA_INDICATION_H_

#include "common.h"

enum physical_medium_state{
	BUSY = 0,
	IDLE = 1
};

void phy_cca_indication(
		enum physical_medium_state m_state,
		uint1 *medium_state
		);

#endif
