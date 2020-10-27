<project xmlns="com.autoesl.autopilot.project" name="fyp" top="backoff_vi" enableIndexer="false">
    <files>
        <file name="fyp/timer.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/timer.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/mac_layer.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/mac_layer.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/edca.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/edca.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/decompose_mac_frame.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/decompose_mac_frame.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/crc_32_validate.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/crc_32.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/crc_32.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/compose_mac_frame.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/compose_mac_frame.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/common.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/MA_UNITDATA_indication.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/MA_UNITDATAX_request.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fyp/MA_UNITDATAX_request.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="../backoff_test.c" sc="0" tb="1" cflags=""/>
        <file name="../compose_mac_frame_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../compose_mac_header_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../crc_32_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../crc_32_validate_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../decompose_mac_frame_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../edca_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../input_data.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../input_message.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../input_message_crc.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../mac_frame.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../mac_layer_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../slot_boundary_timing_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="../timer_test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="2"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

