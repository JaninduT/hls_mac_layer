#include "edca.h"

static unsigned char edca_fifo_vo[400];
static unsigned char edca_fifo_vi[400];
static unsigned char edca_fifo_be[400];
static unsigned char edca_fifo_bk[400];
static uint2 read_pointer_vo = 0;
static uint2 write_pointer_vo = 0;
static uint3 available_spaces_vo = 4;
static uint2 read_pointer_vi = 0;
static uint2 write_pointer_vi = 0;
static uint3 available_spaces_vi = 4;
static uint2 read_pointer_be = 0;
static uint2 write_pointer_be = 0;
static uint3 available_spaces_be = 4;
static uint2 read_pointer_bk = 0;
static uint2 write_pointer_bk = 0;
static uint3 available_spaces_bk = 4;

bool enqueue_dequeue_frame(uint2 operation, uint2 ac, unsigned char inout_frame[100]){
#pragma HLS ARRAY_MAP variable=edca_fifo_bk instance=edca_queues horizontal
#pragma HLS ARRAY_MAP variable=edca_fifo_be instance=edca_queues horizontal
#pragma HLS ARRAY_MAP variable=edca_fifo_vi instance=edca_queues horizontal
#pragma HLS ARRAY_MAP variable=edca_fifo_vo instance=edca_queues horizontal
	if(operation == 0){
		if (ac == 0){
			if(available_spaces_bk == 0){
				return false;
			}
			write_to_bk:for (int bk=0; bk<100; bk++){
				 edca_fifo_bk[(write_pointer_bk*100)+bk] = inout_frame[bk];
			}
			write_pointer_bk = (write_pointer_bk + 1) % 4;
			available_spaces_bk = available_spaces_bk - 1;
			return true;
		}else if (ac == 1){
			if(available_spaces_be == 0){
				return false;
			}
			write_to_be:for (int be=0; be<100; be++){
				 edca_fifo_be[(write_pointer_be*100)+be] = inout_frame[be];
			}
			write_pointer_be = (write_pointer_be + 1) % 4;
			available_spaces_be = available_spaces_be - 1;
			return true;
		}else if (ac == 2){
			if(available_spaces_vi == 0){
				return false;
			}
			write_to_vi:for (int vi=0; vi<100; vi++){
				 edca_fifo_vi[(write_pointer_vi*100)+vi] = inout_frame[vi];
			}
			write_pointer_vi = (write_pointer_vi + 1) % 4;
			available_spaces_vi = available_spaces_vi - 1;
			return true;
		}else if (ac == 3){
			if(available_spaces_vo == 0){
				return false;
			}
			write_to_vo:for (int vo=0; vo<100; vo++){
				 edca_fifo_vo[(write_pointer_vo*100)+vo] = inout_frame[vo];
			}
			write_pointer_vo = (write_pointer_vo + 1) % 4;
			available_spaces_vo = available_spaces_vo - 1;
			return true;
		}else{
			return false;
		}
	}else if(operation == 1){
		if (ac == 0){
			if(available_spaces_bk == 4){
				return false;
			}
			read_from_bk:for (int bk=0; bk<100; bk++){
				 inout_frame[bk] = edca_fifo_bk[(read_pointer_bk*100)+bk];
			}
			read_pointer_bk = (read_pointer_bk + 1) % 4;
			available_spaces_bk = available_spaces_bk + 1;
			return true;
		}else if (ac == 1){
			if(available_spaces_be == 4){
				return false;
			}
			read_from_be:for (int be=0; be<100; be++){
				 inout_frame[be] = edca_fifo_be[(read_pointer_be*100)+be];
			}
			read_pointer_be = (read_pointer_be + 1) % 4;
			available_spaces_be = available_spaces_be + 1;
			return true;
		}else if (ac == 2){
			if(available_spaces_vi == 4){
				return false;
			}
			read_from_vi:for (int vi=0; vi<100; vi++){
				 inout_frame[vi] = edca_fifo_vi[(read_pointer_vi*100)+vi];
			}
			read_pointer_vi = (read_pointer_vi + 1) % 4;
			available_spaces_vi = available_spaces_vi + 1;
			return true;
		}else if (ac == 3){
			if(available_spaces_vo == 4){
				return false;
			}
			read_from_vo:for (int vo=0; vo<100; vo++){
				 inout_frame[vo] = edca_fifo_vo[(read_pointer_vo*100)+vo];
			}
			read_pointer_vo = (read_pointer_vo + 1) % 4;
			available_spaces_vo = available_spaces_vo + 1;
			return true;
		}else{
			return false;
		}
	}else if (operation == 2){
		read_pointer_vo = 0;
		write_pointer_vo = 0;
		available_spaces_vo = 4;
		read_pointer_vi = 0;
		write_pointer_vi = 0;
		available_spaces_vi = 4;
		read_pointer_be = 0;
		write_pointer_be = 0;
		available_spaces_be = 4;
		read_pointer_bk = 0;
		write_pointer_bk = 0;
		available_spaces_bk = 4;
		return true;
	}else{
		return false;
	}
}
