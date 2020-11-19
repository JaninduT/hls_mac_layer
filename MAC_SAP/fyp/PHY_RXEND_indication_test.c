//#include "PHY_RXEND_indication.h"
//
//int main(void){
//	uint1 medi_sts = 0;
//	uint3 cu_txop_h = 0;
//	unsigned char data[100];
//	unsigned char frame[100];
//
//	FILE *fp;
//	if((fp = fopen("mac_frame.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	for (int i=0; i<100; i++){
//		fread(&frame[i], 1, 1, fp);
//	}
//	fclose(fp);
//
//	phy_rxend_indication(NO_ERROR, &medi_sts, &cu_txop_h, data, frame);
////	phy_rxend_indication(FORMAT_VIOLATION, &r_error, &s_edca);
////	phy_rxend_indication(NO_ERROR, &r_error, &s_edca);
////	phy_rxend_indication(UNSUPPORTED_RATE, &r_error, &s_edca);
////	printf("%d, %d, %d, %d, %d\n",res1, res2, res3, res4, s_edca);
////	if((res1==0)&&(res2==1)&&(res3==0)&&(res4==1)){
////		return 0;
////	}
////	return 1;
//	return 0;
//}
