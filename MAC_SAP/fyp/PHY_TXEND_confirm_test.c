//#include "PHY_TXEND_confirm.h"
//
//int main(void){
//	FILE *fp;
//	if((fp = fopen("input_data.bin","rb")) == NULL){
//		printf("Error opening file\n");
//		return 1;
//	}
//
//	unsigned char data[70];
//	unsigned char ftt[100];
//
//	channel_identifier ci;
//	ci.operating_class = 17;
//	ci.channel_number = 178;
//	user_priority_t up = 6;
//	data_rate_t dr = 6;
//	enum time_slot ts = SLOT_0;
//	txpwr_lvl_t tx_p_l = 4;
//	int64_t exp = 100;
//
//	uint7 io_d_rate = 0;
//	uint4 io_tx_pwr_lvl = 0;
//
//	uint1 med_sts = 1;
//	uint3 curr_txop = 0;
//
//	for (int i=0; i<70; i++){
//		fread(&data[i], 1, 1, fp);
//	}
//	fclose(fp);
//
//	ma_unitdatax_request(my_mac, bcast_wcard_mac, data, up, QOS_NOACK, ci, ts, dr, tx_p_l, exp, &med_sts);
//	phy_txend_confirm(&med_sts, &curr_txop, ftt);
//	for(int u=0; u<70; u++){
//		if(data[u] != ftt[u+26]){
//			return 1;
//		}
//	}
//	return 0;
//}
