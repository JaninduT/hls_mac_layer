#include "MA_UNITDATA_indication.h"
#include "common.h"

static unsigned char llc_pdu[70];
static mac48 source_address;
static mac48 dest_address;
static user_priority_t u_priority;

void ma_unitdata_indication (volatile mac48 *source_addr, volatile mac48 *dest_addr,
		volatile unsigned char data[70], volatile user_priority_t *us_priority){
	u_priority = *us_priority;

	for(int i=0; i<70; i++){
		llc_pdu[i] = data[i];
	}

	for(int j=0; j<6; j++){
		source_address.mac[j] = source_addr->mac[j];
		dest_address.mac[j] = dest_addr->mac[j];
	}
	return;
}
