#ifndef MA_UNITDATA_INDICATION_H_
#define MA_UNITDATA_INDICATION_H_

#include "common.h"

void ma_unitdata_indication (
		mac48 source_addr,
		mac48 dest_addr,
		unsigned char data[70],
		user_priority_t priority,
		enum service_class s_class
		);

#endif
