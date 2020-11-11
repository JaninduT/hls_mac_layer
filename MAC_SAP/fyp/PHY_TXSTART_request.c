#include "PHY_TXSTART_request.h"

static tx_vector tx_params;

void phy_txstart_request(tx_vector tx_vec){
	tx_params.data_Rate = tx_vec.data_Rate;
	tx_params.length = tx_vec.length;
	tx_params.tx_power_level = tx_vec.tx_power_level;
	return;
}
