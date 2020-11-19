#include "PHY_RXSTART_indication.h"

void phy_rxstart_indication(rx_vector rx_vec, uint7 *rec_count){
	static rx_vector rx_params;
	rx_params.data_rate = rx_vec.data_rate;
	rx_params.length = rx_vec.length;
	rx_params.rssi = rx_vec.rssi;
	*rec_count = 0;
	return;
}
