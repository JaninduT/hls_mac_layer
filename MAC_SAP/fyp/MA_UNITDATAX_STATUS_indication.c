#include "MA_UNITDATAX_STATUS_indication.h"

static uint8 successful = 0;
static uint8 unsupported_priority = 0;
static uint8 unsupported_service_class = 0;
static uint8 unsupported_channel_identifier = 0;
static uint8 unsupported_tx_params = 0;
static uint8 queue_full = 0;

void ma_unitdatax_status_indication(mac48 source_addr, mac48 dest_addr,
		enum transmission_status trans_sts, user_priority_t provided_priority,
		enum service_class provided_s_class){
	if(trans_sts == 0){
		successful += 1;
	}else if(trans_sts == 1){
		unsupported_priority += 1;
	}else if(trans_sts == 2){
		unsupported_service_class += 1;
	}else if(trans_sts == 3){
		unsupported_channel_identifier += 1;
	}else if(trans_sts == 4){
		unsupported_tx_params += 1;
	}else if(trans_sts == 5){
		queue_full += 1;
	}
	return;
}
