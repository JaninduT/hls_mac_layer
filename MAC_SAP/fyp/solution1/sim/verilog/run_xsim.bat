
set PATH=
call D:/Xilinx/Vivado/2019.2/bin/xelab xil_defaultlib.apatb_phy_data_confirm_top glbl -prj phy_data_confirm.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "D:/Xilinx/Vivado/2019.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s phy_data_confirm -debug wave
call D:/Xilinx/Vivado/2019.2/bin/xsim --noieeewarnings phy_data_confirm -tclbatch phy_data_confirm.tcl

