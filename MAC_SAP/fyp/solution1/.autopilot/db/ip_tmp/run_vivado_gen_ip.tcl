create_project prj -part xc7a35t-cpg236-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "E:/FYP/HLS/MAC_SAP/fyp/solution1/syn/verilog/backoff_vi_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backoff_vi_ap_fmul_2_max_dsp_32]]
}
source "E:/FYP/HLS/MAC_SAP/fyp/solution1/syn/verilog/backoff_vi_ap_sitofp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backoff_vi_ap_sitofp_4_no_dsp_32]]
}
source "E:/FYP/HLS/MAC_SAP/fyp/solution1/syn/verilog/backoff_vi_ap_uitofp_4_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips backoff_vi_ap_uitofp_4_no_dsp_32]]
}
