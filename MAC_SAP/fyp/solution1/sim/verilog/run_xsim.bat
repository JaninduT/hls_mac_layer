
set PATH=
call D:/Xilinx/Vivado/2019.2/bin/xelab xil_defaultlib.apatb_enqueue_dequeue_frame_top glbl -prj enqueue_dequeue_frame.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "D:/Xilinx/Vivado/2019.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s enqueue_dequeue_frame -debug wave
call D:/Xilinx/Vivado/2019.2/bin/xsim --noieeewarnings enqueue_dequeue_frame -tclbatch enqueue_dequeue_frame.tcl
