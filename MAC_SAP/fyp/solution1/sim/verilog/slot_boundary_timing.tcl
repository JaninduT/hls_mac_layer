
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set idle_waiting_group [add_wave_group idle_waiting(wire) -into $coutputgroup]
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/idle_waiting_ap_vld -into $idle_waiting_group -color #ffff00 -radix hex
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/idle_waiting -into $idle_waiting_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set medium_state_group [add_wave_group medium_state(wire) -into $cinputgroup]
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/medium_state -into $medium_state_group -radix hex
set timing_mode_group [add_wave_group timing_mode(wire) -into $cinputgroup]
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/timing_mode -into $timing_mode_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/ap_start -into $blocksiggroup
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/ap_done -into $blocksiggroup
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/ap_idle -into $blocksiggroup
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_slot_boundary_timing_top/AESL_inst_slot_boundary_timing/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_slot_boundary_timing_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_slot_boundary_timing_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_slot_boundary_timing_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_slot_boundary_timing_top/LENGTH_timing_mode -into $tb_portdepth_group -radix hex
add_wave /apatb_slot_boundary_timing_top/LENGTH_idle_waiting -into $tb_portdepth_group -radix hex
add_wave /apatb_slot_boundary_timing_top/LENGTH_medium_state -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_idle_waiting_group [add_wave_group idle_waiting(wire) -into $tbcoutputgroup]
add_wave /apatb_slot_boundary_timing_top/idle_waiting_ap_vld -into $tb_idle_waiting_group -color #ffff00 -radix hex
add_wave /apatb_slot_boundary_timing_top/idle_waiting -into $tb_idle_waiting_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_medium_state_group [add_wave_group medium_state(wire) -into $tbcinputgroup]
add_wave /apatb_slot_boundary_timing_top/medium_state -into $tb_medium_state_group -radix hex
set tb_timing_mode_group [add_wave_group timing_mode(wire) -into $tbcinputgroup]
add_wave /apatb_slot_boundary_timing_top/timing_mode -into $tb_timing_mode_group -radix hex
save_wave_config slot_boundary_timing.wcfg
run all
quit

