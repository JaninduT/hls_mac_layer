//#include <stdio.h>
//#include "compose_mac_frame.h"
//
//int main(){
//	unsigned char header_buf[100];
//	frame_type_t ftype = 1;
//	frame_subtype_t fstype = 1;
//	sequence_number_t seqn = 2096;
//	user_priority_t up = 7;
//
//	compose_mac_header(my_mac, ftype, fstype, seqn, up, header_buf);
//
//	for (int i=0; i<26; i++){
//		printf("%d\n",header_buf[i]);
//	}
//
//	bool h1, h22_23, h24 = false;
//
//	if(header_buf[0] == 0x11){
//		h1 = true;
//	}
//	if((header_buf[22] == 0x8) && (header_buf[23] == 0x30)){
//		h22_23 = true;
//	}
//	if(header_buf[24] == 0x74){
//		h24 = true;
//	}
//	if(h1 & h22_23 & h24){
//		return 0;
//	}else{
//		return 1;
//	}
//}
