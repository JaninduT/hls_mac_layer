
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set inout_frame_group [add_wave_group inout_frame(memory) -into $cinoutgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/inout_frame_q0 -into $inout_frame_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/inout_frame_d0 -into $inout_frame_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/inout_frame_we0 -into $inout_frame_group -color #ffff00 -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/inout_frame_ce0 -into $inout_frame_group -color #ffff00 -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/inout_frame_address0 -into $inout_frame_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set ac_group [add_wave_group ac(wire) -into $cinputgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ac -into $ac_group -radix hex
set operation_group [add_wave_group operation(wire) -into $cinputgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/operation -into $operation_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_start -into $blocksiggroup
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_done -into $blocksiggroup
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_idle -into $blocksiggroup
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_enqueue_dequeue_frame_top/AESL_inst_enqueue_dequeue_frame/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_enqueue_dequeue_frame_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/LENGTH_operation -into $tb_portdepth_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/LENGTH_ac -into $tb_portdepth_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/LENGTH_inout_frame -into $tb_portdepth_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_inout_frame_group [add_wave_group inout_frame(memory) -into $tbcinoutgroup]
add_wave /apatb_enqueue_dequeue_frame_top/inout_frame_q0 -into $tb_inout_frame_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/inout_frame_d0 -into $tb_inout_frame_group -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/inout_frame_we0 -into $tb_inout_frame_group -color #ffff00 -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/inout_frame_ce0 -into $tb_inout_frame_group -color #ffff00 -radix hex
add_wave /apatb_enqueue_dequeue_frame_top/inout_frame_address0 -into $tb_inout_frame_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_enqueue_dequeue_frame_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_ac_group [add_wave_group ac(wire) -into $tbcinputgroup]
add_wave /apatb_enqueue_dequeue_frame_top/ac -into $tb_ac_group -radix hex
set tb_operation_group [add_wave_group operation(wire) -into $tbcinputgroup]
add_wave /apatb_enqueue_dequeue_frame_top/operation -into $tb_operation_group -radix hex
save_wave_config enqueue_dequeue_frame.wcfg
run all
quit

