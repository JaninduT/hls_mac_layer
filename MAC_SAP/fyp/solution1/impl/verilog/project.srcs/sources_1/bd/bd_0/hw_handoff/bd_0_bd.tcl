
################################################################
# This is a generated script based on design: bd_0
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_0_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_0

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ap_ctrl [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:acc_handshake_rtl:1.0 ap_ctrl ]


  # Create ports
  set ap_clk [ create_bd_port -dir I -type clk -freq_hz 100000000.0 ap_clk ]
  set ap_rst [ create_bd_port -dir I -type rst ap_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $ap_rst
  set c_identifier_channel_number [ create_bd_port -dir I -from 7 -to 0 -type data c_identifier_channel_number ]
  set c_identifier_operating_class [ create_bd_port -dir I -from 7 -to 0 -type data c_identifier_operating_class ]
  set current_txop_holder_i [ create_bd_port -dir I -from 2 -to 0 -type data current_txop_holder_i ]
  set current_txop_holder_o [ create_bd_port -dir O -from 2 -to 0 -type data current_txop_holder_o ]
  set current_txop_holder_o_ap_vld [ create_bd_port -dir O current_txop_holder_o_ap_vld ]
  set d_rate [ create_bd_port -dir I -from 6 -to 0 -type data d_rate ]
  set data_address0 [ create_bd_port -dir O -from 6 -to 0 -type data data_address0 ]
  set data_ce0 [ create_bd_port -dir O data_ce0 ]
  set data_q0 [ create_bd_port -dir I -from 7 -to 0 -type data data_q0 ]
  set dest_addr_mac_address0 [ create_bd_port -dir O -from 2 -to 0 -type data dest_addr_mac_address0 ]
  set dest_addr_mac_address1 [ create_bd_port -dir O -from 2 -to 0 -type data dest_addr_mac_address1 ]
  set dest_addr_mac_ce0 [ create_bd_port -dir O dest_addr_mac_ce0 ]
  set dest_addr_mac_ce1 [ create_bd_port -dir O dest_addr_mac_ce1 ]
  set dest_addr_mac_d0 [ create_bd_port -dir O -from 7 -to 0 -type data dest_addr_mac_d0 ]
  set dest_addr_mac_d1 [ create_bd_port -dir O -from 7 -to 0 -type data dest_addr_mac_d1 ]
  set dest_addr_mac_q0 [ create_bd_port -dir I -from 7 -to 0 -type data dest_addr_mac_q0 ]
  set dest_addr_mac_q1 [ create_bd_port -dir I -from 7 -to 0 -type data dest_addr_mac_q1 ]
  set dest_addr_mac_we0 [ create_bd_port -dir O dest_addr_mac_we0 ]
  set dest_addr_mac_we1 [ create_bd_port -dir O dest_addr_mac_we1 ]
  set expiry_time [ create_bd_port -dir I -from 63 -to 0 -type data expiry_time ]
  set mac_frame_address0 [ create_bd_port -dir O -from 6 -to 0 -type data mac_frame_address0 ]
  set mac_frame_ce0 [ create_bd_port -dir O mac_frame_ce0 ]
  set mac_frame_d0 [ create_bd_port -dir O -from 7 -to 0 -type data mac_frame_d0 ]
  set mac_frame_q0 [ create_bd_port -dir I -from 7 -to 0 -type data mac_frame_q0 ]
  set mac_frame_we0 [ create_bd_port -dir O mac_frame_we0 ]
  set medium_state [ create_bd_port -dir I -from 0 -to 0 -type data medium_state ]
  set received_frame_address0 [ create_bd_port -dir O -from 6 -to 0 -type data received_frame_address0 ]
  set received_frame_address1 [ create_bd_port -dir O -from 6 -to 0 -type data received_frame_address1 ]
  set received_frame_ce0 [ create_bd_port -dir O received_frame_ce0 ]
  set received_frame_ce1 [ create_bd_port -dir O received_frame_ce1 ]
  set received_frame_d0 [ create_bd_port -dir O -from 7 -to 0 -type data received_frame_d0 ]
  set received_frame_d1 [ create_bd_port -dir O -from 7 -to 0 -type data received_frame_d1 ]
  set received_frame_q0 [ create_bd_port -dir I -from 7 -to 0 -type data received_frame_q0 ]
  set received_frame_q1 [ create_bd_port -dir I -from 7 -to 0 -type data received_frame_q1 ]
  set received_frame_we0 [ create_bd_port -dir O received_frame_we0 ]
  set received_frame_we1 [ create_bd_port -dir O received_frame_we1 ]
  set s_class [ create_bd_port -dir I -from 0 -to 0 -type data s_class ]
  set source_addr_mac_address0 [ create_bd_port -dir O -from 2 -to 0 -type data source_addr_mac_address0 ]
  set source_addr_mac_address1 [ create_bd_port -dir O -from 2 -to 0 -type data source_addr_mac_address1 ]
  set source_addr_mac_ce0 [ create_bd_port -dir O source_addr_mac_ce0 ]
  set source_addr_mac_ce1 [ create_bd_port -dir O source_addr_mac_ce1 ]
  set source_addr_mac_q0 [ create_bd_port -dir I -from 7 -to 0 -type data source_addr_mac_q0 ]
  set source_addr_mac_q1 [ create_bd_port -dir I -from 7 -to 0 -type data source_addr_mac_q1 ]
  set t_slot [ create_bd_port -dir I -from 1 -to 0 -type data t_slot ]
  set tx_power_lvl [ create_bd_port -dir I -from 3 -to 0 -type data tx_power_lvl ]
  set up [ create_bd_port -dir I -from 3 -to 0 -type data up ]

  # Create instance: hls_inst, and set properties
  set hls_inst [ create_bd_cell -type ip -vlnv jt:hls:send_frame:1.0 hls_inst ]

  # Create interface connections
  connect_bd_intf_net -intf_net ap_ctrl_0_1 [get_bd_intf_ports ap_ctrl] [get_bd_intf_pins hls_inst/ap_ctrl]

  # Create port connections
  connect_bd_net -net ap_clk_0_1 [get_bd_ports ap_clk] [get_bd_pins hls_inst/ap_clk]
  connect_bd_net -net ap_rst_0_1 [get_bd_ports ap_rst] [get_bd_pins hls_inst/ap_rst]
  connect_bd_net -net c_identifier_channel_number_0_1 [get_bd_ports c_identifier_channel_number] [get_bd_pins hls_inst/c_identifier_channel_number]
  connect_bd_net -net c_identifier_operating_class_0_1 [get_bd_ports c_identifier_operating_class] [get_bd_pins hls_inst/c_identifier_operating_class]
  connect_bd_net -net current_txop_holder_i_0_1 [get_bd_ports current_txop_holder_i] [get_bd_pins hls_inst/current_txop_holder_i]
  connect_bd_net -net d_rate_0_1 [get_bd_ports d_rate] [get_bd_pins hls_inst/d_rate]
  connect_bd_net -net data_q0_0_1 [get_bd_ports data_q0] [get_bd_pins hls_inst/data_q0]
  connect_bd_net -net dest_addr_mac_q0_0_1 [get_bd_ports dest_addr_mac_q0] [get_bd_pins hls_inst/dest_addr_mac_q0]
  connect_bd_net -net dest_addr_mac_q1_0_1 [get_bd_ports dest_addr_mac_q1] [get_bd_pins hls_inst/dest_addr_mac_q1]
  connect_bd_net -net expiry_time_0_1 [get_bd_ports expiry_time] [get_bd_pins hls_inst/expiry_time]
  connect_bd_net -net hls_inst_current_txop_holder_o [get_bd_ports current_txop_holder_o] [get_bd_pins hls_inst/current_txop_holder_o]
  connect_bd_net -net hls_inst_current_txop_holder_o_ap_vld [get_bd_ports current_txop_holder_o_ap_vld] [get_bd_pins hls_inst/current_txop_holder_o_ap_vld]
  connect_bd_net -net hls_inst_data_address0 [get_bd_ports data_address0] [get_bd_pins hls_inst/data_address0]
  connect_bd_net -net hls_inst_data_ce0 [get_bd_ports data_ce0] [get_bd_pins hls_inst/data_ce0]
  connect_bd_net -net hls_inst_dest_addr_mac_address0 [get_bd_ports dest_addr_mac_address0] [get_bd_pins hls_inst/dest_addr_mac_address0]
  connect_bd_net -net hls_inst_dest_addr_mac_address1 [get_bd_ports dest_addr_mac_address1] [get_bd_pins hls_inst/dest_addr_mac_address1]
  connect_bd_net -net hls_inst_dest_addr_mac_ce0 [get_bd_ports dest_addr_mac_ce0] [get_bd_pins hls_inst/dest_addr_mac_ce0]
  connect_bd_net -net hls_inst_dest_addr_mac_ce1 [get_bd_ports dest_addr_mac_ce1] [get_bd_pins hls_inst/dest_addr_mac_ce1]
  connect_bd_net -net hls_inst_dest_addr_mac_d0 [get_bd_ports dest_addr_mac_d0] [get_bd_pins hls_inst/dest_addr_mac_d0]
  connect_bd_net -net hls_inst_dest_addr_mac_d1 [get_bd_ports dest_addr_mac_d1] [get_bd_pins hls_inst/dest_addr_mac_d1]
  connect_bd_net -net hls_inst_dest_addr_mac_we0 [get_bd_ports dest_addr_mac_we0] [get_bd_pins hls_inst/dest_addr_mac_we0]
  connect_bd_net -net hls_inst_dest_addr_mac_we1 [get_bd_ports dest_addr_mac_we1] [get_bd_pins hls_inst/dest_addr_mac_we1]
  connect_bd_net -net hls_inst_mac_frame_address0 [get_bd_ports mac_frame_address0] [get_bd_pins hls_inst/mac_frame_address0]
  connect_bd_net -net hls_inst_mac_frame_ce0 [get_bd_ports mac_frame_ce0] [get_bd_pins hls_inst/mac_frame_ce0]
  connect_bd_net -net hls_inst_mac_frame_d0 [get_bd_ports mac_frame_d0] [get_bd_pins hls_inst/mac_frame_d0]
  connect_bd_net -net hls_inst_mac_frame_we0 [get_bd_ports mac_frame_we0] [get_bd_pins hls_inst/mac_frame_we0]
  connect_bd_net -net hls_inst_received_frame_address0 [get_bd_ports received_frame_address0] [get_bd_pins hls_inst/received_frame_address0]
  connect_bd_net -net hls_inst_received_frame_address1 [get_bd_ports received_frame_address1] [get_bd_pins hls_inst/received_frame_address1]
  connect_bd_net -net hls_inst_received_frame_ce0 [get_bd_ports received_frame_ce0] [get_bd_pins hls_inst/received_frame_ce0]
  connect_bd_net -net hls_inst_received_frame_ce1 [get_bd_ports received_frame_ce1] [get_bd_pins hls_inst/received_frame_ce1]
  connect_bd_net -net hls_inst_received_frame_d0 [get_bd_ports received_frame_d0] [get_bd_pins hls_inst/received_frame_d0]
  connect_bd_net -net hls_inst_received_frame_d1 [get_bd_ports received_frame_d1] [get_bd_pins hls_inst/received_frame_d1]
  connect_bd_net -net hls_inst_received_frame_we0 [get_bd_ports received_frame_we0] [get_bd_pins hls_inst/received_frame_we0]
  connect_bd_net -net hls_inst_received_frame_we1 [get_bd_ports received_frame_we1] [get_bd_pins hls_inst/received_frame_we1]
  connect_bd_net -net hls_inst_source_addr_mac_address0 [get_bd_ports source_addr_mac_address0] [get_bd_pins hls_inst/source_addr_mac_address0]
  connect_bd_net -net hls_inst_source_addr_mac_address1 [get_bd_ports source_addr_mac_address1] [get_bd_pins hls_inst/source_addr_mac_address1]
  connect_bd_net -net hls_inst_source_addr_mac_ce0 [get_bd_ports source_addr_mac_ce0] [get_bd_pins hls_inst/source_addr_mac_ce0]
  connect_bd_net -net hls_inst_source_addr_mac_ce1 [get_bd_ports source_addr_mac_ce1] [get_bd_pins hls_inst/source_addr_mac_ce1]
  connect_bd_net -net mac_frame_q0_0_1 [get_bd_ports mac_frame_q0] [get_bd_pins hls_inst/mac_frame_q0]
  connect_bd_net -net medium_state_0_1 [get_bd_ports medium_state] [get_bd_pins hls_inst/medium_state]
  connect_bd_net -net received_frame_q0_0_1 [get_bd_ports received_frame_q0] [get_bd_pins hls_inst/received_frame_q0]
  connect_bd_net -net received_frame_q1_0_1 [get_bd_ports received_frame_q1] [get_bd_pins hls_inst/received_frame_q1]
  connect_bd_net -net s_class_0_1 [get_bd_ports s_class] [get_bd_pins hls_inst/s_class]
  connect_bd_net -net source_addr_mac_q0_0_1 [get_bd_ports source_addr_mac_q0] [get_bd_pins hls_inst/source_addr_mac_q0]
  connect_bd_net -net source_addr_mac_q1_0_1 [get_bd_ports source_addr_mac_q1] [get_bd_pins hls_inst/source_addr_mac_q1]
  connect_bd_net -net t_slot_0_1 [get_bd_ports t_slot] [get_bd_pins hls_inst/t_slot]
  connect_bd_net -net tx_power_lvl_0_1 [get_bd_ports tx_power_lvl] [get_bd_pins hls_inst/tx_power_lvl]
  connect_bd_net -net up_0_1 [get_bd_ports up] [get_bd_pins hls_inst/up]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


