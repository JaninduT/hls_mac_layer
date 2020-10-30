
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set expiry_time_group [add_wave_group expiry_time(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/expiry_time -into $expiry_time_group -radix hex
set tx_power_lvl_group [add_wave_group tx_power_lvl(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/tx_power_lvl -into $tx_power_lvl_group -radix hex
set d_rate_group [add_wave_group d_rate(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/d_rate -into $d_rate_group -radix hex
set t_slot_group [add_wave_group t_slot(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/t_slot -into $t_slot_group -radix hex
set c_identifier_group [add_wave_group c_identifier(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/c_identifier_channel_number -into $c_identifier_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/c_identifier_operating_class -into $c_identifier_group -radix hex
set s_class_group [add_wave_group s_class(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/s_class -into $s_class_group -radix hex
set up_group [add_wave_group up(wire) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/up -into $up_group -radix hex
set data_group [add_wave_group data(memory) -into $cinputgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/data_q0 -into $data_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/data_ce0 -into $data_group -color #ffff00 -radix hex
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/data_address0 -into $data_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/ap_start -into $blocksiggroup
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/ap_done -into $blocksiggroup
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/ap_idle -into $blocksiggroup
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_ma_unitdatax_request_top/AESL_inst_ma_unitdatax_request/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_ma_unitdatax_request_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_data -into $tb_portdepth_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_up -into $tb_portdepth_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_s_class -into $tb_portdepth_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_c_identifier_operating_class -into $tb_portdepth_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_c_identifier_channel_number -into $tb_portdepth_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_d_rate -into $tb_portdepth_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/LENGTH_tx_power_lvl -into $tb_portdepth_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_expiry_time_group [add_wave_group expiry_time(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/expiry_time -into $tb_expiry_time_group -radix hex
set tb_tx_power_lvl_group [add_wave_group tx_power_lvl(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/tx_power_lvl -into $tb_tx_power_lvl_group -radix hex
set tb_d_rate_group [add_wave_group d_rate(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/d_rate -into $tb_d_rate_group -radix hex
set tb_t_slot_group [add_wave_group t_slot(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/t_slot -into $tb_t_slot_group -radix hex
set tb_c_identifier_group [add_wave_group c_identifier(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/c_identifier_channel_number -into $tb_c_identifier_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/c_identifier_operating_class -into $tb_c_identifier_group -radix hex
set tb_s_class_group [add_wave_group s_class(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/s_class -into $tb_s_class_group -radix hex
set tb_up_group [add_wave_group up(wire) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/up -into $tb_up_group -radix hex
set tb_data_group [add_wave_group data(memory) -into $tbcinputgroup]
add_wave /apatb_ma_unitdatax_request_top/data_q0 -into $tb_data_group -radix hex
add_wave /apatb_ma_unitdatax_request_top/data_ce0 -into $tb_data_group -color #ffff00 -radix hex
add_wave /apatb_ma_unitdatax_request_top/data_address0 -into $tb_data_group -radix hex
save_wave_config ma_unitdatax_request.wcfg
run all
quit

