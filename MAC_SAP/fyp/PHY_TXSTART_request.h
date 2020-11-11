#ifndef PHY_TXSTART_REQUEST_H_
#define PHY_TXSTART_REQUEST_H_

#include "common.h"

typedef struct{
	data_rate_t data_Rate;
	uint7 length;
	txpwr_lvl_t tx_power_level;
}tx_vector;

void phy_txstart_request(tx_vector tx_vec);

#endif

