#ifndef EDCA_H_
#define EDCA_H_

#include "common.h"

bool enqueue_dequeue_frame(
		uint2 operation,
		uint2 ac,
		unsigned char inout_frame[100]
		);

#endif
