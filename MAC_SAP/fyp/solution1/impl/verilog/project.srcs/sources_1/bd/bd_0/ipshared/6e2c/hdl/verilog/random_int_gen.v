// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module random_int_gen (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        max_val,
        rand_state_i,
        rand_state_o,
        rand_state_o_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_state1 = 38'd1;
parameter    ap_ST_fsm_state2 = 38'd2;
parameter    ap_ST_fsm_state3 = 38'd4;
parameter    ap_ST_fsm_state4 = 38'd8;
parameter    ap_ST_fsm_state5 = 38'd16;
parameter    ap_ST_fsm_state6 = 38'd32;
parameter    ap_ST_fsm_state7 = 38'd64;
parameter    ap_ST_fsm_state8 = 38'd128;
parameter    ap_ST_fsm_state9 = 38'd256;
parameter    ap_ST_fsm_state10 = 38'd512;
parameter    ap_ST_fsm_state11 = 38'd1024;
parameter    ap_ST_fsm_state12 = 38'd2048;
parameter    ap_ST_fsm_state13 = 38'd4096;
parameter    ap_ST_fsm_state14 = 38'd8192;
parameter    ap_ST_fsm_state15 = 38'd16384;
parameter    ap_ST_fsm_state16 = 38'd32768;
parameter    ap_ST_fsm_state17 = 38'd65536;
parameter    ap_ST_fsm_state18 = 38'd131072;
parameter    ap_ST_fsm_state19 = 38'd262144;
parameter    ap_ST_fsm_state20 = 38'd524288;
parameter    ap_ST_fsm_state21 = 38'd1048576;
parameter    ap_ST_fsm_state22 = 38'd2097152;
parameter    ap_ST_fsm_state23 = 38'd4194304;
parameter    ap_ST_fsm_state24 = 38'd8388608;
parameter    ap_ST_fsm_state25 = 38'd16777216;
parameter    ap_ST_fsm_state26 = 38'd33554432;
parameter    ap_ST_fsm_state27 = 38'd67108864;
parameter    ap_ST_fsm_state28 = 38'd134217728;
parameter    ap_ST_fsm_state29 = 38'd268435456;
parameter    ap_ST_fsm_state30 = 38'd536870912;
parameter    ap_ST_fsm_state31 = 38'd1073741824;
parameter    ap_ST_fsm_state32 = 38'd2147483648;
parameter    ap_ST_fsm_state33 = 38'd4294967296;
parameter    ap_ST_fsm_state34 = 38'd8589934592;
parameter    ap_ST_fsm_state35 = 38'd17179869184;
parameter    ap_ST_fsm_state36 = 38'd34359738368;
parameter    ap_ST_fsm_state37 = 38'd68719476736;
parameter    ap_ST_fsm_state38 = 38'd137438953472;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] max_val;
input  [31:0] rand_state_i;
output  [31:0] rand_state_o;
output   rand_state_o_ap_vld;
output  [9:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] rand_state_o;
reg rand_state_o_ap_vld;
reg[9:0] ap_return;

(* fsm_encoding = "none" *) reg   [37:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] low_1_fu_54_p2;
reg   [31:0] low_1_reg_161;
wire   [31:0] high_2_fu_154_p2;
reg   [31:0] high_2_reg_166;
reg   [15:0] trunc_ln1_reg_171;
wire   [30:0] trunc_ln14_fu_110_p1;
reg   [30:0] trunc_ln14_reg_176;
wire    ap_CS_fsm_state2;
reg   [0:0] tmp_1_reg_181;
wire   [31:0] x_2_fu_128_p2;
wire    ap_CS_fsm_state3;
wire   [14:0] low_fu_46_p1;
wire   [14:0] low_1_fu_54_p0;
wire   [16:0] high_fu_60_p4;
wire   [15:0] trunc_ln12_fu_83_p1;
wire   [15:0] add_ln13_fu_90_p2;
wire   [31:0] zext_ln13_fu_86_p1;
wire   [31:0] zext_ln13_1_fu_95_p1;
wire   [31:0] x_fu_99_p2;
wire   [31:0] x_1_fu_105_p2;
wire   [31:0] zext_ln15_1_fu_125_p1;
wire   [31:0] zext_ln15_fu_122_p1;
wire   [31:0] grp_fu_144_p0;
wire   [9:0] grp_fu_144_p1;
wire   [9:0] grp_fu_144_p2;
wire    ap_CS_fsm_state38;
wire   [16:0] high_2_fu_154_p0;
wire   [16:0] high_2_fu_154_p1;
reg    grp_fu_144_ap_start;
wire    grp_fu_144_ap_done;
wire   [9:0] ret_val_fu_150_p1;
reg   [9:0] ap_return_preg;
reg   [37:0] ap_NS_fsm;
wire   [31:0] grp_fu_144_p10;
wire   [31:0] high_2_fu_154_p10;
wire   [31:0] low_1_fu_54_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 38'd1;
#0 ap_return_preg = 10'd0;
end

send_frame_urem_3bkb #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 10 ))
send_frame_urem_3bkb_U23(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_144_ap_start),
    .done(grp_fu_144_ap_done),
    .din0(grp_fu_144_p0),
    .din1(grp_fu_144_p1),
    .ce(1'b1),
    .dout(grp_fu_144_p2)
);

send_frame_mul_mucud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 32 ))
send_frame_mul_mucud_U24(
    .din0(high_2_fu_154_p0),
    .din1(high_2_fu_154_p1),
    .dout(high_2_fu_154_p2)
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
        ap_return_preg <= 10'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            ap_return_preg <= ret_val_fu_150_p1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        high_2_reg_166 <= high_2_fu_154_p2;
        low_1_reg_161 <= low_1_fu_54_p2;
        trunc_ln1_reg_171 <= {{high_2_fu_154_p2[31:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        tmp_1_reg_181 <= x_1_fu_105_p2[32'd31];
        trunc_ln14_reg_176 <= trunc_ln14_fu_110_p1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state38)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        ap_return = ret_val_fu_150_p1;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_144_ap_start = 1'b1;
    end else begin
        grp_fu_144_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        rand_state_o = x_2_fu_128_p2;
    end else begin
        rand_state_o = rand_state_i;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        rand_state_o_ap_vld = 1'b1;
    end else begin
        rand_state_o_ap_vld = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln13_fu_90_p2 = (16'd15 + trunc_ln1_reg_171);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];

assign grp_fu_144_p0 = (zext_ln15_1_fu_125_p1 + zext_ln15_fu_122_p1);

assign grp_fu_144_p1 = grp_fu_144_p10;

assign grp_fu_144_p10 = max_val;

assign high_2_fu_154_p0 = 32'd48271;

assign high_2_fu_154_p1 = high_2_fu_154_p10;

assign high_2_fu_154_p10 = high_fu_60_p4;

assign high_fu_60_p4 = {{rand_state_i[31:15]}};

assign low_1_fu_54_p0 = low_1_fu_54_p00;

assign low_1_fu_54_p00 = low_fu_46_p1;

assign low_1_fu_54_p2 = (low_1_fu_54_p0 * $signed('hBC8F));

assign low_fu_46_p1 = rand_state_i[14:0];

assign ret_val_fu_150_p1 = grp_fu_144_p2[9:0];

assign trunc_ln12_fu_83_p1 = high_2_reg_166[15:0];

assign trunc_ln14_fu_110_p1 = x_1_fu_105_p2[30:0];

assign x_1_fu_105_p2 = (low_1_reg_161 + x_fu_99_p2);

assign x_2_fu_128_p2 = (zext_ln15_1_fu_125_p1 + zext_ln15_fu_122_p1);

assign x_fu_99_p2 = zext_ln13_fu_86_p1 << zext_ln13_1_fu_95_p1;

assign zext_ln13_1_fu_95_p1 = add_ln13_fu_90_p2;

assign zext_ln13_fu_86_p1 = trunc_ln12_fu_83_p1;

assign zext_ln15_1_fu_125_p1 = tmp_1_reg_181;

assign zext_ln15_fu_122_p1 = trunc_ln14_reg_176;

endmodule //random_int_gen