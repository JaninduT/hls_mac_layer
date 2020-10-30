//#include "edca.h"
//
//int main(){
//	FILE *fp;
//	if((fp = fopen("mac_frame.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char frame[100];
//	unsigned char o_frame[100];
//	uint7 data_r;
//	uint4 tx_pwr;
//
//	for (int i=0; i<100; i++){
//		fread(&frame[i], 1, 1, fp);
//	}
//
//	fclose(fp);
//
////	reset_pointers();
////	bool res1 = enqueue_frame(0, frame);
////	bool res2 = enqueue_frame(0, frame);
////	bool res3 = enqueue_frame(0, frame);
////	bool res4 = enqueue_frame(0, frame);
////	bool res5 = enqueue_frame(0, frame);
////	bool res11 = dequeue_frame(0, o_frame);
////	bool res22 = dequeue_frame(0, o_frame);
////	bool res33 = dequeue_frame(0, o_frame);
////	bool res44 = dequeue_frame(0, o_frame);
////	bool res55 = dequeue_frame(0, o_frame);
////	printf("%d,%d,%d,%d,%d\n",res1,res2,res3,res4,res5);
////	printf("%d,%d,%d,%d,%d\n",res11,res22,res33,res44,res55);
//	data_r = 6;
//	tx_pwr = 2;
//	bool res1 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	data_r = 12;
//	tx_pwr = 4;
//	bool res2 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	data_r= 24;
//	tx_pwr = 6;
//	bool res3 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	data_r = 6;
//	tx_pwr = 8;
//	bool res4 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//
//	bool res5 = enqueue_dequeue_frame(1, 0, o_frame, &data_r, &tx_pwr);
//	printf("d_r: %d, t_p_l: %d\n",data_r,tx_pwr);
//	bool res12 = enqueue_dequeue_frame(1, 0, o_frame, &data_r, &tx_pwr);
//	printf("d_r: %d, t_p_l: %d\n",data_r,tx_pwr);
//	bool res13 = enqueue_dequeue_frame(1, 0, o_frame, &data_r, &tx_pwr);
//	printf("d_r: %d, t_p_l: %d\n",data_r,tx_pwr);
//	bool res14 = enqueue_dequeue_frame(1, 0, o_frame, &data_r, &tx_pwr);
//	printf("d_r: %d, t_p_l: %d\n",data_r,tx_pwr);
//
//
//	bool res6 = enqueue_dequeue_frame(2, 0, o_frame, &data_r, &tx_pwr);
//
//	bool res7 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	bool res8 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	bool res9 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	bool res10 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	bool res11 = enqueue_dequeue_frame(0, 0, frame, &data_r, &tx_pwr);
//	printf("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n",res1,res2,res3,res4,res5,res6,res7,res8,res9,res11);
//
//	for (int j=0; j<100; j++){
//		printf("%d , %d\n",o_frame[j],frame[j]);
//	}
//	return 0;
//}
