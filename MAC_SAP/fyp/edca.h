#ifndef EDCA_H_
#define EDCA_H_

#include "common.h"

bool enqueue_dequeue_frame(
		uint2 operation,
		uint2 ac,
		unsigned char inout_frame[100]
		);

void slot_boundary_timing(
		uint2 timing_mode,
		bool *idle_waiting,
		volatile uint1 *medium_state
		);

#endif
