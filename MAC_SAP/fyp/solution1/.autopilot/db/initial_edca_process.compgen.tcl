# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name frame_to_transfer \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename frame_to_transfer \
    op interface \
    ports { frame_to_transfer_address0 { O 7 vector } frame_to_transfer_ce0 { O 1 bit } frame_to_transfer_we0 { O 1 bit } frame_to_transfer_d0 { O 8 vector } frame_to_transfer_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'frame_to_transfer'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name edca_queues \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename edca_queues \
    op interface \
    ports { edca_queues_address0 { O 11 vector } edca_queues_ce0 { O 1 bit } edca_queues_we0 { O 1 bit } edca_queues_d0 { O 8 vector } edca_queues_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edca_queues'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name medium_state \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_medium_state \
    op interface \
    ports { medium_state { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name current_txop_holder \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_current_txop_holder \
    op interface \
    ports { current_txop_holder_i { I 3 vector } current_txop_holder_o { O 3 vector } current_txop_holder_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name available_spaces_vo \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_available_spaces_vo \
    op interface \
    ports { available_spaces_vo_i { I 3 vector } available_spaces_vo_o { O 3 vector } available_spaces_vo_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name vo_backoff_counter \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vo_backoff_counter \
    op interface \
    ports { vo_backoff_counter_i { I 10 vector } vo_backoff_counter_o { O 10 vector } vo_backoff_counter_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name rand_state \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_rand_state \
    op interface \
    ports { rand_state_i { I 32 vector } rand_state_o { O 32 vector } rand_state_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name available_spaces_vi \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_available_spaces_vi \
    op interface \
    ports { available_spaces_vi_i { I 3 vector } available_spaces_vi_o { O 3 vector } available_spaces_vi_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name vi_backoff_counter \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_vi_backoff_counter \
    op interface \
    ports { vi_backoff_counter_i { I 10 vector } vi_backoff_counter_o { O 10 vector } vi_backoff_counter_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name CW_vi \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_CW_vi \
    op interface \
    ports { CW_vi_i { I 10 vector } CW_vi_o { O 10 vector } CW_vi_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name available_spaces_be \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_available_spaces_be \
    op interface \
    ports { available_spaces_be_i { I 3 vector } available_spaces_be_o { O 3 vector } available_spaces_be_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name be_backoff_counter \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_be_backoff_counter \
    op interface \
    ports { be_backoff_counter_i { I 10 vector } be_backoff_counter_o { O 10 vector } be_backoff_counter_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name CW_be \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_CW_be \
    op interface \
    ports { CW_be_i { I 10 vector } CW_be_o { O 10 vector } CW_be_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name available_spaces_bk \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_available_spaces_bk \
    op interface \
    ports { available_spaces_bk_i { I 3 vector } available_spaces_bk_o { O 3 vector } available_spaces_bk_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name bk_backoff_counter \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_bk_backoff_counter \
    op interface \
    ports { bk_backoff_counter_i { I 10 vector } bk_backoff_counter_o { O 10 vector } bk_backoff_counter_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name CW_bk \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_CW_bk \
    op interface \
    ports { CW_bk_i { I 10 vector } CW_bk_o { O 10 vector } CW_bk_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name write_pointer_bk \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_write_pointer_bk \
    op interface \
    ports { write_pointer_bk_i { I 2 vector } write_pointer_bk_o { O 2 vector } write_pointer_bk_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name write_pointer_be \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_write_pointer_be \
    op interface \
    ports { write_pointer_be_i { I 2 vector } write_pointer_be_o { O 2 vector } write_pointer_be_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name write_pointer_vi \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_write_pointer_vi \
    op interface \
    ports { write_pointer_vi_i { I 2 vector } write_pointer_vi_o { O 2 vector } write_pointer_vi_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name write_pointer_vo \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_write_pointer_vo \
    op interface \
    ports { write_pointer_vo_i { I 2 vector } write_pointer_vo_o { O 2 vector } write_pointer_vo_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name read_pointer_bk \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_read_pointer_bk \
    op interface \
    ports { read_pointer_bk_i { I 2 vector } read_pointer_bk_o { O 2 vector } read_pointer_bk_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name read_pointer_be \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_read_pointer_be \
    op interface \
    ports { read_pointer_be_i { I 2 vector } read_pointer_be_o { O 2 vector } read_pointer_be_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name read_pointer_vi \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_read_pointer_vi \
    op interface \
    ports { read_pointer_vi_i { I 2 vector } read_pointer_vi_o { O 2 vector } read_pointer_vi_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name read_pointer_vo \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_read_pointer_vo \
    op interface \
    ports { read_pointer_vo_i { I 2 vector } read_pointer_vo_o { O 2 vector } read_pointer_vo_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


