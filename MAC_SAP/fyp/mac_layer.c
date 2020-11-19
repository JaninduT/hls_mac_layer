#include "mac_layer.h"
#include "PHY_RXEND_indication.h"
#include "initial_edca_proc.h"

void send_frame(mac48 source_addr, mac48 dest_addr, unsigned char data[70],
		user_priority_t up, enum service_class s_class, channel_identifier c_identifier,
		enum time_slot t_slot, data_rate_t d_rate, txpwr_lvl_t tx_power_lvl,
		int64_t expiry_time, unsigned char mac_frame[100], volatile uint1 *medium_state,
		uint3 *current_txop_holder, unsigned char received_frame[100]){

	ma_unitdatax_request(source_addr, dest_addr, data, up, s_class, c_identifier, t_slot, d_rate,
			tx_power_lvl, expiry_time, medium_state);
	ma_unitdatax_request(source_addr, dest_addr, data, up, s_class, c_identifier, t_slot, d_rate,
				tx_power_lvl, expiry_time, medium_state);

	//bool res2 = enqueue_dequeue_frame(1, 3, mac_frame, &d_rate, &tx_power_lvl);

	//phy_rxend_indication(NO_ERROR, medium_state, current_txop_holder, mac_frame, received_frame);
	initial_edca_process(medium_state, current_txop_holder, mac_frame);
	unsigned char data_0 = mac_frame[0];
	phy_txstart_confirm(&data_0);
	for(int i=0; i<100;i++){
		phy_data_confirm(mac_frame);
	}
	phy_txend_confirm(medium_state, current_txop_holder, mac_frame);
	return;
}

