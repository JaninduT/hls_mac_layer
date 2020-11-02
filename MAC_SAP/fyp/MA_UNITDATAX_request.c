#include "MA_UNITDATAX_request.h"
#include "compose_mac_frame.h"
#include "edca.h"
#include "MA_UNITDATAX_STATUS_indication.h"

static sequence_number_t seq_number = 0;
static volatile uint1 medium_state = 0;

void ma_unitdatax_request (mac48 source_addr, mac48 dest_addr,
		unsigned char data[70], user_priority_t up,
		enum service_class s_class, channel_identifier c_identifier,
		enum time_slot t_slot, data_rate_t d_rate,
		txpwr_lvl_t tx_power_lvl, int64_t expiry_time){

	if(up > 7){
		ma_unitdatax_status_indication(source_addr, dest_addr, 1, up, s_class);
		return;
	}
	if(s_class == 0){
		ma_unitdatax_status_indication(source_addr, dest_addr, 2, up, s_class);
		return;
	}
	if((c_identifier.operating_class != 17) || (c_identifier.channel_number != 178)){
		ma_unitdatax_status_indication(source_addr, dest_addr, 3, up, s_class);
		return;
	}
	if(((d_rate != 6) && (d_rate != 12) && (d_rate != 24)) || (tx_power_lvl == 0) || (tx_power_lvl > 8)){
		ma_unitdatax_status_indication(source_addr, dest_addr, 4, up, s_class);
		return;
	}

	unsigned char llc_data[70];
	unsigned char mac_data[100];

	for(int i=0; i<70; i++){
		llc_data[i] = data[i];
	}

	compose_mac_frame(1, 1, seq_number, up, llc_data, mac_data);

	if((up == 1) || (up == 2)){
		uint4 enqueue_res_bk = enqueue_dequeue_frame(0, 0, mac_data, &d_rate, &tx_power_lvl);
		if(enqueue_res_bk == 14){
			if(medium_state == 0){
				start_backoff_bk(0);
			}
			ma_unitdatax_status_indication(source_addr, dest_addr, 0, up, s_class);
			seq_number += 1;
			return;
		}else{
			ma_unitdatax_status_indication(source_addr, dest_addr, 5, up, s_class);
			return;
		}
	}else if((up == 0) || (up == 3)){
		uint4 enqueue_res_be = enqueue_dequeue_frame(0, 1, mac_data, &d_rate, &tx_power_lvl);
		if(enqueue_res_be == 14){
			if(medium_state == 0){
				start_backoff_be(0);
			}
			ma_unitdatax_status_indication(source_addr, dest_addr, 0, up, s_class);
			seq_number += 1;
			return;
		}else{
			ma_unitdatax_status_indication(source_addr, dest_addr, 5, up, s_class);
			return;
		}
	}else if((up == 4) || (up == 5)){
		uint4 enqueue_res_vi = enqueue_dequeue_frame(0, 2, mac_data, &d_rate, &tx_power_lvl);
		if(enqueue_res_vi == 14){
			if(medium_state == 0){
				start_backoff_vi(0);
			}
			ma_unitdatax_status_indication(source_addr, dest_addr, 0, up, s_class);
			seq_number += 1;
			return;
		}else{
			ma_unitdatax_status_indication(source_addr, dest_addr, 5, up, s_class);
			return;
		}
	}else if((up == 6) || (up == 7)){
		uint4 enqueue_res_vo = enqueue_dequeue_frame(0, 3, mac_data, &d_rate, &tx_power_lvl);
		if(enqueue_res_vo == 14){
			if(medium_state == 0){
				start_backoff_vo(0);
			}
			ma_unitdatax_status_indication(source_addr, dest_addr, 0, up, s_class);
			seq_number += 1;
			return;
		}else{
			ma_unitdatax_status_indication(source_addr, dest_addr, 5, up, s_class);
			return;
		}
	}
}
