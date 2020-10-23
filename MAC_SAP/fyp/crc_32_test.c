//#include <stdio.h>
//#include <stdlib.h>
//#include "crc_32.h"
//
//int main(){
//	FILE *fp;
//	if((fp = fopen("input_message.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char init_data[100];
//
////	init_data[0] = 0xff;
////	fprintf(fp,"%d",0xff);
////	fprintf(fp,"\n");
//
//	for (int j=0; j < 96; j++){
//		//char d = rand() % 256;
//		//init_data[j] = d;
//		fread(&init_data[j], 1, 1, fp);
//		//printf("%d \n",init_data[j]);
//		//fprintf(fp,"\n");
//	}
////	fwrite(&init_data, 1, 96, fp);
//
//	fclose(fp);
//
//	unsigned int rem1 = calc_crc(init_data);
//
//	rem1 = rem1 ^ 0xffffffff;
//
//	printf("rem1 : ");
//	printf("%X \n",rem1);
//
////	char crc_data[100];
////
////	for (int k=0; k < 96; k++){
////		crc_data[k] = init_data[k];
//////		fprintf(fp_crc,"%d",init_data[k]);
//////		fprintf(fp_crc,"\n");
////	}
////
////	for (int i=0 ; i < 4; i++){
////		crc_data[99-i] = (rem1>>(8*i)) & 0xff;
//////		fprintf(fp_crc,"%d",crc_data[99-i]);
//////		fprintf(fp_crc,"\n");
////	}
////
////	fwrite(&crc_data, 1, 100, fp_crc);
////	fclose(fp_crc);
////
////	unsigned int rem2 = validate_crc(crc_data);
////
////	printf("rem2 : ");
////	printf("%X \n",rem2);
//
//	if(rem1 == 0x90a88447){
//		return 0;
//	}else{
//		return 1;
//	}
//}
