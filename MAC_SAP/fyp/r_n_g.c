#include "r_n_g.h"

//div value - 2147483647

uint10 random_int_gen(uint32 *state, uint10 max_val){
#pragma HLS INLINE off
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
	uint10 ret_val = x % max_val;
	return ret_val;
}
