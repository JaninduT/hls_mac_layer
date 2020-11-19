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
    id 9 \
    name inout_frame \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename inout_frame \
    op interface \
    ports { inout_frame_address0 { O 7 vector } inout_frame_ce0 { O 1 bit } inout_frame_we0 { O 1 bit } inout_frame_d0 { O 8 vector } inout_frame_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inout_frame'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
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
    id 7 \
    name operation \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_operation \
    op interface \
    ports { operation { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name ac \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ac \
    op interface \
    ports { ac { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
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
    id 11 \
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
    id 12 \
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
    id 13 \
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
    id 14 \
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
    id 15 \
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
    id 16 \
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
    id 17 \
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
    id 19 \
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
    id 20 \
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
    id 21 \
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
    id 22 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 4 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


