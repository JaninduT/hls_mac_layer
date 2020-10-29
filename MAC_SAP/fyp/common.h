#ifndef COMMON_H_
#define COMMON_H_

#include <ap_cint.h>
#include "stdint.h"

typedef uint4 user_priority_t;
typedef uint7 data_rate_t;
typedef uint4 txpwr_lvl_t;

typedef struct {
	unsigned char mac[6];
}mac48;

typedef struct {
	unsigned char operating_class;
	unsigned char channel_number;
}channel_identifier;

enum service_class {
	QOS_ACK   = 0,
	QOS_NOACK = 1
};

enum time_slot {
	SLOT_0 = 0,
	SLOT_1 = 1,
	EITHER = 3
};

static const mac48 my_mac = {.mac[0]=0xff, .mac[1]=0xab, .mac[2]=0xbc, .mac[3]=0xcd, .mac[4]=0xde, .mac[5]=0xef};
static const mac48 bcast_wcard_mac = {.mac[0]=0xff, .mac[1]=0xff, .mac[2]=0xff, .mac[3]=0xff, .mac[4]=0xff, .mac[5]=0xff};

static const uint8 SIFS = 2;
static const uint8 rx_ok = 2;
static const uint8 rx_error = 2;
static const uint8 tx_ok = 2;
static const uint8 aSlotTime = 2;

#define aCWmin 15
#define aCWmax 1023

#endif
