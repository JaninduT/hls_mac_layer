#include "MA_UNITDATAX_request.h"


int main(){
	FILE *fp;
	if((fp = fopen("input_data.bin","rb")) == NULL){
		printf("Error opening file\n");
		return 1;
	}

	unsigned char frame[100];
	unsigned char data[70];


	channel_identifier ci;
	ci.operating_class = 17;
	ci.channel_number = 178;
	user_priority_t up = 6;
	data_rate_t dr = 6;
	enum time_slot ts = SLOT_0;
	txpwr_lvl_t tx_p_l = 4;
	int64_t exp = 100;

	uint7 io_d_rate = 0;
	uint4 io_tx_pwr_lvl = 0;

	for (int i=0; i<70; i++){
		fread(&data[i], 1, 1, fp);
	}
	fclose(fp);
	ma_unitdatax_request(my_mac, bcast_wcard_mac, data, up, QOS_NOACK, ci, ts, dr, tx_p_l, exp);
	up = 2;
	ma_unitdatax_request(my_mac, bcast_wcard_mac, data, up, QOS_NOACK, ci, ts, dr, tx_p_l, exp);

	uint4 res = enqueue_dequeue_frame(1, 3, frame, &io_d_rate, &io_tx_pwr_lvl);

	printf("res: %d, d_rate : %d, tx_pwr : %d\n",res, io_d_rate, io_tx_pwr_lvl);

	for(int k=0; k<100; k++){
		printf("%d\n",frame[k]);
	}
	if((io_d_rate == 6) && (io_tx_pwr_lvl == 4)){
		return 0;
	}
	return 1;
}
