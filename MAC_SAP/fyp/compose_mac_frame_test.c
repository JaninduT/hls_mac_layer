//#include <stdlib.h>
//#include <stdio.h>
//#include "crc_32.h"
//#include "compose_mac_frame.h"
//
//int main(){
//	FILE *fp;
//	if((fp = fopen("input_data.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char frame[100];
//	unsigned char data[70];
//	frame_type_t ftype = 1;
//	frame_subtype_t fstype = 1;
//	sequence_number_t seqn = 2096;
//	user_priority_t up = 7;
//
//	for (int i=0; i<70; i++){
//		fread(&data[i], 1, 1, fp);
//	}
//
//	fclose(fp);
//
//	compose_mac_frame(my_mac, ftype, fstype, seqn, up, data, frame);
//
//
//	for (int j=0; j<100; j++){
//		printf("%d\n",frame[j]);
//	}
//
//	unsigned int crc = validate_crc(frame);
//	printf("%X\n",crc);
//
//	if(crc == 0xc704dd7b){
//		return 0;
//	}else{
//		return 1;
//	}
//}
