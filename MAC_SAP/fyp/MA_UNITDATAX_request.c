#include "MA_UNITDATAX_request.h"
#include "compose_mac_frame.h"
#include "edca.h"

static sequence_number_t seq_number = 0;
extern volatile uint1 medium_state;

void ma_unitdatax_request (mac48 source_addr, mac48 dest_addr,
		unsigned char data[70], user_priority_t priority,
		enum service_class s_class, channel_identifier c_identifier,
		enum time_slot t_slot, data_rate_t d_rate,
		txpwr_lvl_t tx_power_lvl, int64_t expiry_time){

	if(priority > 7){
		//ma_unitdatax_status_indication();
		return;
	}
	if(s_class == 0){
		//ma_unitdatax_status_indication();
		return;
	}
	if((c_identifier.operating_class != 17) || (c_identifier.channel_number != 178)){
		//ma_unitdatax_status_indication();
		return;
	}
	if((d_rate != 6) || (d_rate != 12) || (d_rate != 24)){
		//ma_unitdatax_status_indication();
		return;
	}

	unsigned char llc_data[70];
	unsigned char mac_data[100];

	for(int i=0; i<70; i++){
		llc_data[i] = data[i];
	}

	compose_mac_frame(1, 1, seq_number, priority, llc_data, mac_data);

	if((priority == 1) || (priority == 2)){
		bool enqueue_res_bk = enqueue_dequeue_frame(0, 0, mac_data);
		if(enqueue_res_bk){
			if(medium_state == 0){
				start_backoff_bk(0);
			}
			//ma_unitdatax_status_indication();
			seq_number += 1;
			return;
		}else{
			//ma_unitdatax_status_indication();
			return;
		}
	}else if((priority == 0) || (priority == 3)){
		bool enqueue_res_be = enqueue_dequeue_frame(0, 1, mac_data);
		if(enqueue_res_be){
			if(medium_state == 0){
				start_backoff_be(0);
			}
			//ma_unitdatax_status_indication();
			seq_number += 1;
			return;
		}else{
			//ma_unitdatax_status_indication();
			return;
		}
	}else if((priority == 4) || (priority == 5)){
		bool enqueue_res_vi = enqueue_dequeue_frame(0, 2, mac_data);
		if(enqueue_res_vi){
			if(medium_state == 0){
				start_backoff_vi(0);
			}
			//ma_unitdatax_status_indication();
			seq_number += 1;
			return;
		}else{
			//ma_unitdatax_status_indication();
			return;
		}
	}else if((priority == 6) || (priority == 7)){
		bool enqueue_res_vo = enqueue_dequeue_frame(0, 3, mac_data);
		if(enqueue_res_vo){
			if(medium_state == 0){
				start_backoff_vo(0);
			}
			//ma_unitdatax_status_indication();
			seq_number += 1;
			return;
		}else{
			//ma_unitdatax_status_indication();
			return;
		}
	}

}
