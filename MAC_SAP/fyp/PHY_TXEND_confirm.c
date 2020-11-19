#include "PHY_TXEND_confirm.h"
#include "edca.h"

void phy_txend_confirm(volatile uint1 *medium_state, uint3 *current_txop_holder,
		unsigned char frame_to_transfer[100]){
	bool idle_waited = 0;
	slot_boundary_timing(2, &idle_waited, medium_state);
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
	return;
}
