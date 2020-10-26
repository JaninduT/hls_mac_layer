#include "timer.h"

void start_timer(uint8 count, bool *timeout, bool count_idle, volatile uint1 *medium_state){
	volatile uint16 total_count = 0;
	volatile uint16 tc = 0;
	total_count = count*100;
	*timeout = false;
	for (uint20 i=0; i<total_count-2; i++){
		if(count_idle == 1){
			if(*medium_state == 1){
				tc = tc + 1;
			}else{
				*timeout = false;
				return;
			}
		}else{
			tc = tc + 1;
		}
	}
	*timeout = true;
	return;
}

void stop_timer(uint1 *medium_state){
	*medium_state = 0;
	return;
}
