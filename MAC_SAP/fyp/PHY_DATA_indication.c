#include "PHY_DATA_indication.h"

void phy_data_indication(unsigned char data, unsigned char received_frame[100],
		uint7 *rec_count){
	if(*rec_count<100){
		received_frame[*rec_count] = data;
		*rec_count += 1;
		return;
	}
	*rec_count = 0;
}
