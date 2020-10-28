
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set invoke_reason_group [add_wave_group invoke_reason(wire) -into $cinputgroup]
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/invoke_reason -into $invoke_reason_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/ap_start -into $blocksiggroup
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/ap_done -into $blocksiggroup
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/ap_idle -into $blocksiggroup
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_start_backoff_vo_top/AESL_inst_start_backoff_vo/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_start_backoff_vo_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_start_backoff_vo_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_start_backoff_vo_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_start_backoff_vo_top/LENGTH_invoke_reason -into $tb_portdepth_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_invoke_reason_group [add_wave_group invoke_reason(wire) -into $tbcinputgroup]
add_wave /apatb_start_backoff_vo_top/invoke_reason -into $tb_invoke_reason_group -radix hex
save_wave_config start_backoff_vo.wcfg
run all
quit

