#include "edca.h"

int main(){
	uint3 curr_txop = 0;
	backoff_vi(&curr_txop);
	if(curr_txop == 3){
		return 0;
	}
	return 1;
}
