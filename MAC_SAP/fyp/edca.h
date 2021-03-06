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
		uint3 timing_mode,
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
		uint2 invoke_reason
		);

void start_backoff_vi(
		uint2 invoke_reason
		);

void start_backoff_be(
		uint2 invoke_reason
		);

void start_backoff_bk(
		uint2 invoke_reason
		);

void start_tx(
		uint3 current_txop_holder,
		unsigned char tx_frame[100]
		);

#endif
