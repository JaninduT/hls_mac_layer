
set TopModule "enqueue_dequeue_frame"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7a35t:-cpg236:-1
set SourceFiles {sc {} c {../MA_UNITDATAX_request.c ../compose_mac_frame.c ../crc_32.c ../crc_32_validate.c ../decompose_mac_frame.c ../edca.c ../mac_layer.c}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {}}}
set DirectiveFile E:/FYP/HLS/MAC_SAP/fyp/solution1/solution1.directive
set TBFiles {verilog {../compose_mac_frame_test.c ../compose_mac_header_test.c ../crc_32_test.c ../crc_32_validate_test.c ../decompose_mac_frame_test.c ../edca_test.c ../input_data.bin ../input_message.bin ../input_message_crc.bin ../mac_frame.bin ../mac_layer_test.c} bc {../compose_mac_frame_test.c ../compose_mac_header_test.c ../crc_32_test.c ../crc_32_validate_test.c ../decompose_mac_frame_test.c ../edca_test.c ../input_data.bin ../input_message.bin ../input_message_crc.bin ../mac_frame.bin ../mac_layer_test.c} vhdl {../compose_mac_frame_test.c ../compose_mac_header_test.c ../crc_32_test.c ../crc_32_validate_test.c ../decompose_mac_frame_test.c ../edca_test.c ../input_data.bin ../input_message.bin ../input_message_crc.bin ../mac_frame.bin ../mac_layer_test.c} sc {../compose_mac_frame_test.c ../compose_mac_header_test.c ../crc_32_test.c ../crc_32_validate_test.c ../decompose_mac_frame_test.c ../edca_test.c ../input_data.bin ../input_message.bin ../input_message_crc.bin ../mac_frame.bin ../mac_layer_test.c} cas {../compose_mac_frame_test.c ../compose_mac_header_test.c ../crc_32_test.c ../crc_32_validate_test.c ../decompose_mac_frame_test.c ../edca_test.c ../input_data.bin ../input_message.bin ../input_message_crc.bin ../mac_frame.bin ../mac_layer_test.c} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/artix7/artix7 xilinx/artix7/artix7_fpv6}}}
set HPFPO 0
