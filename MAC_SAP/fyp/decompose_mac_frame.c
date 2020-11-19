#include "decompose_mac_frame.h"

bool decompose_mac_frame(unsigned char mac_frame[100], unsigned char data[70],
		mac48 *source_mac, mac48 *dest_mac, user_priority_t *up){

//	unsigned int crc = validate_crc(mac_frame);
//
//	if(crc != 0xc704dd7b){
//		return false;
//	}

	if((mac_frame[0] > 63) | (mac_frame[1] > 63)){
		return false;
	}

	for (int i=0; i<6; i++){
		if(mac_frame[i+4] != bcast_wcard_mac.mac[i]){
			return false;
		}
		dest_mac->mac[i] = mac_frame[i+4];
		if(mac_frame[i+16] != bcast_wcard_mac.mac[i]){
			return false;
		}
		source_mac->mac[i] = mac_frame[i+10];
	}

	for (int j=0; j<70; j++){
		data[j] = mac_frame[j+26];
	}
	uint8 user_p = mac_frame[24];
	user_p = user_p >> 4;
	*up = user_p;
	return true;
}
