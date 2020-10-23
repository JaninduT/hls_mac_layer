#ifndef EDCA_H_
#define EDCA_H_

#include "common.h"

void reset_pointers();

bool enqueue_frame(
		uint2 ac,
		unsigned char input_frame[100]
		);

bool dequeue_frame(
		uint2 ac,
		unsigned char output_frame[100]
		);

bool enqueue_dequeue_frame(
		uint1 operation,
		uint2 ac,
		unsigned char inout_frame[100]
		);

#endif
