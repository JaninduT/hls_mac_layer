#ifndef PHY_DATA_INDICATION_H_
#define PHY_DATA_INDICATION_H_

#include "common.h"

void phy_data_indication(
		unsigned char data,
		unsigned char received_frame[100],
		uint7 *rec_count
		);

#endif
