#include "compose_mac_frame.h"
#include "crc_32.h"
#include "edca.h"


void compose_mac_header(frame_type_t ftype, frame_subtype_t fstype,
		sequence_number_t seqnumber, user_priority_t up,
		unsigned char frame_buffer[100]){
	unsigned char byte_one = 0x00;
	unsigned char cftype = ftype;
	unsigned char cfstype = fstype;

	byte_one = byte_one | (cftype << 4);
	byte_one = byte_one | fstype;

	frame_buffer[0] = byte_one;
	frame_buffer[1] = 0x00;

	frame_buffer[2] = 0x00;
	frame_buffer[3] = 0x00;

	frame_buffer[4] = bcast_wcard_mac.mac[0];
	frame_buffer[5] = bcast_wcard_mac.mac[1];
	frame_buffer[6] = bcast_wcard_mac.mac[2];
	frame_buffer[7] = bcast_wcard_mac.mac[3];
	frame_buffer[8] = bcast_wcard_mac.mac[4];
	frame_buffer[9] = bcast_wcard_mac.mac[5];

	frame_buffer[10] = my_mac.mac[0];
	frame_buffer[11] = my_mac.mac[1];
	frame_buffer[12] = my_mac.mac[2];
	frame_buffer[13] = my_mac.mac[3];
	frame_buffer[14] = my_mac.mac[4];
	frame_buffer[15] = my_mac.mac[5];

	frame_buffer[16] = bcast_wcard_mac.mac[0];
	frame_buffer[17] = bcast_wcard_mac.mac[1];
	frame_buffer[18] = bcast_wcard_mac.mac[2];
	frame_buffer[19] = bcast_wcard_mac.mac[3];
	frame_buffer[20] = bcast_wcard_mac.mac[4];
	frame_buffer[21] = bcast_wcard_mac.mac[5];

	unsigned char seq_num_l = seqnumber & 0xff;
	unsigned char seq_num_h = (seqnumber & 0xf00) >> 8;

	frame_buffer[22] = seq_num_h;
	frame_buffer[23] = seq_num_l;

	unsigned char qos_h = up;
	qos_h = qos_h << 4;
	qos_h = qos_h | 0x4;

	frame_buffer[24] = qos_h;
	frame_buffer[25] = 0x00;

	return;
}

void compose_mac_frame(frame_type_t ftype, frame_subtype_t fstype,
		sequence_number_t seqnumber, user_priority_t up,
		unsigned char data[70], unsigned char mac_frame[100]){

	compose_mac_header(ftype, fstype, seqnumber, up, mac_frame);

	for(int j=0; j<70;j++){
		mac_frame[26+j] = data[j];
	}

	unsigned int crc = calc_crc(mac_frame);
	crc = crc ^ 0xffffffff;

	for(int k=0; k<4; k++){
		mac_frame[99-k] = (crc>>(8*k)) & 0xff;
	}

	return;
}
