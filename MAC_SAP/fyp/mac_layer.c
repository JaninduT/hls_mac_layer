#include "mac_layer.h"

void send_frame(mac48 source_addr, mac48 dest_addr, unsigned char data[70],
		user_priority_t up, enum service_class s_class, channel_identifier c_identifier,
		enum time_slot t_slot, data_rate_t d_rate, txpwr_lvl_t tx_power_lvl,
		int64_t expiry_time, unsigned char mac_frame[100], volatile uint1 *medium_state){

	ma_unitdatax_request(source_addr, dest_addr, data, up, s_class, c_identifier, t_slot, d_rate,
			tx_power_lvl, expiry_time, medium_state);

	bool res2 = enqueue_dequeue_frame(1, 3, mac_frame, &d_rate, &tx_power_lvl);

	return;
}
