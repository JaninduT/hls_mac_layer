//#include "MA_UNITDATA_indication.h"
//#include "common.h"
//
//
//int main(){
//	FILE *fp;
//	if((fp = fopen("input_data.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char data[70];
//	user_priority_t up = 7;
//
//	for (int i=0; i<70; i++){
//		fread(&data[i], 1, 1, fp);
//	}
//
//	fclose(fp);
//
//	ma_unitdata_indication(&my_mac, &bcast_wcard_mac, data, &up);
//
//	return 0;
//}
