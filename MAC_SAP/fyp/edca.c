#include "edca.h"
#include "timer.h"
#include "r_n_g.h"

static unsigned char edca_fifo_vo[400];
static unsigned char edca_fifo_vi[400];
static unsigned char edca_fifo_be[400];
static unsigned char edca_fifo_bk[400];

static uint7 vo_data_rate[4];
static uint7 vi_data_rate[4];
static uint7 be_data_rate[4];
static uint7 bk_data_rate[4];

static uint4 vo_tx_pwr_lvl[4];
static uint4 vi_tx_pwr_lvl[4];
static uint4 be_tx_pwr_lvl[4];
static uint4 bk_tx_pwr_lvl[4];

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
static uint10 CW_vo = aCWmin;
static uint10 CW_vi = aCWmin;
static uint10 CW_be = aCWmin;
static uint10 CW_bk = aCWmin;

static uint10 vo_backoff_counter = 0;
static uint10 vi_backoff_counter = 0;
static uint10 be_backoff_counter = 0;
static uint10 bk_backoff_counter = 0;

static uint32 rand_state = 123456789;

uint4 enqueue_dequeue_frame(uint2 operation, uint2 ac, unsigned char inout_frame[100],
		uint7 *io_d_rate, uint4 *io_tx_pwr_lvl){
#pragma HLS INLINE off
#pragma HLS ARRAY_MAP variable=edca_fifo_bk instance=edca_queues horizontal
#pragma HLS ARRAY_MAP variable=edca_fifo_be instance=edca_queues horizontal
#pragma HLS ARRAY_MAP variable=edca_fifo_vi instance=edca_queues horizontal
#pragma HLS ARRAY_MAP variable=edca_fifo_vo instance=edca_queues horizontal
	if(operation == 0){
		if (ac == 0){
			if(available_spaces_bk == 0){
				return 0;
			}
			write_to_bk:for (int bk=0; bk<100; bk++){
				 edca_fifo_bk[(write_pointer_bk*100)+bk] = inout_frame[bk];
			}
			bk_data_rate[write_pointer_bk] = *io_d_rate;
			bk_tx_pwr_lvl[write_pointer_bk] = *io_tx_pwr_lvl;

			write_pointer_bk = (write_pointer_bk + 1) % 4;
			available_spaces_bk = available_spaces_bk - 1;
			return 14;
		}else if (ac == 1){
			if(available_spaces_be == 0){
				return 1;
			}
			write_to_be:for (int be=0; be<100; be++){
				 edca_fifo_be[(write_pointer_be*100)+be] = inout_frame[be];
			}
			be_data_rate[write_pointer_be] = *io_d_rate;
			be_tx_pwr_lvl[write_pointer_be] = *io_tx_pwr_lvl;

			write_pointer_be = (write_pointer_be + 1) % 4;
			available_spaces_be = available_spaces_be - 1;
			return 14;
		}else if (ac == 2){
			if(available_spaces_vi == 0){
				return 2;
			}
			write_to_vi:for (int vi=0; vi<100; vi++){
				 edca_fifo_vi[(write_pointer_vi*100)+vi] = inout_frame[vi];
			}
			vi_data_rate[write_pointer_vi] = *io_d_rate;
			vi_tx_pwr_lvl[write_pointer_vi] = *io_tx_pwr_lvl;

			write_pointer_vi = (write_pointer_vi + 1) % 4;
			available_spaces_vi = available_spaces_vi - 1;
			return 14;
		}else if (ac == 3){
			if(available_spaces_vo == 0){
				return 3;
			}
			write_to_vo:for (int vo=0; vo<100; vo++){
				 edca_fifo_vo[(write_pointer_vo*100)+vo] = inout_frame[vo];
			}
			vo_data_rate[write_pointer_vo] = *io_d_rate;
			vo_tx_pwr_lvl[write_pointer_vo] = *io_tx_pwr_lvl;

			write_pointer_vo = (write_pointer_vo + 1) % 4;
			available_spaces_vo = available_spaces_vo - 1;
			return 14;
		}else{
			return false;
		}
	}else if(operation == 1){
		if (ac == 0){
			if(available_spaces_bk == 4){
				return 10;
			}
			read_from_bk:for (int bk=0; bk<100; bk++){
				 inout_frame[bk] = edca_fifo_bk[(read_pointer_bk*100)+bk];
			}
			*io_d_rate = bk_data_rate[read_pointer_bk];
			*io_tx_pwr_lvl = bk_tx_pwr_lvl[read_pointer_bk];

			read_pointer_bk = (read_pointer_bk + 1) % 4;
			available_spaces_bk = available_spaces_bk + 1;
			return 14;
		}else if (ac == 1){
			if(available_spaces_be == 4){
				return 11;
			}
			read_from_be:for (int be=0; be<100; be++){
				 inout_frame[be] = edca_fifo_be[(read_pointer_be*100)+be];
			}
			*io_d_rate = be_data_rate[read_pointer_be];
			*io_tx_pwr_lvl = be_tx_pwr_lvl[read_pointer_be];

			read_pointer_be = (read_pointer_be + 1) % 4;
			available_spaces_be = available_spaces_be + 1;
			return 14;
		}else if (ac == 2){
			if(available_spaces_vi == 4){
				return 12;
			}
			read_from_vi:for (int vi=0; vi<100; vi++){
				 inout_frame[vi] = edca_fifo_vi[(read_pointer_vi*100)+vi];
			}
			*io_d_rate = vi_data_rate[read_pointer_vi];
			*io_tx_pwr_lvl = vi_tx_pwr_lvl[read_pointer_vi];

			read_pointer_vi = (read_pointer_vi + 1) % 4;
			available_spaces_vi = available_spaces_vi + 1;
			return 14;
		}else if (ac == 3){
			if(available_spaces_vo == 4){
				return 13;
			}
			read_from_vo:for (int vo=0; vo<100; vo++){
				 inout_frame[vo] = edca_fifo_vo[(read_pointer_vo*100)+vo];
			}
			*io_d_rate = vo_data_rate[read_pointer_vo];
			*io_tx_pwr_lvl = vo_tx_pwr_lvl[read_pointer_vo];

			read_pointer_vo = (read_pointer_vo + 1) % 4;
			available_spaces_vo = available_spaces_vo + 1;
			return 14;
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
		return 14;
	}else{
		return 5;
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
				start_backoff_vi(1);
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
				start_backoff_be(1);
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
				start_backoff_bk(1);
				return;
			}
		}else{
			bk_backoff_counter = bk_backoff_counter - 1;
			return;
		}
	}
}

void start_backoff_vo(uint1 invoke_reason){
	if(invoke_reason == 0){
		CW_vo = aCWmin;
	}else if (invoke_reason == 1){
		if(CW_vo < aCWmax){
			CW_vo = ((CW_vo+1)*2) - 1;
		}
	}
	vo_backoff_counter = CW_vo * random_int_gen(&rand_state);
}

void start_backoff_vi(uint1 invoke_reason){
	if(invoke_reason == 0){
		CW_vi = aCWmin;
	}else if (invoke_reason == 1){
		if(CW_vi < aCWmax){
			CW_vi = ((CW_vi+1)*2) - 1;
		}
	}
	vi_backoff_counter = CW_vi * random_int_gen(&rand_state);
}

void start_backoff_be(uint1 invoke_reason){
	if(invoke_reason == 0){
		CW_be = aCWmin;
	}else if (invoke_reason == 1){
		if(CW_be < aCWmax){
			CW_be = ((CW_be+1)*2) - 1;
		}
	}
	be_backoff_counter = CW_be * random_int_gen(&rand_state);
}

void start_backoff_bk(uint1 invoke_reason){
	if(invoke_reason == 0){
		CW_bk = aCWmin;
	}else if (invoke_reason == 1){
		if(CW_bk < aCWmax){
			CW_bk = ((CW_bk+1)*2) - 1;
		}
	}
	bk_backoff_counter = CW_bk * random_int_gen(&rand_state);
}
