#ifndef EDCA_H_
#define EDCA_H_

#include "common.h"

uint4 enqueue_dequeue_frame(
		uint2 operation,
		uint2 ac,
		unsigned char inout_frame[100],
		uint7 *io_d_rate,
		uint4 *io_tx_pwr_lvl
		);

void slot_boundary_timing(
		uint2 timing_mode,
		bool *idle_waiting,
		volatile uint1 *medium_state
		);

void backoff_vo(
		uint3 *current_txop_holder
		);

void backoff_vi(
		uint3 *current_txop_holder
		);

void backoff_be(
		uint3 *current_txop_holder
		);

void backoff_bk(
		uint3 *current_txop_holder
		);

void start_backoff_vo(
		uint1 invoke_reason
		);

void start_backoff_vi(
		uint1 invoke_reason
		);

void start_backoff_be(
		uint1 invoke_reason
		);

void start_backoff_bk(
		uint1 invoke_reason
		);

#endif
