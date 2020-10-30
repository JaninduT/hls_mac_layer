#ifndef MA_UNITDATAX_REQUEST_H_
#define MA_UNITDATAX_REQUEST_H_

#include "common.h"

void ma_unitdatax_request (
		mac48 *source_addr,
		mac48 *dest_addr,
		unsigned char data[70],
		user_priority_t up,
		enum service_class s_class,
		channel_identifier c_identifier,
		enum time_slot *t_slot,
		data_rate_t *d_rate,
		txpwr_lvl_t *tx_power_lvl,
		int64_t *expiry_time
		);

#endif
