#ifndef INITIAL_EDCA_PROC_H_
#define INITIAL_EDCA_PROC_H_

#include "common.h"

void initial_edca_process(
		volatile uint1 *medium_state,
		uint3 *current_txop_holder,
		unsigned char frame_to_transfer[100]
		);

#endif
