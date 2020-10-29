
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set current_txop_holder_group [add_wave_group current_txop_holder(wire) -into $cinoutgroup]
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/current_txop_holder_o_ap_vld -into $current_txop_holder_group -color #ffff00 -radix hex
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/current_txop_holder_o -into $current_txop_holder_group -radix hex
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/current_txop_holder_i -into $current_txop_holder_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/ap_start -into $blocksiggroup
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/ap_done -into $blocksiggroup
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/ap_idle -into $blocksiggroup
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_backoff_vi_top/AESL_inst_backoff_vi/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_backoff_vi_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_backoff_vi_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_backoff_vi_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_backoff_vi_top/LENGTH_current_txop_holder -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_current_txop_holder_group [add_wave_group current_txop_holder(wire) -into $tbcinoutgroup]
add_wave /apatb_backoff_vi_top/current_txop_holder_o_ap_vld -into $tb_current_txop_holder_group -color #ffff00 -radix hex
add_wave /apatb_backoff_vi_top/current_txop_holder_o -into $tb_current_txop_holder_group -radix hex
add_wave /apatb_backoff_vi_top/current_txop_holder_i -into $tb_current_txop_holder_group -radix hex
save_wave_config backoff_vi.wcfg
run all
quit

