#include "PHY_RXEND_indication.h"
#include "edca.h"
#include "crc_32.h"
#include "MA_UNITDATA_indication.h"
#include "decompose_mac_frame.h"

void phy_rxend_indication(enum rx_error rec_error, volatile uint1 *medium_state,
		uint3 *current_txop_holder, unsigned char frame_to_transfer[100],
		unsigned char received_frame[100]){
	bool idle_waited = 0;
	if(rec_error == NO_ERROR){
		unsigned int crc = validate_crc(received_frame);
		if(crc != 0xc704dd7b){
			slot_boundary_timing(1, &idle_waited, medium_state);
		}else{
			unsigned char msdu[70];
			mac48 source_addr;
			mac48 dest_addr;
			user_priority_t up;
			if(decompose_mac_frame(received_frame, msdu, &source_addr, &dest_addr, &up)){
				ma_unitdata_indication(&source_addr, &dest_addr, msdu, &up);
			}
			slot_boundary_timing(0, &idle_waited, medium_state);
		}
		while(idle_waited){
			backoff_vo(current_txop_holder);
			backoff_vi(current_txop_holder);
			backoff_be(current_txop_holder);
			backoff_bk(current_txop_holder);
			if(*current_txop_holder != 0){
				start_tx(*current_txop_holder, frame_to_transfer);
				*current_txop_holder = 0;
				return;
			}else{
				slot_boundary_timing(3, &idle_waited, medium_state);
			}
		}
	}else{
		slot_boundary_timing(1, &idle_waited, medium_state);
		while(idle_waited){
			backoff_vo(current_txop_holder);
			backoff_vi(current_txop_holder);
			backoff_be(current_txop_holder);
			backoff_bk(current_txop_holder);
			if(*current_txop_holder != 0){
				start_tx(*current_txop_holder, frame_to_transfer);
				*current_txop_holder = 0;
				return;
			}else{
				slot_boundary_timing(3, &idle_waited, medium_state);
			}
		}
	}
	return;
}
