#ifndef MAC_LAYER_H_
#define MAC_LAYER_H

#include "common.h"
#include "crc_32.h"
#include "compose_mac_frame.h"
#include "decompose_mac_frame.h"
#include "edca.h"

enum mac_operation{
	MA_UNITDATAX_request = 0
};

void send_frame(
		mac48 source_addr,
		mac48 dest_addr,
		unsigned char data[70],
		user_priority_t up,
		enum service_class s_class,
		channel_identifier c_identifier,
		enum time_slot t_slot,
		data_rate_t d_rate,
		txpwr_lvl_t tx_power_lvl,
		int64_t expiry_time,
		unsigned char mac_frame[100],
		volatile uint1 *medium_state
		);

#endif
