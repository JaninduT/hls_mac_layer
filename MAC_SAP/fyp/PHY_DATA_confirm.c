#include "PHY_DATA_confirm.h"
#include "PHY_DATA_request.h"
#include "PHY_TXEND_request.h"

#include "common.h"

void phy_data_confirm(unsigned char frame_to_transfer[100]){
	static uint7 count = 0;
	static unsigned char frame[100];
	if(count == 0){
		for(int q=0; q<100; q++){
			frame[q] = frame_to_transfer[q];
		}
	}
	count += 1;
	if(count == 100){
		phy_txend_request();
		count = 0;
		return;
	}else{
		phy_data_request(&frame[count]);
		return;
	}
}
