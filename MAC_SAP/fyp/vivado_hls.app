<project xmlns="com.autoesl.autopilot.project" name="fyp" top="enqueue_dequeue_frame" enableIndexer="false">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="2" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../timer_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
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
        <file name="fyp/timer.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/timer.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
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
        <file name="fyp/MA_UNITDATA_indication.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATAX_request.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fyp/MA_UNITDATAX_request.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

