
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set frame_to_transfer_group [add_wave_group frame_to_transfer(memory) -into $cinputgroup]
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/frame_to_transfer_q0 -into $frame_to_transfer_group -radix hex
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/frame_to_transfer_ce0 -into $frame_to_transfer_group -color #ffff00 -radix hex
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/frame_to_transfer_address0 -into $frame_to_transfer_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/ap_start -into $blocksiggroup
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/ap_done -into $blocksiggroup
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/ap_idle -into $blocksiggroup
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_phy_data_confirm_top/AESL_inst_phy_data_confirm/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_phy_data_confirm_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_phy_data_confirm_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_phy_data_confirm_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_phy_data_confirm_top/LENGTH_frame_to_transfer -into $tb_portdepth_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_frame_to_transfer_group [add_wave_group frame_to_transfer(memory) -into $tbcinputgroup]
add_wave /apatb_phy_data_confirm_top/frame_to_transfer_q0 -into $tb_frame_to_transfer_group -radix hex
add_wave /apatb_phy_data_confirm_top/frame_to_transfer_ce0 -into $tb_frame_to_transfer_group -color #ffff00 -radix hex
add_wave /apatb_phy_data_confirm_top/frame_to_transfer_address0 -into $tb_frame_to_transfer_group -radix hex
save_wave_config phy_data_confirm.wcfg
run all
quit

