#ifndef MAC_LAYER_H_
#define MAC_LAYER_H

#include "common.h"
#include "crc_32.h"
#include "compose_mac_frame.h"
#include "decompose_mac_frame.h"
#include "edca.h"

void send_frame(
		frame_type_t ftype,
		frame_subtype_t fstype,
		sequence_number_t seqnumber,
		user_priority_t up,
		unsigned char data[70],
		unsigned char mac_frame[100]
		);

#endif
