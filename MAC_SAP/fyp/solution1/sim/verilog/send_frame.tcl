
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set current_txop_holder_group [add_wave_group current_txop_holder(wire) -into $cinoutgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/current_txop_holder_o_ap_vld -into $current_txop_holder_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/current_txop_holder_o -into $current_txop_holder_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/current_txop_holder_i -into $current_txop_holder_group -radix hex
set mac_frame_group [add_wave_group mac_frame(memory) -into $cinoutgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/mac_frame_q0 -into $mac_frame_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/mac_frame_d0 -into $mac_frame_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/mac_frame_we0 -into $mac_frame_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/mac_frame_ce0 -into $mac_frame_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/mac_frame_address0 -into $mac_frame_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set medium_state_group [add_wave_group medium_state(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/medium_state -into $medium_state_group -radix hex
set expiry_time_group [add_wave_group expiry_time(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/expiry_time -into $expiry_time_group -radix hex
set tx_power_lvl_group [add_wave_group tx_power_lvl(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/tx_power_lvl -into $tx_power_lvl_group -radix hex
set d_rate_group [add_wave_group d_rate(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/d_rate -into $d_rate_group -radix hex
set t_slot_group [add_wave_group t_slot(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/t_slot -into $t_slot_group -radix hex
set c_identifier_group [add_wave_group c_identifier(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/c_identifier_channel_number -into $c_identifier_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/c_identifier_operating_class -into $c_identifier_group -radix hex
set s_class_group [add_wave_group s_class(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/s_class -into $s_class_group -radix hex
set up_group [add_wave_group up(wire) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/up -into $up_group -radix hex
set data_group [add_wave_group data(memory) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/data_q0 -into $data_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/data_ce0 -into $data_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/data_address0 -into $data_group -radix hex
set source_addr_group [add_wave_group source_addr(memory) -into $cinputgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/source_addr_mac_q1 -into $source_addr_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/source_addr_mac_ce1 -into $source_addr_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/source_addr_mac_address1 -into $source_addr_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/source_addr_mac_q0 -into $source_addr_group -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/source_addr_mac_ce0 -into $source_addr_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/AESL_inst_send_frame/source_addr_mac_address0 -into $source_addr_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/ap_start -into $blocksiggroup
add_wave /apatb_send_frame_top/AESL_inst_send_frame/ap_done -into $blocksiggroup
add_wave /apatb_send_frame_top/AESL_inst_send_frame/ap_idle -into $blocksiggroup
add_wave /apatb_send_frame_top/AESL_inst_send_frame/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_send_frame_top/AESL_inst_send_frame/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_send_frame_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_send_frame_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_send_frame_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_source_addr_mac -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_data -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_up -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_s_class -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_c_identifier_operating_class -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_c_identifier_channel_number -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_d_rate -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_tx_power_lvl -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_mac_frame -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_medium_state -into $tb_portdepth_group -radix hex
add_wave /apatb_send_frame_top/LENGTH_current_txop_holder -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_current_txop_holder_group [add_wave_group current_txop_holder(wire) -into $tbcinoutgroup]
add_wave /apatb_send_frame_top/current_txop_holder_o_ap_vld -into $tb_current_txop_holder_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/current_txop_holder_o -into $tb_current_txop_holder_group -radix hex
add_wave /apatb_send_frame_top/current_txop_holder_i -into $tb_current_txop_holder_group -radix hex
set tb_mac_frame_group [add_wave_group mac_frame(memory) -into $tbcinoutgroup]
add_wave /apatb_send_frame_top/mac_frame_q0 -into $tb_mac_frame_group -radix hex
add_wave /apatb_send_frame_top/mac_frame_d0 -into $tb_mac_frame_group -radix hex
add_wave /apatb_send_frame_top/mac_frame_we0 -into $tb_mac_frame_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/mac_frame_ce0 -into $tb_mac_frame_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/mac_frame_address0 -into $tb_mac_frame_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_medium_state_group [add_wave_group medium_state(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/medium_state -into $tb_medium_state_group -radix hex
set tb_expiry_time_group [add_wave_group expiry_time(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/expiry_time -into $tb_expiry_time_group -radix hex
set tb_tx_power_lvl_group [add_wave_group tx_power_lvl(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/tx_power_lvl -into $tb_tx_power_lvl_group -radix hex
set tb_d_rate_group [add_wave_group d_rate(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/d_rate -into $tb_d_rate_group -radix hex
set tb_t_slot_group [add_wave_group t_slot(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/t_slot -into $tb_t_slot_group -radix hex
set tb_c_identifier_group [add_wave_group c_identifier(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/c_identifier_channel_number -into $tb_c_identifier_group -radix hex
add_wave /apatb_send_frame_top/c_identifier_operating_class -into $tb_c_identifier_group -radix hex
set tb_s_class_group [add_wave_group s_class(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/s_class -into $tb_s_class_group -radix hex
set tb_up_group [add_wave_group up(wire) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/up -into $tb_up_group -radix hex
set tb_data_group [add_wave_group data(memory) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/data_q0 -into $tb_data_group -radix hex
add_wave /apatb_send_frame_top/data_ce0 -into $tb_data_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/data_address0 -into $tb_data_group -radix hex
set tb_source_addr_group [add_wave_group source_addr(memory) -into $tbcinputgroup]
add_wave /apatb_send_frame_top/source_addr_mac_q1 -into $tb_source_addr_group -radix hex
add_wave /apatb_send_frame_top/source_addr_mac_ce1 -into $tb_source_addr_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/source_addr_mac_address1 -into $tb_source_addr_group -radix hex
add_wave /apatb_send_frame_top/source_addr_mac_q0 -into $tb_source_addr_group -radix hex
add_wave /apatb_send_frame_top/source_addr_mac_ce0 -into $tb_source_addr_group -color #ffff00 -radix hex
add_wave /apatb_send_frame_top/source_addr_mac_address0 -into $tb_source_addr_group -radix hex
save_wave_config send_frame.wcfg
run all
quit

