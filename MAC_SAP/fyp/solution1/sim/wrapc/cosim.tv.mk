# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_OPENCV__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

TARGET := cosim.tv.exe

AUTOPILOT_ROOT := D:/Xilinx/Vivado/2019.2
AUTOPILOT_MACH := win64

ifdef COSIM_M32
  AUTOPILOT_MACH := lnx32
  IFLAG += -m32
endif
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vivado/2019.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
CCFLAG += 
TOOLCHAIN += 

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_OPENCV__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E1__
IFLAG += -DNT
IFLAG += -Wno-unknown-pragmas
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/lib" -lsystemc -lpthread
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
DFLAG += -DAESL_PIPELINE
LFLAG += -Wl,--enable-auto-import
DFLAG += -DAUTOCC
DFLAG += -DAESL_EXTERN_C

include ./Makefile.rules

all : $(TARGET)

AUTOCC := cmd //c apcc.bat

$(ObjDir)/MA_UNITDATAX_STATUS_indication_test.c_pre.c.tb.o : MA_UNITDATAX_STATUS_indication_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) MA_UNITDATAX_STATUS_indication_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MA_UNITDATAX_request_test.c_pre.c.tb.o : MA_UNITDATAX_request_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) MA_UNITDATAX_request_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MA_UNITDATA_indication_test.c_pre.c.tb.o : MA_UNITDATA_indication_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) MA_UNITDATA_indication_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_CCA_indication_test.c_pre.c.tb.o : PHY_CCA_indication_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_CCA_indication_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_DATA_confirm_test.c_pre.c.tb.o : PHY_DATA_confirm_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_DATA_confirm_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_DATA_indication_test.c_pre.c.tb.o : PHY_DATA_indication_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_DATA_indication_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_RXEND_indication_test.c_pre.c.tb.o : PHY_RXEND_indication_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_RXEND_indication_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_RXSTART_indication_test.c_pre.c.tb.o : PHY_RXSTART_indication_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_RXSTART_indication_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_TXEND_confirm_test.c_pre.c.tb.o : PHY_TXEND_confirm_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_TXEND_confirm_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_TXSTART_confirm_test.c_pre.c.tb.o : PHY_TXSTART_confirm_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_TXSTART_confirm_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/backoff_test.c_pre.c.tb.o : backoff_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) backoff_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/compose_mac_frame_test.c_pre.c.tb.o : compose_mac_frame_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) compose_mac_frame_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/compose_mac_header_test.c_pre.c.tb.o : compose_mac_header_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) compose_mac_header_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/crc_32_test.c_pre.c.tb.o : crc_32_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) crc_32_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/crc_32_validate_test.c_pre.c.tb.o : crc_32_validate_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) crc_32_validate_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/decompose_mac_frame_test.c_pre.c.tb.o : decompose_mac_frame_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) decompose_mac_frame_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/edca_test.c_pre.c.tb.o : edca_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) edca_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/mac_layer_test.c_pre.c.tb.o : mac_layer_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) mac_layer_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/r_n_g_test.c_pre.c.tb.o : r_n_g_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) r_n_g_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/slot_boundary_timing_test.c_pre.c.tb.o : slot_boundary_timing_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) slot_boundary_timing_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/timer_test.c_pre.c.tb.o : timer_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) timer_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/timer.c_pre.c.tb.o : timer.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) timer.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/r_n_g.c_pre.c.tb.o : r_n_g.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) r_n_g.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/mac_layer.c_pre.c.tb.o : mac_layer.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) mac_layer.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/initial_edca_proc.c_pre.c.tb.o : initial_edca_proc.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) initial_edca_proc.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/edca.c_pre.c.tb.o : edca.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) edca.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/decompose_mac_frame.c_pre.c.tb.o : decompose_mac_frame.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) decompose_mac_frame.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/crc_32_validate.c_pre.c.tb.o : crc_32_validate.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) crc_32_validate.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/crc_32.c_pre.c.tb.o : crc_32.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) crc_32.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/compose_mac_frame.c_pre.c.tb.o : compose_mac_frame.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) compose_mac_frame.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_TXSTART_request.c_pre.c.tb.o : PHY_TXSTART_request.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_TXSTART_request.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_TXSTART_confirm.c_pre.c.tb.o : PHY_TXSTART_confirm.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_TXSTART_confirm.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_TXEND_request.c_pre.c.tb.o : PHY_TXEND_request.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_TXEND_request.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_TXEND_confirm.c_pre.c.tb.o : PHY_TXEND_confirm.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_TXEND_confirm.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_RXSTART_indication.c_pre.c.tb.o : PHY_RXSTART_indication.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_RXSTART_indication.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_RXEND_indication.c_pre.c.tb.o : PHY_RXEND_indication.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_RXEND_indication.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_DATA_request.c_pre.c.tb.o : PHY_DATA_request.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_DATA_request.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_DATA_indication.c_pre.c.tb.o : PHY_DATA_indication.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_DATA_indication.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_DATA_confirm.c_pre.c.tb.o : PHY_DATA_confirm.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_DATA_confirm.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/PHY_CCA_indication.c_pre.c.tb.o : PHY_CCA_indication.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) PHY_CCA_indication.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MA_UNITDATA_indication.c_pre.c.tb.o : MA_UNITDATA_indication.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) MA_UNITDATA_indication.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MA_UNITDATAX_request.c_pre.c.tb.o : MA_UNITDATAX_request.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) MA_UNITDATAX_request.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/MA_UNITDATAX_STATUS_indication.c_pre.c.tb.o : MA_UNITDATAX_STATUS_indication.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) MA_UNITDATAX_STATUS_indication.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \
