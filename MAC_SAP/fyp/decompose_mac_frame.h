#ifndef DECOMPOSE_MAC_FRAME_H_
#define DECOMPOSE_MAC_FRAME_H_

#include "common.h"

bool decompose_mac_frame(
		unsigned char mac_frame[100],
		unsigned char data[70],
		mac48 *source_mac,
		mac48 *dest_mac,
		user_priority_t *up
		);

#endif
