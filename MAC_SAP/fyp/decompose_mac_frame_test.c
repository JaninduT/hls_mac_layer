//#include "decompose_mac_frame.h"
//
//int main(){
//	FILE *fp;
//	if((fp = fopen("mac_frame.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char frame[100];
//	unsigned char data[70];
//	mac48 source_m;
//	mac48 dest_m;
//	user_priority_t up;
//
//	for (int i=0; i<100; i++){
//		fread(&frame[i], 1, 1, fp);
//	}
//	fclose(fp);
//
//	bool res = decompose_mac_frame(frame, data, &source_m, &dest_m, &up);
//	printf("%d\n",res);
//	if(res == true){
//		for (int j=0; j<70; j++){
//			printf("%d\n",data[j]);
//		}
//		for (int k=0; k<6; k++){
//			printf("%d , %d\n",source_m.mac[k], dest_m.mac[k]);
//		}
//		return 0;
//	}else{
//		return 1;
//	}
//}
