//#include <stdio.h>
//#include <stdlib.h>
//#include "PHY_DATA_confirm.h"
//
//int main(){
//	FILE *fp;
//	if((fp = fopen("mac_frame.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char frame[100];
//
//	for (int i=0; i<100; i++){
//		fread(&frame[i], 1, 1, fp);
//	}
//	fclose(fp);
//	phy_data_confirm(frame);
//	phy_data_confirm(frame);
//	phy_data_confirm(frame);
//	return 0;
//}
