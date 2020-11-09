//#include "mac_layer.h"
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
//	channel_identifier ci;
//	ci.operating_class = 17;
//	ci.channel_number = 178;
//	user_priority_t up = 6;
//	data_rate_t dr = 6;
//	enum time_slot ts = SLOT_0;
//	txpwr_lvl_t tx_p_l = 4;
//	int64_t exp = 100;
//
//	uint7 io_d_rate = 6;
//	uint4 io_tx_pwr_lvl = 4;
//	uint1 med_sts = 0;
//
//	for (int i=0; i<70; i++){
//		fread(&data[i], 1, 1, fp);
//	}
//
//	fclose(fp);
//	send_frame(my_mac, bcast_wcard_mac, data, up, QOS_NOACK, ci, ts, io_d_rate, io_tx_pwr_lvl, exp, frame, &med_sts);
//
//	for(int j=0; j<100; j++){
//		printf("%d\n",frame[j]);
//	}
//	return 0;
//}
