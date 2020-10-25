############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fyp
set_top enqueue_dequeue_frame
add_files fyp/MA_UNITDATAX_request.c
add_files fyp/MA_UNITDATAX_request.h
add_files fyp/MA_UNITDATA_indication.h
add_files fyp/common.h
add_files fyp/compose_mac_frame.c
add_files fyp/compose_mac_frame.h
add_files fyp/crc_32.c
add_files fyp/crc_32.h
add_files fyp/crc_32_validate.c
add_files fyp/decompose_mac_frame.c
add_files fyp/decompose_mac_frame.h
add_files fyp/edca.c
add_files fyp/edca.h
add_files fyp/mac_layer.c
add_files fyp/mac_layer.h
add_files fyp/timer.c
add_files fyp/timer.h
add_files -tb fyp/compose_mac_frame_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/compose_mac_header_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/crc_32_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/crc_32_validate_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/decompose_mac_frame_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/edca_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/input_data.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/input_message.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/input_message_crc.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/mac_frame.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/mac_layer_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fyp/timer_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7a35t-cpg236-1}
create_clock -period 10 -name default
#source "./fyp/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog