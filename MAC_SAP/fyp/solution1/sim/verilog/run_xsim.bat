
set PATH=
call D:/Xilinx/Vivado/2019.2/bin/xelab xil_defaultlib.apatb_start_backoff_vo_top glbl -prj start_backoff_vo.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "D:/Xilinx/Vivado/2019.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s start_backoff_vo -debug wave
call D:/Xilinx/Vivado/2019.2/bin/xsim --noieeewarnings start_backoff_vo -tclbatch start_backoff_vo.tcl

