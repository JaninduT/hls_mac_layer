#include "mac_layer.h"

void send_frame(frame_type_t ftype, frame_subtype_t fstype,
		sequence_number_t seqnumber, user_priority_t up,
		unsigned char data[70], unsigned char mac_frame[100]){

	unsigned char temp_frame[100];

	compose_mac_frame(ftype, fstype, seqnumber, up, data, temp_frame);

	bool res1 = enqueue_dequeue_frame(0, 0, temp_frame);

	if(res1){
		bool res2 = enqueue_dequeue_frame(1, 0, mac_frame);
	}
	return;
}
