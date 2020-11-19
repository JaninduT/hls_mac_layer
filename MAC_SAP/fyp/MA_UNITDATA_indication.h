#ifndef MA_UNITDATA_INDICATION_H_
#define MA_UNITDATA_INDICATION_H_

#include "common.h"

void ma_unitdata_indication (
		volatile mac48 *source_addr,
		volatile mac48 *dest_addr,
		volatile unsigned char data[70],
		volatile user_priority_t *us_priority
		);

#endif
