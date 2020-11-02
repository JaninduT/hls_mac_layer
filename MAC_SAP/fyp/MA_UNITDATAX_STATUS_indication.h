#ifndef MA_UNITDATAX_STATUS_INDICATION_H_
#define MA_UNITDATAX_STATUS_INDICATION_H_

#include "common.h"

enum transmission_status{
	SUCCESSFUL = 0,
	UNDELIVERABLE_UNSUPPORTED_PRIORITY  = 1,
	UNDELIVERABLE_UNSUPPORTED_SERVICE_CLASS  = 2,
	UNDELIVERABLE_UNSUPPORTED_CHANNEL_IDENTIFIER  = 3,
	UNDELIVERABLE_UNSUPPORTED_TX_PARAMETERS  = 4,
	UNSUCCESSFULL_QUEUE_FULL = 5
};

void ma_unitdatax_status_indication(
		mac48 source_addr,
		mac48 dest_addr,
		enum transmission_status trans_sts,
		user_priority_t provided_priority,
		enum service_class provided_s_class
		);

#endif
