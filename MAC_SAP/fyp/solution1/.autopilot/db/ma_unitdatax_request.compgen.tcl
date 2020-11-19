# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 29
set hasByteEnable 0
set MemName ma_unitdatax_requdEe
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 8
set AddrRange 70
set AddrWd 7
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.16475
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 30
set hasByteEnable 0
set MemName ma_unitdatax_requeOg
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 8
set AddrRange 100
set AddrWd 7
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.2285
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


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
    id 31 \
    name source_addr_mac \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename source_addr_mac \
    op interface \
    ports { source_addr_mac_address0 { O 3 vector } source_addr_mac_ce0 { O 1 bit } source_addr_mac_q0 { I 8 vector } source_addr_mac_address1 { O 3 vector } source_addr_mac_ce1 { O 1 bit } source_addr_mac_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'source_addr_mac'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data \
    op interface \
    ports { data_address0 { O 7 vector } data_ce0 { O 1 bit } data_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
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
    id 33 \
    name up \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_up \
    op interface \
    ports { up { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name s_class \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s_class \
    op interface \
    ports { s_class { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name c_identifier_operating_class \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_identifier_operating_class \
    op interface \
    ports { c_identifier_operating_class { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name c_identifier_channel_number \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_identifier_channel_number \
    op interface \
    ports { c_identifier_channel_number { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name d_rate \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_rate \
    op interface \
    ports { d_rate { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name tx_power_lvl \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_power_lvl \
    op interface \
    ports { tx_power_lvl { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
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
    id 40 \
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
    id 41 \
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
    id 42 \
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
    id 43 \
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
    id 44 \
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
    id 45 \
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
    id 46 \
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
    id 47 \
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
    id 49 \
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
    id 50 \
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
    id 51 \
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
    id 52 \
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
    id 53 \
    name CW_bk \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_CW_bk \
    op interface \
    ports { CW_bk { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
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
    id 55 \
    name bk_backoff_counter \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bk_backoff_counter \
    op interface \
    ports { bk_backoff_counter { O 10 vector } bk_backoff_counter_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name CW_be \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_CW_be \
    op interface \
    ports { CW_be { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name be_backoff_counter \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_be_backoff_counter \
    op interface \
    ports { be_backoff_counter { O 10 vector } be_backoff_counter_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name CW_vi \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_CW_vi \
    op interface \
    ports { CW_vi { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name vi_backoff_counter \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vi_backoff_counter \
    op interface \
    ports { vi_backoff_counter { O 10 vector } vi_backoff_counter_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name vo_backoff_counter \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vo_backoff_counter \
    op interface \
    ports { vo_backoff_counter { O 10 vector } vo_backoff_counter_ap_vld { O 1 bit } } \
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


