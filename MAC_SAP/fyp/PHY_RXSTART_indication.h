#ifndef PHY_RXSTART_INDICATION_H_
#define PHY_RXSTART_INDICATION_H_

#include "common.h"

typedef struct{
	data_rate_t data_rate;
	uint7 length;
	uint7 rssi;
}rx_vector;

void phy_rxstart_indication(
		rx_vector rx_vec,
		uint7 *rec_count);

#endif
