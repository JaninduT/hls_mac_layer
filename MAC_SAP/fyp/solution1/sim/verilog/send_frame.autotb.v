// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      send_frame
`define AUTOTB_DUT_INST AESL_inst_send_frame
`define AUTOTB_TOP      apatb_send_frame_top
`define AUTOTB_LAT_RESULT_FILE "send_frame.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "send_frame.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_send_frame_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_source_addr_mac AESL_automem_source_addr_mac
`define AESL_MEM_INST_source_addr_mac mem_inst_source_addr_mac
`define AESL_MEM_dest_addr_mac AESL_automem_dest_addr_mac
`define AESL_MEM_INST_dest_addr_mac mem_inst_dest_addr_mac
`define AESL_MEM_data AESL_automem_data
`define AESL_MEM_INST_data mem_inst_data
`define AESL_DEPTH_up 1
`define AESL_DEPTH_s_class 1
`define AESL_DEPTH_c_identifier_operating_class 1
`define AESL_DEPTH_c_identifier_channel_number 1
`define AESL_DEPTH_t_slot 1
`define AESL_DEPTH_d_rate 1
`define AESL_DEPTH_tx_power_lvl 1
`define AESL_DEPTH_expiry_time 1
`define AESL_MEM_mac_frame AESL_automem_mac_frame
`define AESL_MEM_INST_mac_frame mem_inst_mac_frame
`define AESL_DEPTH_medium_state 1
`define AESL_DEPTH_current_txop_holder 1
`define AESL_MEM_received_frame AESL_automem_received_frame
`define AESL_MEM_INST_received_frame mem_inst_received_frame
`define AUTOTB_TVIN_source_addr_mac  "../tv/cdatafile/c.send_frame.autotvin_source_addr_mac.dat"
`define AUTOTB_TVIN_data  "../tv/cdatafile/c.send_frame.autotvin_data.dat"
`define AUTOTB_TVIN_up  "../tv/cdatafile/c.send_frame.autotvin_up.dat"
`define AUTOTB_TVIN_s_class  "../tv/cdatafile/c.send_frame.autotvin_s_class.dat"
`define AUTOTB_TVIN_c_identifier_operating_class  "../tv/cdatafile/c.send_frame.autotvin_c_identifier_operating_class.dat"
`define AUTOTB_TVIN_c_identifier_channel_number  "../tv/cdatafile/c.send_frame.autotvin_c_identifier_channel_number.dat"
`define AUTOTB_TVIN_d_rate  "../tv/cdatafile/c.send_frame.autotvin_d_rate.dat"
`define AUTOTB_TVIN_tx_power_lvl  "../tv/cdatafile/c.send_frame.autotvin_tx_power_lvl.dat"
`define AUTOTB_TVIN_mac_frame  "../tv/cdatafile/c.send_frame.autotvin_mac_frame.dat"
`define AUTOTB_TVIN_medium_state  "../tv/cdatafile/c.send_frame.autotvin_medium_state.dat"
`define AUTOTB_TVIN_current_txop_holder  "../tv/cdatafile/c.send_frame.autotvin_current_txop_holder.dat"
`define AUTOTB_TVIN_source_addr_mac_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_source_addr_mac.dat"
`define AUTOTB_TVIN_data_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_data.dat"
`define AUTOTB_TVIN_up_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_up.dat"
`define AUTOTB_TVIN_s_class_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_s_class.dat"
`define AUTOTB_TVIN_c_identifier_operating_class_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_c_identifier_operating_class.dat"
`define AUTOTB_TVIN_c_identifier_channel_number_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_c_identifier_channel_number.dat"
`define AUTOTB_TVIN_d_rate_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_d_rate.dat"
`define AUTOTB_TVIN_tx_power_lvl_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_tx_power_lvl.dat"
`define AUTOTB_TVIN_mac_frame_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_mac_frame.dat"
`define AUTOTB_TVIN_medium_state_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_medium_state.dat"
`define AUTOTB_TVIN_current_txop_holder_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvin_current_txop_holder.dat"
`define AUTOTB_TVOUT_mac_frame  "../tv/cdatafile/c.send_frame.autotvout_mac_frame.dat"
`define AUTOTB_TVOUT_current_txop_holder  "../tv/cdatafile/c.send_frame.autotvout_current_txop_holder.dat"
`define AUTOTB_TVOUT_mac_frame_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvout_mac_frame.dat"
`define AUTOTB_TVOUT_current_txop_holder_out_wrapc  "../tv/rtldatafile/rtl.send_frame.autotvout_current_txop_holder.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_source_addr_mac = 6;
parameter LENGTH_data = 70;
parameter LENGTH_up = 1;
parameter LENGTH_s_class = 1;
parameter LENGTH_c_identifier_operating_class = 1;
parameter LENGTH_c_identifier_channel_number = 1;
parameter LENGTH_d_rate = 1;
parameter LENGTH_tx_power_lvl = 1;
parameter LENGTH_mac_frame = 100;
parameter LENGTH_medium_state = 1;
parameter LENGTH_current_txop_holder = 1;

task read_token;
    input integer fp;
    output reg [247 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [2 : 0] source_addr_mac_address0;
wire  source_addr_mac_ce0;
wire [7 : 0] source_addr_mac_q0;
wire [2 : 0] source_addr_mac_address1;
wire  source_addr_mac_ce1;
wire [7 : 0] source_addr_mac_q1;
wire [2 : 0] dest_addr_mac_address0;
wire  dest_addr_mac_ce0;
wire  dest_addr_mac_we0;
wire [7 : 0] dest_addr_mac_d0;
wire [7 : 0] dest_addr_mac_q0;
wire [2 : 0] dest_addr_mac_address1;
wire  dest_addr_mac_ce1;
wire  dest_addr_mac_we1;
wire [7 : 0] dest_addr_mac_d1;
wire [7 : 0] dest_addr_mac_q1;
wire [6 : 0] data_address0;
wire  data_ce0;
wire [7 : 0] data_q0;
wire [3 : 0] up;
wire [0 : 0] s_class;
wire [7 : 0] c_identifier_operating_class;
wire [7 : 0] c_identifier_channel_number;
wire [1 : 0] t_slot;
wire [6 : 0] d_rate;
wire [3 : 0] tx_power_lvl;
wire [63 : 0] expiry_time;
wire [6 : 0] mac_frame_address0;
wire  mac_frame_ce0;
wire  mac_frame_we0;
wire [7 : 0] mac_frame_d0;
wire [7 : 0] mac_frame_q0;
wire [0 : 0] medium_state;
wire [2 : 0] current_txop_holder_i;
wire [2 : 0] current_txop_holder_o;
wire  current_txop_holder_o_ap_vld;
wire [6 : 0] received_frame_address0;
wire  received_frame_ce0;
wire  received_frame_we0;
wire [7 : 0] received_frame_d0;
wire [7 : 0] received_frame_q0;
wire [6 : 0] received_frame_address1;
wire  received_frame_ce1;
wire  received_frame_we1;
wire [7 : 0] received_frame_d1;
wire [7 : 0] received_frame_q1;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .source_addr_mac_address0(source_addr_mac_address0),
    .source_addr_mac_ce0(source_addr_mac_ce0),
    .source_addr_mac_q0(source_addr_mac_q0),
    .source_addr_mac_address1(source_addr_mac_address1),
    .source_addr_mac_ce1(source_addr_mac_ce1),
    .source_addr_mac_q1(source_addr_mac_q1),
    .dest_addr_mac_address0(dest_addr_mac_address0),
    .dest_addr_mac_ce0(dest_addr_mac_ce0),
    .dest_addr_mac_we0(dest_addr_mac_we0),
    .dest_addr_mac_d0(dest_addr_mac_d0),
    .dest_addr_mac_q0(dest_addr_mac_q0),
    .dest_addr_mac_address1(dest_addr_mac_address1),
    .dest_addr_mac_ce1(dest_addr_mac_ce1),
    .dest_addr_mac_we1(dest_addr_mac_we1),
    .dest_addr_mac_d1(dest_addr_mac_d1),
    .dest_addr_mac_q1(dest_addr_mac_q1),
    .data_address0(data_address0),
    .data_ce0(data_ce0),
    .data_q0(data_q0),
    .up(up),
    .s_class(s_class),
    .c_identifier_operating_class(c_identifier_operating_class),
    .c_identifier_channel_number(c_identifier_channel_number),
    .t_slot(t_slot),
    .d_rate(d_rate),
    .tx_power_lvl(tx_power_lvl),
    .expiry_time(expiry_time),
    .mac_frame_address0(mac_frame_address0),
    .mac_frame_ce0(mac_frame_ce0),
    .mac_frame_we0(mac_frame_we0),
    .mac_frame_d0(mac_frame_d0),
    .mac_frame_q0(mac_frame_q0),
    .medium_state(medium_state),
    .current_txop_holder_i(current_txop_holder_i),
    .current_txop_holder_o(current_txop_holder_o),
    .current_txop_holder_o_ap_vld(current_txop_holder_o_ap_vld),
    .received_frame_address0(received_frame_address0),
    .received_frame_ce0(received_frame_ce0),
    .received_frame_we0(received_frame_we0),
    .received_frame_d0(received_frame_d0),
    .received_frame_q0(received_frame_q0),
    .received_frame_address1(received_frame_address1),
    .received_frame_ce1(received_frame_ce1),
    .received_frame_we1(received_frame_we1),
    .received_frame_d1(received_frame_d1),
    .received_frame_q1(received_frame_q1));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arraysource_addr_mac Instantiation--------------

// The input and output of arraysource_addr_mac
wire    arraysource_addr_mac_ce0, arraysource_addr_mac_ce1;
wire    arraysource_addr_mac_we0, arraysource_addr_mac_we1;
wire    [2 : 0]    arraysource_addr_mac_address0, arraysource_addr_mac_address1;
wire    [7 : 0]    arraysource_addr_mac_din0, arraysource_addr_mac_din1;
wire    [7 : 0]    arraysource_addr_mac_dout0, arraysource_addr_mac_dout1;
wire    arraysource_addr_mac_ready;
wire    arraysource_addr_mac_done;

`AESL_MEM_source_addr_mac `AESL_MEM_INST_source_addr_mac(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraysource_addr_mac_ce0),
    .we0        (arraysource_addr_mac_we0),
    .address0   (arraysource_addr_mac_address0),
    .din0       (arraysource_addr_mac_din0),
    .dout0      (arraysource_addr_mac_dout0),
    .ce1        (arraysource_addr_mac_ce1),
    .we1        (arraysource_addr_mac_we1),
    .address1   (arraysource_addr_mac_address1),
    .din1       (arraysource_addr_mac_din1),
    .dout1      (arraysource_addr_mac_dout1),
    .ready      (arraysource_addr_mac_ready),
    .done    (arraysource_addr_mac_done)
);

// Assignment between dut and arraysource_addr_mac
assign arraysource_addr_mac_address0 = source_addr_mac_address0;
assign arraysource_addr_mac_ce0 = source_addr_mac_ce0;
assign source_addr_mac_q0 = arraysource_addr_mac_dout0;
assign arraysource_addr_mac_we0 = 0;
assign arraysource_addr_mac_din0 = 0;
assign arraysource_addr_mac_address1 = source_addr_mac_address1;
assign arraysource_addr_mac_ce1 = source_addr_mac_ce1;
assign source_addr_mac_q1 = arraysource_addr_mac_dout1;
assign arraysource_addr_mac_we1 = 0;
assign arraysource_addr_mac_din1 = 0;
assign arraysource_addr_mac_ready=    ready;
assign arraysource_addr_mac_done = 0;


//------------------------arraydest_addr_mac Instantiation--------------

// The input and output of arraydest_addr_mac
wire    arraydest_addr_mac_ce0, arraydest_addr_mac_ce1;
wire    arraydest_addr_mac_we0, arraydest_addr_mac_we1;
wire    [2 : 0]    arraydest_addr_mac_address0, arraydest_addr_mac_address1;
wire    [7 : 0]    arraydest_addr_mac_din0, arraydest_addr_mac_din1;
wire    [7 : 0]    arraydest_addr_mac_dout0, arraydest_addr_mac_dout1;
wire    arraydest_addr_mac_ready;
wire    arraydest_addr_mac_done;

// Assignment between dut and arraydest_addr_mac
assign arraydest_addr_mac_done = 0;


//------------------------arraydata Instantiation--------------

// The input and output of arraydata
wire    arraydata_ce0, arraydata_ce1;
wire    arraydata_we0, arraydata_we1;
wire    [6 : 0]    arraydata_address0, arraydata_address1;
wire    [7 : 0]    arraydata_din0, arraydata_din1;
wire    [7 : 0]    arraydata_dout0, arraydata_dout1;
wire    arraydata_ready;
wire    arraydata_done;

`AESL_MEM_data `AESL_MEM_INST_data(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraydata_ce0),
    .we0        (arraydata_we0),
    .address0   (arraydata_address0),
    .din0       (arraydata_din0),
    .dout0      (arraydata_dout0),
    .ce1        (arraydata_ce1),
    .we1        (arraydata_we1),
    .address1   (arraydata_address1),
    .din1       (arraydata_din1),
    .dout1      (arraydata_dout1),
    .ready      (arraydata_ready),
    .done    (arraydata_done)
);

// Assignment between dut and arraydata
assign arraydata_address0 = data_address0;
assign arraydata_ce0 = data_ce0;
assign data_q0 = arraydata_dout0;
assign arraydata_we0 = 0;
assign arraydata_din0 = 0;
assign arraydata_we1 = 0;
assign arraydata_din1 = 0;
assign arraydata_ready=    ready;
assign arraydata_done = 0;


// The signal of port up
reg [3: 0] AESL_REG_up = 0;
assign up = AESL_REG_up;
initial begin : read_file_process_up
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_up,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_up);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_up);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port s_class
reg [0: 0] AESL_REG_s_class = 0;
assign s_class = AESL_REG_s_class;
initial begin : read_file_process_s_class
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_s_class,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_s_class);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_s_class);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port c_identifier_operating_class
reg [7: 0] AESL_REG_c_identifier_operating_class = 0;
assign c_identifier_operating_class = AESL_REG_c_identifier_operating_class;
initial begin : read_file_process_c_identifier_operating_class
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_c_identifier_operating_class,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_identifier_operating_class);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_c_identifier_operating_class);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port c_identifier_channel_number
reg [7: 0] AESL_REG_c_identifier_channel_number = 0;
assign c_identifier_channel_number = AESL_REG_c_identifier_channel_number;
initial begin : read_file_process_c_identifier_channel_number
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_c_identifier_channel_number,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_c_identifier_channel_number);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_c_identifier_channel_number);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port t_slot
reg [1: 0] AESL_REG_t_slot = 0;
assign t_slot = AESL_REG_t_slot;

// The signal of port d_rate
reg [6: 0] AESL_REG_d_rate = 0;
assign d_rate = AESL_REG_d_rate;
initial begin : read_file_process_d_rate
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_d_rate,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_d_rate);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_d_rate);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port tx_power_lvl
reg [3: 0] AESL_REG_tx_power_lvl = 0;
assign tx_power_lvl = AESL_REG_tx_power_lvl;
initial begin : read_file_process_tx_power_lvl
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_tx_power_lvl,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_tx_power_lvl);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_tx_power_lvl);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port expiry_time
reg [63: 0] AESL_REG_expiry_time = 0;
assign expiry_time = AESL_REG_expiry_time;

//------------------------arraymac_frame Instantiation--------------

// The input and output of arraymac_frame
wire    arraymac_frame_ce0, arraymac_frame_ce1;
wire    arraymac_frame_we0, arraymac_frame_we1;
wire    [6 : 0]    arraymac_frame_address0, arraymac_frame_address1;
wire    [7 : 0]    arraymac_frame_din0, arraymac_frame_din1;
wire    [7 : 0]    arraymac_frame_dout0, arraymac_frame_dout1;
wire    arraymac_frame_ready;
wire    arraymac_frame_done;

`AESL_MEM_mac_frame `AESL_MEM_INST_mac_frame(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arraymac_frame_ce0),
    .we0        (arraymac_frame_we0),
    .address0   (arraymac_frame_address0),
    .din0       (arraymac_frame_din0),
    .dout0      (arraymac_frame_dout0),
    .ce1        (arraymac_frame_ce1),
    .we1        (arraymac_frame_we1),
    .address1   (arraymac_frame_address1),
    .din1       (arraymac_frame_din1),
    .dout1      (arraymac_frame_dout1),
    .ready      (arraymac_frame_ready),
    .done    (arraymac_frame_done)
);

// Assignment between dut and arraymac_frame
assign arraymac_frame_address0 = mac_frame_address0;
assign arraymac_frame_ce0 = mac_frame_ce0;
assign mac_frame_q0 = arraymac_frame_dout0;
assign arraymac_frame_we0 = mac_frame_we0;
assign arraymac_frame_din0 = mac_frame_d0;
assign arraymac_frame_we1 = 0;
assign arraymac_frame_din1 = 0;
assign arraymac_frame_ready= ready;
assign arraymac_frame_done = interface_done;


// The signal of port medium_state
reg [0: 0] AESL_REG_medium_state = 0;
assign medium_state = AESL_REG_medium_state;
initial begin : read_file_process_medium_state
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_medium_state,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_medium_state);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_medium_state);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port current_txop_holder_i
reg [2: 0] AESL_REG_current_txop_holder_i = 0;
assign current_txop_holder_i = AESL_REG_current_txop_holder_i;
always @(posedge AESL_clock)
begin
    if(current_txop_holder_o_ap_vld === 1)
        AESL_REG_current_txop_holder_i <= current_txop_holder_o;
end

initial begin : read_file_process_current_txop_holder
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [247  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_current_txop_holder,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_current_txop_holder);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_current_txop_holder_i);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end

reg AESL_REG_current_txop_holder_o_ap_vld = 0;
// The signal of port current_txop_holder_o
reg [2: 0] AESL_REG_current_txop_holder_o = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_current_txop_holder_o = 0; 
    else if(current_txop_holder_o_ap_vld) begin
        AESL_REG_current_txop_holder_o <= current_txop_holder_o;
        AESL_REG_current_txop_holder_o_ap_vld <= 1;
    end
end 

initial begin : write_file_process_current_txop_holder
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer current_txop_holder_count;
    reg [247:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_current_txop_holder_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_current_txop_holder_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_current_txop_holder_o_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_current_txop_holder_o);
        AESL_REG_current_txop_holder_o_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


//------------------------arrayreceived_frame Instantiation--------------

// The input and output of arrayreceived_frame
wire    arrayreceived_frame_ce0, arrayreceived_frame_ce1;
wire    arrayreceived_frame_we0, arrayreceived_frame_we1;
wire    [6 : 0]    arrayreceived_frame_address0, arrayreceived_frame_address1;
wire    [7 : 0]    arrayreceived_frame_din0, arrayreceived_frame_din1;
wire    [7 : 0]    arrayreceived_frame_dout0, arrayreceived_frame_dout1;
wire    arrayreceived_frame_ready;
wire    arrayreceived_frame_done;

// Assignment between dut and arrayreceived_frame
assign arrayreceived_frame_done = 0;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_source_addr_mac;
reg [31:0] size_source_addr_mac;
reg [31:0] size_source_addr_mac_backup;
reg end_data;
reg [31:0] size_data;
reg [31:0] size_data_backup;
reg end_up;
reg [31:0] size_up;
reg [31:0] size_up_backup;
reg end_s_class;
reg [31:0] size_s_class;
reg [31:0] size_s_class_backup;
reg end_c_identifier_operating_class;
reg [31:0] size_c_identifier_operating_class;
reg [31:0] size_c_identifier_operating_class_backup;
reg end_c_identifier_channel_number;
reg [31:0] size_c_identifier_channel_number;
reg [31:0] size_c_identifier_channel_number_backup;
reg end_d_rate;
reg [31:0] size_d_rate;
reg [31:0] size_d_rate_backup;
reg end_tx_power_lvl;
reg [31:0] size_tx_power_lvl;
reg [31:0] size_tx_power_lvl_backup;
reg end_mac_frame;
reg [31:0] size_mac_frame;
reg [31:0] size_mac_frame_backup;
reg end_medium_state;
reg [31:0] size_medium_state;
reg [31:0] size_medium_state_backup;
reg end_current_txop_holder;
reg [31:0] size_current_txop_holder;
reg [31:0] size_current_txop_holder_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_mac_frame;

initial begin : dump_tvout_runtime_sign_mac_frame
    integer fp;
    dump_tvout_finish_mac_frame = 0;
    fp = $fopen(`AUTOTB_TVOUT_mac_frame_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mac_frame_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_mac_frame_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_mac_frame_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_mac_frame = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
