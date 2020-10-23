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
//
//	for (int i=0; i<100; i++){
//		fread(&frame[i], 1, 1, fp);
//	}
//	fclose(fp);
//
//	bool res = decompose_mac_frame(frame, data);
//	printf("%d\n",res);
//	if(res == true){
//		for (int j=0; j<70; j++){
//			printf("%d\n",data[j]);
//		}
//		return 0;
//	}else{
//		return 1;
//	}
//}
