#ifndef COMPOSE_MAC_FRAME_H_
#define COMPOSE_MAC_FRAME_H_

#include "common.h"

typedef uint2 frame_type_t;
typedef uint4 frame_subtype_t;
typedef uint12 sequence_number_t;

void compose_mac_header(
		mac48 source_addr,
		frame_type_t ftype,
		frame_subtype_t fstype,
		sequence_number_t seqnumber,
		user_priority_t up,
		unsigned char frame_buffer[100]
		);

void compose_mac_frame(
		mac48 source_addr,
		frame_type_t ftype,
		frame_subtype_t fstype,
		sequence_number_t seqnumber,
		user_priority_t up,
		unsigned char data[70],
		unsigned char mac_frame[100]
		);

#endif
