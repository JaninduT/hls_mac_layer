<project xmlns="com.autoesl.autopilot.project" name="fyp" top="phy_data_confirm" enableIndexer="false">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" csimMode="2" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../timer_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../slot_boundary_timing_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../r_n_g_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../mac_layer_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../mac_frame.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../input_message_crc.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../input_message.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../input_data.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../edca_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../decompose_mac_frame_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../crc_32_validate_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../crc_32_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../compose_mac_header_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../compose_mac_frame_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../backoff_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../PHY_TXSTART_confirm_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../PHY_TXEND_confirm_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../PHY_RXEND_indication_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../PHY_DATA_confirm_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../PHY_CCA_indication_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../MA_UNITDATAX_request_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../MA_UNITDATAX_STATUS_indication_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="fyp/timer.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/timer.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/r_n_g.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/r_n_g.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/mac_layer.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/mac_layer.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/edca.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/edca.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/decompose_mac_frame.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/decompose_mac_frame.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/crc_32_validate.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/crc_32.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/crc_32.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/compose_mac_frame.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/compose_mac_frame.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/common.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXSTART_request.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXSTART_request.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXSTART_confirm.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXSTART_confirm.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXEND_request.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXEND_request.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXEND_confirm.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_TXEND_confirm.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_RXEND_indication.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_RXEND_indication.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_DATA_request.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_DATA_request.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_DATA_confirm.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_DATA_confirm.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_CCA_indication.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/PHY_CCA_indication.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATA_indication.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATAX_request.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATAX_request.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATAX_STATUS_indication.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATAX_STATUS_indication.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

