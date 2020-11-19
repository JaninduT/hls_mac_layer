// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module start_backoff_vi (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        invoke_reason,
        CW_vi_i,
        CW_vi_o,
        CW_vi_o_ap_vld,
        rand_state_i,
        rand_state_o,
        rand_state_o_ap_vld,
        vi_backoff_counter,
        vi_backoff_counter_ap_vld
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] invoke_reason;
input  [9:0] CW_vi_i;
output  [9:0] CW_vi_o;
output   CW_vi_o_ap_vld;
input  [31:0] rand_state_i;
output  [31:0] rand_state_o;
output   rand_state_o_ap_vld;
output  [9:0] vi_backoff_counter;
output   vi_backoff_counter_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] CW_vi_o;
reg CW_vi_o_ap_vld;
reg[31:0] rand_state_o;
reg vi_backoff_counter_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_random_int_gen_fu_37_ap_start;
wire    grp_random_int_gen_fu_37_ap_done;
wire    grp_random_int_gen_fu_37_ap_idle;
wire    grp_random_int_gen_fu_37_ap_ready;
wire   [31:0] grp_random_int_gen_fu_37_rand_state_o;
wire    grp_random_int_gen_fu_37_rand_state_o_ap_vld;
wire   [9:0] grp_random_int_gen_fu_37_ap_return;
reg   [9:0] CW_vi_loc_2_reg_24;
wire   [0:0] invoke_reason_read_read_fu_18_p2;
wire   [0:0] icmp_ln335_fu_56_p2;
wire   [9:0] or_ln336_fu_68_p2;
reg    grp_random_int_gen_fu_37_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [9:0] shl_ln336_fu_62_p2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_random_int_gen_fu_37_ap_start_reg = 1'b0;
end

random_int_gen grp_random_int_gen_fu_37(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_random_int_gen_fu_37_ap_start),
    .ap_done(grp_random_int_gen_fu_37_ap_done),
    .ap_idle(grp_random_int_gen_fu_37_ap_idle),
    .ap_ready(grp_random_int_gen_fu_37_ap_ready),
    .max_val(CW_vi_loc_2_reg_24),
    .rand_state_i(rand_state_i),
    .rand_state_o(grp_random_int_gen_fu_37_rand_state_o),
    .rand_state_o_ap_vld(grp_random_int_gen_fu_37_rand_state_o_ap_vld),
    .ap_return(grp_random_int_gen_fu_37_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_random_int_gen_fu_37_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_random_int_gen_fu_37_ap_start_reg <= 1'b1;
        end else if ((grp_random_int_gen_fu_37_ap_ready == 1'b1)) begin
            grp_random_int_gen_fu_37_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((icmp_ln335_fu_56_p2 == 1'd0) & (invoke_reason_read_read_fu_18_p2 == 1'd1))) begin
            CW_vi_loc_2_reg_24 <= or_ln336_fu_68_p2;
        end else if (((icmp_ln335_fu_56_p2 == 1'd1) & (invoke_reason_read_read_fu_18_p2 == 1'd1))) begin
            CW_vi_loc_2_reg_24 <= CW_vi_i;
        end else if ((invoke_reason_read_read_fu_18_p2 == 1'd0)) begin
            CW_vi_loc_2_reg_24 <= 10'd15;
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((icmp_ln335_fu_56_p2 == 1'd0) & (invoke_reason_read_read_fu_18_p2 == 1'd1))) begin
            CW_vi_o = or_ln336_fu_68_p2;
        end else if ((invoke_reason_read_read_fu_18_p2 == 1'd0)) begin
            CW_vi_o = 10'd15;
        end else begin
            CW_vi_o = CW_vi_i;
        end
    end else begin
        CW_vi_o = CW_vi_i;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (icmp_ln335_fu_56_p2 == 1'd0) & (invoke_reason_read_read_fu_18_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (invoke_reason_read_read_fu_18_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1)))) begin
        CW_vi_o_ap_vld = 1'b1;
    end else begin
        CW_vi_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((grp_random_int_gen_fu_37_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_random_int_gen_fu_37_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_random_int_gen_fu_37_rand_state_o_ap_vld == 1'b1))) begin
        rand_state_o = grp_random_int_gen_fu_37_rand_state_o;
    end else begin
        rand_state_o = rand_state_i;
    end
end

always @ (*) begin
    if (((grp_random_int_gen_fu_37_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        vi_backoff_counter_ap_vld = 1'b1;
    end else begin
        vi_backoff_counter_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_random_int_gen_fu_37_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign grp_random_int_gen_fu_37_ap_start = grp_random_int_gen_fu_37_ap_start_reg;

assign icmp_ln335_fu_56_p2 = ((CW_vi_i == 10'd1023) ? 1'b1 : 1'b0);

assign invoke_reason_read_read_fu_18_p2 = invoke_reason;

assign or_ln336_fu_68_p2 = (shl_ln336_fu_62_p2 | 10'd1);

assign rand_state_o_ap_vld = grp_random_int_gen_fu_37_rand_state_o_ap_vld;

assign shl_ln336_fu_62_p2 = CW_vi_i << 10'd1;

assign vi_backoff_counter = grp_random_int_gen_fu_37_ap_return;

endmodule //start_backoff_vi