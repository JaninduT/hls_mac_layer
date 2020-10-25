#include "timer.h"

void start_timer(uint8 count, bool *timeout){
	volatile uint20 total_count = 0;
	volatile uint20 tc = 0;
	total_count = count*100;
	*timeout = false;
	for (uint20 i=0; i<total_count-2; i++){
		tc = tc +1 ;
	}
	*timeout = true;
	return;
}
