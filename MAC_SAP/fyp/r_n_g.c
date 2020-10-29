#include "r_n_g.h"

float random_int_gen(uint32 *state){
	const uint32 A = 48271;
	uint32 low = (*state & 0x7fff);
#pragma HLS RESOURCE variable=low core=Mul
	low = low * A;
	uint32 high = (*state >> 15);
	high = high * A;
	uint32 x = (high & 0xffff) << 15 + (high >> 16);
	x = x + low;
	x = (x & 0x7fffffff) + (x >> 31);
	*state = x;
	return (float)x / 2147483647;
}
