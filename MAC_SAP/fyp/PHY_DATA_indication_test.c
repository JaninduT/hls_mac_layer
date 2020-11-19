//#include "PHY_DATA_indication.h"
//
//int main(){
//	uint7 rec_count = 0;
//	unsigned char data[100];
//
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
//
//	for(int j=0; j<100; j++){
//		phy_data_indication(frame[j], data, &rec_count);
//	}
//
//	printf("%d\n",rec_count);
//
//	for(int u=0; u<100; u++){
//		if(data[u] != frame[u]){
//			return 1;
//		}
//	}
//	return 0;
//
//}
