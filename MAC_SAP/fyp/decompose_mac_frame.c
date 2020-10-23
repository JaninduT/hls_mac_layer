#include "decompose_mac_frame.h"

bool decompose_mac_frame(unsigned char mac_frame[100], unsigned char data[70]){

	unsigned int crc = validate_crc(mac_frame);

	if(crc != 0xc704dd7b){
		return false;
	}

	if((mac_frame[0] > 63) | (mac_frame[1] > 63)){
		return false;
	}

	for (int i=0; i<6; i++){
		if(mac_frame[i+4] != bcast_wcard_mac.mac[i]){
			return false;
		}
		if(mac_frame[i+16] != bcast_wcard_mac.mac[i]){
			return false;
		}
	}

	for (int j=0; j<70; j++){
		data[j] = mac_frame[j+26];
	}
	return true;
}
