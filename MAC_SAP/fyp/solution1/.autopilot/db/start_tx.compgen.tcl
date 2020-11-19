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
    id 82 \
    name tx_frame \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename tx_frame \
    op interface \
    ports { tx_frame_address0 { O 7 vector } tx_frame_ce0 { O 1 bit } tx_frame_we0 { O 1 bit } tx_frame_d0 { O 8 vector } tx_frame_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tx_frame'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 91 \
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
    id 81 \
    name current_txop_holder \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_current_txop_holder \
    op interface \
    ports { current_txop_holder { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
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
    id 84 \
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
    id 85 \
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
    id 86 \
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
    id 87 \
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
    id 88 \
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
    id 89 \
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
    id 90 \
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
    id 92 \
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
    id 93 \
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
    id 94 \
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
    id 95 \
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


