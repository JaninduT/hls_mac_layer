# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../mac_layer_test.c ../../../edca_test.c ../../../decompose_mac_frame_test.c ../../../crc_32_validate_test.c ../../../crc_32_test.c ../../../compose_mac_header_test.c ../../../compose_mac_frame_test.c ../../../mac_layer.c ../../../edca.c ../../../decompose_mac_frame.c ../../../crc_32_validate.c ../../../crc_32.c ../../../compose_mac_frame.c ../../../MA_UNITDATAX_request.c

TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vivado/2019.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vivado/2019.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/opencv"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -DAUTOCC
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



AUTOCC := cmd //c apcc.bat  

$(ObjDir)/mac_layer_test.o: ../../../mac_layer_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../mac_layer_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/mac_layer_test.d

$(ObjDir)/edca_test.o: ../../../edca_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../edca_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/edca_test.d

$(ObjDir)/decompose_mac_frame_test.o: ../../../decompose_mac_frame_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../decompose_mac_frame_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/decompose_mac_frame_test.d

$(ObjDir)/crc_32_validate_test.o: ../../../crc_32_validate_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../crc_32_validate_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/crc_32_validate_test.d

$(ObjDir)/crc_32_test.o: ../../../crc_32_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../crc_32_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/crc_32_test.d

$(ObjDir)/compose_mac_header_test.o: ../../../compose_mac_header_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../compose_mac_header_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/compose_mac_header_test.d

$(ObjDir)/compose_mac_frame_test.o: ../../../compose_mac_frame_test.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../compose_mac_frame_test.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/compose_mac_frame_test.d

$(ObjDir)/mac_layer.o: ../../../mac_layer.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../mac_layer.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/mac_layer.d

$(ObjDir)/edca.o: ../../../edca.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../edca.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/edca.d

$(ObjDir)/decompose_mac_frame.o: ../../../decompose_mac_frame.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../decompose_mac_frame.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/decompose_mac_frame.d

$(ObjDir)/crc_32_validate.o: ../../../crc_32_validate.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../crc_32_validate.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/crc_32_validate.d

$(ObjDir)/crc_32.o: ../../../crc_32.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../crc_32.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/crc_32.d

$(ObjDir)/compose_mac_frame.o: ../../../compose_mac_frame.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../compose_mac_frame.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/compose_mac_frame.d

$(ObjDir)/MA_UNITDATAX_request.o: ../../../MA_UNITDATAX_request.c $(ObjDir)/.dir
	$(Echo) "   Compiling(apcc) ../../../MA_UNITDATAX_request.c in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(AUTOCC) -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/MA_UNITDATAX_request.d
