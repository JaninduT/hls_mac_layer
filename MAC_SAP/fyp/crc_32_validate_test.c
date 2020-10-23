//#include <stdio.h>
//#include <stdlib.h>
//#include "crc_32.h"
//
//int main(){
//	FILE *fp_crc;
//	if((fp_crc = fopen("input_message_crc.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	char crc_data[100];
//
//	for (int k=0; k < 100; k++){
//		fread(&crc_data[k], 1, 1, fp_crc);
//	}
//
//	fclose(fp_crc);
//
//	unsigned int rem2 = validate_crc(crc_data);
//
//	printf("rem2 : ");
//	printf("%X \n",rem2);
//
//	if(rem2 == 0xc704dd7b){
//		return 0;
//	}else{
//		return 1;
//	}
//}
