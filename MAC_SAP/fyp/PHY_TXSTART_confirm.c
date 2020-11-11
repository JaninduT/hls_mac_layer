#include "PHY_TXSTART_confirm.h"
#include "PHY_DATA_request.h"

void phy_txstart_confirm(unsigned char *data_0){
	volatile unsigned char data = *data_0;
	phy_data_request(&data);
	return;
}
