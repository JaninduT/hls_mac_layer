#include "edca.h"
#include "timer.h"

static unsigned char edca_fifo_vo[400];
static unsigned char edca_fifo_vi[400];
static unsigned char edca_fifo_be[400];
static unsigned char edca_fifo_bk[400];
static uint2 read_pointer_vo = 0;
static uint2 write_pointer_vo = 0;
static uint3 available_spaces_vo = 4;
static uint2 read_pointer_vi = 0;
static uint2 write_pointer_vi = 0;
static uint3 available_spaces_vi = 3;
static uint2 read_pointer_be = 0;
static uint2 write_pointer_be = 0;
static uint3 available_spaces_be = 4;
static uint2 read_pointer_bk = 0;
static uint2 write_pointer_bk = 0;
static uint3 available_spaces_bk = 4;


static uint10 vo_backoff_counter = 0;
static uint10 vi_backoff_counter = 0;
static uint10 be_backoff_counter = 0;
static uint10 bk_backoff_counter = 0;

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

void slot_boundary_timing(uint2 timing_mode, bool *idle_waiting, volatile uint1 *medium_state){
	*idle_waiting = false;
	bool sifs_timeout = false;
	bool idle_timeout = false;
	if (timing_mode == 0){
		sifs_timeout = false;
		idle_timeout = false;
		start_timer(SIFS, &sifs_timeout, false, medium_state);
		if(sifs_timeout == true){
			start_timer(rx_ok, &idle_timeout, true, medium_state);
			if(idle_timeout == true){
				*idle_waiting = true;
				return;
			}else{
				*idle_waiting = false;
				return;
			}
		}else{
			return;
		}
	}else if (timing_mode == 1){
		idle_timeout = false;
		start_timer(rx_error, &idle_timeout, true, medium_state);
		if(idle_timeout == true){
			*idle_waiting = true;
			return;
		}else{
			*idle_waiting = false;
			return;
		}
	}else if (timing_mode == 2){
		sifs_timeout = false;
		idle_timeout = false;
		start_timer(SIFS, &sifs_timeout, false, medium_state);
		if(sifs_timeout == true){
			start_timer(tx_ok, &idle_timeout, true, medium_state);
			if(idle_timeout == true){
				*idle_waiting = true;
				return;
			}else{
				*idle_waiting = false;
				return;
			}
		}else{
			return;
		}
	}else if (timing_mode == 3){
		idle_timeout = false;
		start_timer(aSlotTime, &idle_timeout, true, medium_state);
		if(idle_timeout == true){
			*idle_waiting = true;
			return;
		}else{
			*idle_waiting = false;
			return;
		}
	}
}

void backoff_vo(uint3 *current_txop_holder){
	if(available_spaces_vo < 4){
		if(vo_backoff_counter == 0){
			*current_txop_holder = 4;
			return;
		}else{
			vo_backoff_counter = vo_backoff_counter - 1;
			return;
		}
	}
}

void backoff_vi(uint3 *current_txop_holder){
	if(available_spaces_vi < 4){
		if(vi_backoff_counter == 0){
			if(*current_txop_holder < 3){
				*current_txop_holder = 3;
				return;
			}else{
				//start_backoff_vi();
				return;
			}
		}else{
			vi_backoff_counter = vi_backoff_counter - 1;
			return;
		}
	}
}

void backoff_be(uint3 *current_txop_holder){
	if(available_spaces_be < 4){
		if(be_backoff_counter == 0){
			if(*current_txop_holder < 2){
				*current_txop_holder = 2;
				return;
			}else{
				//start_backoff_be();
				return;
			}
		}else{
			be_backoff_counter = be_backoff_counter - 1;
			return;
		}
	}
}

void backoff_bk(uint3 *current_txop_holder){
	if(available_spaces_bk < 4){
		if(bk_backoff_counter == 0){
			if(*current_txop_holder < 1){
				*current_txop_holder = 1;
				return;
			}else{
				//start_backoff_bk();
				return;
			}
		}else{
			bk_backoff_counter = bk_backoff_counter - 1;
			return;
		}
	}
}

