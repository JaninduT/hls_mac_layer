#ifndef TIMER_H_
#define TIMER_H_

#include "common.h"

void start_timer(
		uint8 count,
		bool *timeout,
		bool count_idle,
		volatile uint1 *medium_state
		);

void stop_timer(
		uint1 *medium_state
		);

#endif
