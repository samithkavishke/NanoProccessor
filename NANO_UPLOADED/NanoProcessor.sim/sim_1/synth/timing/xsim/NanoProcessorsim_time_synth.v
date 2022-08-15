// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jul 29 06:36:19 2022
// Host        : LAPTOP-HCMN7SBA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.sim/sim_1/synth/timing/xsim/NanoProcessorsim_time_synth.v
// Design      : NanoProcessor
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module D_FF
   (R7_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_2);
  output [0:0]R7_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_2;

  wire Clk1_2;
  wire [0:0]O;
  wire [0:0]R7_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_2),
        .CE(1'b1),
        .D(O),
        .Q(R7_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_10
   (R6_OBUF,
    Clk1,
    RESETPUSH_IBUF,
    O,
    CLK_IBUF);
  output [0:0]R6_OBUF;
  output Clk1;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input CLK_IBUF;

  wire CLK_IBUF;
  wire Clk1;
  wire [0:0]O;
  wire [0:0]R6_OBUF;
  wire RESETPUSH_IBUF;

  LUT2 #(
    .INIT(4'h8)) 
    Q_i_1__5
       (.I0(RESETPUSH_IBUF),
        .I1(CLK_IBUF),
        .O(Clk1));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R6_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_11
   (R3_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_1);
  output [0:0]R3_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_1;

  wire Clk1_1;
  wire [0:0]O;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_1),
        .CE(1'b1),
        .D(O),
        .Q(R3_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_12
   (R3_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_1);
  output [0:0]R3_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_1;

  wire Clk1_1;
  wire [0:0]O;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_1),
        .CE(1'b1),
        .D(O),
        .Q(R3_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_13
   (R3_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_1);
  output [0:0]R3_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_1;

  wire Clk1_1;
  wire [0:0]O;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_1),
        .CE(1'b1),
        .D(O),
        .Q(R3_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_14
   (R3_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_1);
  output [0:0]R3_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_1;

  wire Clk1_1;
  wire [0:0]O;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_1),
        .CE(1'b1),
        .D(O),
        .Q(R3_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_15
   (R2_OBUF,
    ZERO_OBUF,
    B12_out,
    RESETPUSH_IBUF,
    O,
    Clk1_0,
    Q_reg_0,
    B16_out,
    C2,
    B18_out,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    B14_out,
    Q_reg_4,
    R1_OBUF,
    R3_OBUF,
    Q);
  output [0:0]R2_OBUF;
  output ZERO_OBUF;
  output B12_out;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_0;
  input Q_reg_0;
  input B16_out;
  input C2;
  input B18_out;
  input Q_reg_1;
  input Q_reg_2;
  input Q_reg_3;
  input B14_out;
  input Q_reg_4;
  input [0:0]R1_OBUF;
  input [0:0]R3_OBUF;
  input [2:0]Q;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire Clk1_0;
  wire [0:0]O;
  wire [2:0]Q;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;
  wire ZERO_OBUF;
  wire ZERO_OBUF_inst_i_2_n_0;

  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    Q_i_4__0
       (.I0(R2_OBUF),
        .I1(R1_OBUF),
        .I2(R3_OBUF),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(B12_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_0),
        .CE(1'b1),
        .D(O),
        .Q(R2_OBUF),
        .R(RESETPUSH_IBUF));
  LUT6 #(
    .INIT(64'h0002288028800002)) 
    ZERO_OBUF_inst_i_1
       (.I0(ZERO_OBUF_inst_i_2_n_0),
        .I1(Q_reg_0),
        .I2(B16_out),
        .I3(C2),
        .I4(B18_out),
        .I5(Q_reg_1),
        .O(ZERO_OBUF));
  LUT5 #(
    .INIT(32'h02808002)) 
    ZERO_OBUF_inst_i_2
       (.I0(Q_reg_2),
        .I1(Q_reg_3),
        .I2(B12_out),
        .I3(B14_out),
        .I4(Q_reg_4),
        .O(ZERO_OBUF_inst_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_16
   (R2_OBUF,
    B14_out,
    RESETPUSH_IBUF,
    O,
    Clk1_0,
    R1_OBUF,
    R3_OBUF,
    Q);
  output [0:0]R2_OBUF;
  output B14_out;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_0;
  input [0:0]R1_OBUF;
  input [0:0]R3_OBUF;
  input [2:0]Q;

  wire B14_out;
  wire Clk1_0;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_0),
        .CE(1'b1),
        .D(O),
        .Q(R2_OBUF),
        .R(RESETPUSH_IBUF));
  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    ZERO_OBUF_inst_i_9
       (.I0(R2_OBUF),
        .I1(R1_OBUF),
        .I2(R3_OBUF),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(B14_out));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_17
   (R2_OBUF,
    B16_out,
    RESETPUSH_IBUF,
    O,
    Clk1_0,
    R1_OBUF,
    R3_OBUF,
    Q);
  output [0:0]R2_OBUF;
  output B16_out;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_0;
  input [0:0]R1_OBUF;
  input [0:0]R3_OBUF;
  input [2:0]Q;

  wire B16_out;
  wire Clk1_0;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_0),
        .CE(1'b1),
        .D(O),
        .Q(R2_OBUF),
        .R(RESETPUSH_IBUF));
  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    ZERO_OBUF_inst_i_4
       (.I0(R2_OBUF),
        .I1(R1_OBUF),
        .I2(R3_OBUF),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(B16_out));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_18
   (R2_OBUF,
    B18_out,
    RESETPUSH_IBUF,
    O,
    Clk1_0,
    R1_OBUF,
    R3_OBUF,
    Q);
  output [0:0]R2_OBUF;
  output B18_out;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_0;
  input [0:0]R1_OBUF;
  input [0:0]R3_OBUF;
  input [2:0]Q;

  wire B18_out;
  wire Clk1_0;
  wire [0:0]O;
  wire [2:0]Q;
  wire [0:0]R1_OBUF;
  wire [0:0]R2_OBUF;
  wire [0:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_0),
        .CE(1'b1),
        .D(O),
        .Q(R2_OBUF),
        .R(RESETPUSH_IBUF));
  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    ZERO_OBUF_inst_i_6
       (.I0(R2_OBUF),
        .I1(R1_OBUF),
        .I2(R3_OBUF),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(B18_out));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_19
   (R1_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R1_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R1_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R1_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_20
   (R1_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R1_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R1_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R1_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_21
   (R1_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R1_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R1_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R1_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_22
   (R1_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R1_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R1_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R1_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_23
   (Q_reg_0,
    Q_reg_1,
    CLK_IBUF_BUFG);
  output Q_reg_0;
  input Q_reg_1;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire Q_reg_0;
  wire Q_reg_1;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_24
   (Q_reg_0,
    Clk1_0,
    Clk1_1,
    Clk1_2,
    LoadSelector,
    InBus,
    Q_reg_1,
    CLK_IBUF_BUFG,
    Q_reg_2,
    Q_reg_3,
    RESETPUSH_IBUF,
    CLK_IBUF);
  output Q_reg_0;
  output Clk1_0;
  output Clk1_1;
  output Clk1_2;
  output LoadSelector;
  output [1:0]InBus;
  input Q_reg_1;
  input CLK_IBUF_BUFG;
  input Q_reg_2;
  input Q_reg_3;
  input RESETPUSH_IBUF;
  input CLK_IBUF;

  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Clk1_0;
  wire Clk1_1;
  wire Clk1_2;
  wire [1:0]InBus;
  wire LoadSelector;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire RESETPUSH_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF040000)) 
    Q_i_1__2
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .I3(RESETPUSH_IBUF),
        .I4(CLK_IBUF),
        .O(Clk1_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF020000)) 
    Q_i_1__3
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .I3(RESETPUSH_IBUF),
        .I4(CLK_IBUF),
        .O(Clk1_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF580000)) 
    Q_i_1__4
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .I3(RESETPUSH_IBUF),
        .I4(CLK_IBUF),
        .O(Clk1_2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    Q_i_2__1
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(LoadSelector));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    Q_i_3
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .I2(Q_reg_2),
        .O(InBus[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h87)) 
    Q_i_4
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(InBus[1]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_1),
        .Q(Q_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_25
   (Q_reg_0,
    O,
    Q_reg_1,
    Q_reg_2,
    OVERFLOW_OBUF,
    Q_reg_3,
    Clk1,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    CLK_IBUF_BUFG,
    Q_reg_8,
    Q_reg_9,
    B16_out,
    B18_out,
    LoadSelector,
    RESETPUSH_IBUF,
    CLK_IBUF,
    InBus,
    B14_out,
    B12_out,
    R7_OBUF);
  output Q_reg_0;
  output [3:0]O;
  output Q_reg_1;
  output Q_reg_2;
  output OVERFLOW_OBUF;
  output Q_reg_3;
  output Clk1;
  output Q_reg_4;
  output Q_reg_5;
  output Q_reg_6;
  output Q_reg_7;
  input CLK_IBUF_BUFG;
  input Q_reg_8;
  input Q_reg_9;
  input B16_out;
  input B18_out;
  input LoadSelector;
  input RESETPUSH_IBUF;
  input CLK_IBUF;
  input [1:0]InBus;
  input B14_out;
  input B12_out;
  input [3:0]R7_OBUF;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Clk1;
  wire [1:0]InBus;
  wire JMPFlag;
  wire LoadSelector;
  wire [3:0]O;
  wire OVERFLOW_OBUF;
  wire Q_i_1__8_n_0;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Q_reg_4;
  wire Q_reg_5;
  wire Q_reg_6;
  wire Q_reg_7;
  wire Q_reg_8;
  wire Q_reg_9;
  wire [3:0]R7_OBUF;
  wire RESETPUSH_IBUF;
  wire [1:1]S;

  LUT5 #(
    .INIT(32'hFFE8E800)) 
    OVERFLOW_OBUF_inst_i_1
       (.I0(Q_reg_1),
        .I1(B16_out),
        .I2(Q_reg_2),
        .I3(B18_out),
        .I4(Q_reg_3),
        .O(OVERFLOW_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAAB3)) 
    Q_i_1
       (.I0(S),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(Q_reg_0),
        .O(O[1]));
  LUT6 #(
    .INIT(64'h9696969696000000)) 
    Q_i_1__0
       (.I0(Q_reg_1),
        .I1(B16_out),
        .I2(Q_reg_2),
        .I3(Q_reg_8),
        .I4(Q_reg_9),
        .I5(Q_reg_0),
        .O(O[2]));
  LUT6 #(
    .INIT(64'hA880022A022AA880)) 
    Q_i_1__1
       (.I0(LoadSelector),
        .I1(Q_reg_1),
        .I2(B16_out),
        .I3(Q_reg_2),
        .I4(B18_out),
        .I5(Q_reg_3),
        .O(O[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00006863)) 
    Q_i_1__6
       (.I0(Q_reg_9),
        .I1(Q_reg_8),
        .I2(JMPFlag),
        .I3(Q_reg_0),
        .I4(RESETPUSH_IBUF),
        .O(Q_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00003391)) 
    Q_i_1__7
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(JMPFlag),
        .I4(RESETPUSH_IBUF),
        .O(Q_reg_7));
  LUT5 #(
    .INIT(32'h00007880)) 
    Q_i_1__8
       (.I0(Q_reg_8),
        .I1(Q_reg_9),
        .I2(Q_reg_0),
        .I3(JMPFlag),
        .I4(RESETPUSH_IBUF),
        .O(Q_i_1__8_n_0));
  LUT5 #(
    .INIT(32'h666660FF)) 
    Q_i_1__9
       (.I0(Q_reg_5),
        .I1(B12_out),
        .I2(Q_reg_8),
        .I3(Q_reg_9),
        .I4(Q_reg_0),
        .O(O[0]));
  LUT5 #(
    .INIT(32'hFF010000)) 
    Q_i_2
       (.I0(Q_reg_0),
        .I1(Q_reg_8),
        .I2(Q_reg_9),
        .I3(RESETPUSH_IBUF),
        .I4(CLK_IBUF),
        .O(Clk1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    Q_i_2__0
       (.I0(InBus[0]),
        .I1(InBus[1]),
        .I2(Q_reg_4),
        .I3(Q_reg_3),
        .I4(Q_reg_1),
        .I5(Q_reg_5),
        .O(JMPFlag));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    Q_i_2__2
       (.I0(Q_reg_4),
        .I1(B14_out),
        .I2(B12_out),
        .I3(Q_reg_5),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    Q_i_3__0
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(R7_OBUF[0]),
        .O(Q_reg_5));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_i_1__8_n_0),
        .Q(Q_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    ZERO_OBUF_inst_i_10
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(R7_OBUF[1]),
        .O(Q_reg_4));
  LUT4 #(
    .INIT(16'h4A00)) 
    ZERO_OBUF_inst_i_3
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(R7_OBUF[2]),
        .O(Q_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    ZERO_OBUF_inst_i_5
       (.I0(Q_reg_5),
        .I1(B12_out),
        .I2(B14_out),
        .I3(Q_reg_4),
        .O(Q_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    ZERO_OBUF_inst_i_7
       (.I0(Q_reg_0),
        .I1(Q_reg_9),
        .I2(Q_reg_8),
        .I3(R7_OBUF[3]),
        .O(Q_reg_3));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_4
   (R7_OBUF,
    ZERO,
    RESETPUSH_IBUF,
    O,
    Clk1_2,
    Q_reg_0);
  output [0:0]R7_OBUF;
  output ZERO;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_2;
  input [2:0]Q_reg_0;

  wire Clk1_2;
  wire [0:0]O;
  wire [2:0]Q_reg_0;
  wire [0:0]R7_OBUF;
  wire RESETPUSH_IBUF;
  wire ZERO;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_2),
        .CE(1'b1),
        .D(O),
        .Q(R7_OBUF),
        .R(RESETPUSH_IBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    ZERO_OBUF_inst_i_8
       (.I0(R7_OBUF),
        .I1(Q_reg_0[0]),
        .I2(Q_reg_0[2]),
        .I3(Q_reg_0[1]),
        .O(ZERO));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_5
   (R7_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_2);
  output [0:0]R7_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_2;

  wire Clk1_2;
  wire [0:0]O;
  wire [0:0]R7_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_2),
        .CE(1'b1),
        .D(O),
        .Q(R7_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_6
   (R7_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_2);
  output [0:0]R7_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1_2;

  wire Clk1_2;
  wire [0:0]O;
  wire [0:0]R7_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1_2),
        .CE(1'b1),
        .D(O),
        .Q(R7_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_7
   (R6_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R6_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R6_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R6_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_8
   (R6_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R6_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R6_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R6_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_9
   (R6_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [0:0]R6_OBUF;
  input RESETPUSH_IBUF;
  input [0:0]O;
  input Clk1;

  wire Clk1;
  wire [0:0]O;
  wire [0:0]R6_OBUF;
  wire RESETPUSH_IBUF;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    Q_reg
       (.C(Clk1),
        .CE(1'b1),
        .D(O),
        .Q(R6_OBUF),
        .R(RESETPUSH_IBUF));
endmodule

(* NotValidForBitStream *)
module NanoProcessor
   (CLK,
    RESETPUSH,
    ZERO,
    OVERFLOW,
    R0,
    R1,
    R2,
    R3,
    R4,
    R5,
    R6,
    R7);
  input CLK;
  input RESETPUSH;
  output ZERO;
  output OVERFLOW;
  output [3:0]R0;
  output [3:0]R1;
  output [3:0]R2;
  output [3:0]R3;
  output [3:0]R4;
  output [3:0]R5;
  output [3:0]R6;
  output [3:0]R7;

  wire \ASUnit0/B12_out ;
  wire \ASUnit0/B14_out ;
  wire \ASUnit0/B16_out ;
  wire \ASUnit0/B18_out ;
  wire \ASUnit0/C2 ;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]O;
  wire OVERFLOW;
  wire OVERFLOW_OBUF;
  wire PROGRAMCOUNTER_n_10;
  wire PROGRAMCOUNTER_n_15;
  wire PROGRAMCOUNTER_n_16;
  wire PROGRAMCOUNTER_n_7;
  wire [2:0]Q;
  wire [3:0]R0;
  wire [3:0]R1;
  wire [3:0]R1_OBUF;
  wire [3:0]R2;
  wire [3:0]R2_OBUF;
  wire [3:0]R3;
  wire [3:0]R3_OBUF;
  wire [3:0]R4;
  wire [3:0]R5;
  wire [3:0]R6;
  wire [3:0]R6_OBUF;
  wire [3:0]R7;
  wire [3:0]R7_OBUF;
  wire RESETPUSH;
  wire RESETPUSH_IBUF;
  wire \Reg1/Clk1 ;
  wire \Reg2/Clk1 ;
  wire \Reg3/Clk1 ;
  wire \Reg7/Clk1 ;
  wire ZERO;
  wire ZERO_OBUF;

initial begin
 $sdf_annotate("NanoProcessorsim_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF OVERFLOW_OBUF_inst
       (.I(OVERFLOW_OBUF),
        .O(OVERFLOW));
  Reg3bit PROGRAMCOUNTER
       (.B12_out(\ASUnit0/B12_out ),
        .B14_out(\ASUnit0/B14_out ),
        .B16_out(\ASUnit0/B16_out ),
        .B18_out(\ASUnit0/B18_out ),
        .C2(\ASUnit0/C2 ),
        .CLK_IBUF(CLK_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Clk1(\Reg1/Clk1 ),
        .Clk1_0(\Reg2/Clk1 ),
        .Clk1_1(\Reg3/Clk1 ),
        .Clk1_2(\Reg7/Clk1 ),
        .O(O),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q(Q),
        .Q_reg(PROGRAMCOUNTER_n_7),
        .Q_reg_0(PROGRAMCOUNTER_n_10),
        .Q_reg_1(PROGRAMCOUNTER_n_15),
        .Q_reg_2(PROGRAMCOUNTER_n_16),
        .R7_OBUF(R7_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  OBUF \R0_OBUF[0]_inst 
       (.I(1'b0),
        .O(R0[0]));
  OBUF \R0_OBUF[1]_inst 
       (.I(1'b0),
        .O(R0[1]));
  OBUF \R0_OBUF[2]_inst 
       (.I(1'b0),
        .O(R0[2]));
  OBUF \R0_OBUF[3]_inst 
       (.I(1'b0),
        .O(R0[3]));
  OBUF \R1_OBUF[0]_inst 
       (.I(R1_OBUF[0]),
        .O(R1[0]));
  OBUF \R1_OBUF[1]_inst 
       (.I(R1_OBUF[1]),
        .O(R1[1]));
  OBUF \R1_OBUF[2]_inst 
       (.I(R1_OBUF[2]),
        .O(R1[2]));
  OBUF \R1_OBUF[3]_inst 
       (.I(R1_OBUF[3]),
        .O(R1[3]));
  OBUF \R2_OBUF[0]_inst 
       (.I(R2_OBUF[0]),
        .O(R2[0]));
  OBUF \R2_OBUF[1]_inst 
       (.I(R2_OBUF[1]),
        .O(R2[1]));
  OBUF \R2_OBUF[2]_inst 
       (.I(R2_OBUF[2]),
        .O(R2[2]));
  OBUF \R2_OBUF[3]_inst 
       (.I(R2_OBUF[3]),
        .O(R2[3]));
  OBUF \R3_OBUF[0]_inst 
       (.I(R3_OBUF[0]),
        .O(R3[0]));
  OBUF \R3_OBUF[1]_inst 
       (.I(R3_OBUF[1]),
        .O(R3[1]));
  OBUF \R3_OBUF[2]_inst 
       (.I(R3_OBUF[2]),
        .O(R3[2]));
  OBUF \R3_OBUF[3]_inst 
       (.I(R3_OBUF[3]),
        .O(R3[3]));
  OBUF \R4_OBUF[0]_inst 
       (.I(R6_OBUF[0]),
        .O(R4[0]));
  OBUF \R4_OBUF[1]_inst 
       (.I(R6_OBUF[1]),
        .O(R4[1]));
  OBUF \R4_OBUF[2]_inst 
       (.I(R6_OBUF[2]),
        .O(R4[2]));
  OBUF \R4_OBUF[3]_inst 
       (.I(R6_OBUF[3]),
        .O(R4[3]));
  OBUF \R5_OBUF[0]_inst 
       (.I(R6_OBUF[0]),
        .O(R5[0]));
  OBUF \R5_OBUF[1]_inst 
       (.I(R6_OBUF[1]),
        .O(R5[1]));
  OBUF \R5_OBUF[2]_inst 
       (.I(R6_OBUF[2]),
        .O(R5[2]));
  OBUF \R5_OBUF[3]_inst 
       (.I(R6_OBUF[3]),
        .O(R5[3]));
  OBUF \R6_OBUF[0]_inst 
       (.I(R6_OBUF[0]),
        .O(R6[0]));
  OBUF \R6_OBUF[1]_inst 
       (.I(R6_OBUF[1]),
        .O(R6[1]));
  OBUF \R6_OBUF[2]_inst 
       (.I(R6_OBUF[2]),
        .O(R6[2]));
  OBUF \R6_OBUF[3]_inst 
       (.I(R6_OBUF[3]),
        .O(R6[3]));
  OBUF \R7_OBUF[0]_inst 
       (.I(R7_OBUF[0]),
        .O(R7[0]));
  OBUF \R7_OBUF[1]_inst 
       (.I(R7_OBUF[1]),
        .O(R7[1]));
  OBUF \R7_OBUF[2]_inst 
       (.I(R7_OBUF[2]),
        .O(R7[2]));
  OBUF \R7_OBUF[3]_inst 
       (.I(R7_OBUF[3]),
        .O(R7[3]));
  IBUF RESETPUSH_IBUF_inst
       (.I(RESETPUSH),
        .O(RESETPUSH_IBUF));
  RegisterBank Reg_Bank1
       (.B12_out(\ASUnit0/B12_out ),
        .B14_out(\ASUnit0/B14_out ),
        .B16_out(\ASUnit0/B16_out ),
        .B18_out(\ASUnit0/B18_out ),
        .C2(\ASUnit0/C2 ),
        .CLK_IBUF(CLK_IBUF),
        .Clk1(\Reg1/Clk1 ),
        .Clk1_0(\Reg2/Clk1 ),
        .Clk1_1(\Reg3/Clk1 ),
        .Clk1_2(\Reg7/Clk1 ),
        .O(O),
        .Q(Q),
        .Q_reg(PROGRAMCOUNTER_n_7),
        .Q_reg_0(PROGRAMCOUNTER_n_10),
        .Q_reg_1(PROGRAMCOUNTER_n_16),
        .Q_reg_2(PROGRAMCOUNTER_n_15),
        .R1_OBUF(R1_OBUF),
        .R2_OBUF(R2_OBUF),
        .R3_OBUF(R3_OBUF),
        .R6_OBUF(R6_OBUF),
        .R7_OBUF(R7_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF),
        .ZERO_OBUF(ZERO_OBUF));
  OBUF ZERO_OBUF_inst
       (.I(ZERO_OBUF),
        .O(ZERO));
endmodule

module Reg3bit
   (Q,
    O,
    Q_reg,
    C2,
    OVERFLOW_OBUF,
    Q_reg_0,
    Clk1,
    Clk1_0,
    Clk1_1,
    Clk1_2,
    Q_reg_1,
    Q_reg_2,
    CLK_IBUF_BUFG,
    B16_out,
    B18_out,
    RESETPUSH_IBUF,
    CLK_IBUF,
    B14_out,
    B12_out,
    R7_OBUF);
  output [2:0]Q;
  output [3:0]O;
  output Q_reg;
  output C2;
  output OVERFLOW_OBUF;
  output Q_reg_0;
  output Clk1;
  output Clk1_0;
  output Clk1_1;
  output Clk1_2;
  output Q_reg_1;
  output Q_reg_2;
  input CLK_IBUF_BUFG;
  input B16_out;
  input B18_out;
  input RESETPUSH_IBUF;
  input CLK_IBUF;
  input B14_out;
  input B12_out;
  input [3:0]R7_OBUF;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Clk1;
  wire Clk1_0;
  wire Clk1_1;
  wire Clk1_2;
  wire D_FF2_n_12;
  wire D_FF2_n_13;
  wire [11:10]InBus;
  wire LoadSelector;
  wire [3:0]O;
  wire OVERFLOW_OBUF;
  wire [2:0]Q;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire [3:0]R7_OBUF;
  wire RESETPUSH_IBUF;

  D_FF_23 D_FF0
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q_reg_0(Q[0]),
        .Q_reg_1(D_FF2_n_13));
  D_FF_24 D_FF1
       (.CLK_IBUF(CLK_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Clk1_0(Clk1_0),
        .Clk1_1(Clk1_1),
        .Clk1_2(Clk1_2),
        .InBus(InBus),
        .LoadSelector(LoadSelector),
        .Q_reg_0(Q[1]),
        .Q_reg_1(D_FF2_n_12),
        .Q_reg_2(Q[0]),
        .Q_reg_3(Q[2]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_25 D_FF2
       (.B12_out(B12_out),
        .B14_out(B14_out),
        .B16_out(B16_out),
        .B18_out(B18_out),
        .CLK_IBUF(CLK_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Clk1(Clk1),
        .InBus(InBus),
        .LoadSelector(LoadSelector),
        .O(O),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q_reg_0(Q[2]),
        .Q_reg_1(Q_reg),
        .Q_reg_2(C2),
        .Q_reg_3(Q_reg_0),
        .Q_reg_4(Q_reg_1),
        .Q_reg_5(Q_reg_2),
        .Q_reg_6(D_FF2_n_12),
        .Q_reg_7(D_FF2_n_13),
        .Q_reg_8(Q[1]),
        .Q_reg_9(Q[0]),
        .R7_OBUF(R7_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
endmodule

module Reg4bit
   (R1_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1);
  output [3:0]R1_OBUF;
  input RESETPUSH_IBUF;
  input [3:0]O;
  input Clk1;

  wire Clk1;
  wire [3:0]O;
  wire [3:0]R1_OBUF;
  wire RESETPUSH_IBUF;

  D_FF_19 D_FF_0
       (.Clk1(Clk1),
        .O(O[0]),
        .R1_OBUF(R1_OBUF[0]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_20 D_FF_1
       (.Clk1(Clk1),
        .O(O[1]),
        .R1_OBUF(R1_OBUF[1]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_21 D_FF_2
       (.Clk1(Clk1),
        .O(O[2]),
        .R1_OBUF(R1_OBUF[2]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_22 D_FF_3
       (.Clk1(Clk1),
        .O(O[3]),
        .R1_OBUF(R1_OBUF[3]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "Reg4bit" *) 
module Reg4bit_0
   (R2_OBUF,
    ZERO_OBUF,
    B16_out,
    B18_out,
    B12_out,
    B14_out,
    RESETPUSH_IBUF,
    O,
    Clk1_0,
    Q_reg,
    C2,
    Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    R1_OBUF,
    R3_OBUF,
    Q);
  output [3:0]R2_OBUF;
  output ZERO_OBUF;
  output B16_out;
  output B18_out;
  output B12_out;
  output B14_out;
  input RESETPUSH_IBUF;
  input [3:0]O;
  input Clk1_0;
  input Q_reg;
  input C2;
  input Q_reg_0;
  input Q_reg_1;
  input Q_reg_2;
  input Q_reg_3;
  input [3:0]R1_OBUF;
  input [3:0]R3_OBUF;
  input [2:0]Q;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire Clk1_0;
  wire [3:0]O;
  wire [2:0]Q;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire [3:0]R1_OBUF;
  wire [3:0]R2_OBUF;
  wire [3:0]R3_OBUF;
  wire RESETPUSH_IBUF;
  wire ZERO_OBUF;

  D_FF_15 D_FF_0
       (.B12_out(B12_out),
        .B14_out(B14_out),
        .B16_out(B16_out),
        .B18_out(B18_out),
        .C2(C2),
        .Clk1_0(Clk1_0),
        .O(O[0]),
        .Q(Q),
        .Q_reg_0(Q_reg),
        .Q_reg_1(Q_reg_0),
        .Q_reg_2(Q_reg_1),
        .Q_reg_3(Q_reg_2),
        .Q_reg_4(Q_reg_3),
        .R1_OBUF(R1_OBUF[0]),
        .R2_OBUF(R2_OBUF[0]),
        .R3_OBUF(R3_OBUF[0]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF),
        .ZERO_OBUF(ZERO_OBUF));
  D_FF_16 D_FF_1
       (.B14_out(B14_out),
        .Clk1_0(Clk1_0),
        .O(O[1]),
        .Q(Q),
        .R1_OBUF(R1_OBUF[1]),
        .R2_OBUF(R2_OBUF[1]),
        .R3_OBUF(R3_OBUF[1]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_17 D_FF_2
       (.B16_out(B16_out),
        .Clk1_0(Clk1_0),
        .O(O[2]),
        .Q(Q),
        .R1_OBUF(R1_OBUF[2]),
        .R2_OBUF(R2_OBUF[2]),
        .R3_OBUF(R3_OBUF[2]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_18 D_FF_3
       (.B18_out(B18_out),
        .Clk1_0(Clk1_0),
        .O(O[3]),
        .Q(Q),
        .R1_OBUF(R1_OBUF[3]),
        .R2_OBUF(R2_OBUF[3]),
        .R3_OBUF(R3_OBUF[3]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "Reg4bit" *) 
module Reg4bit_1
   (R3_OBUF,
    RESETPUSH_IBUF,
    O,
    Clk1_1);
  output [3:0]R3_OBUF;
  input RESETPUSH_IBUF;
  input [3:0]O;
  input Clk1_1;

  wire Clk1_1;
  wire [3:0]O;
  wire [3:0]R3_OBUF;
  wire RESETPUSH_IBUF;

  D_FF_11 D_FF_0
       (.Clk1_1(Clk1_1),
        .O(O[0]),
        .R3_OBUF(R3_OBUF[0]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_12 D_FF_1
       (.Clk1_1(Clk1_1),
        .O(O[1]),
        .R3_OBUF(R3_OBUF[1]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_13 D_FF_2
       (.Clk1_1(Clk1_1),
        .O(O[2]),
        .R3_OBUF(R3_OBUF[2]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_14 D_FF_3
       (.Clk1_1(Clk1_1),
        .O(O[3]),
        .R3_OBUF(R3_OBUF[3]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "Reg4bit" *) 
module Reg4bit_2
   (R6_OBUF,
    RESETPUSH_IBUF,
    O,
    CLK_IBUF);
  output [3:0]R6_OBUF;
  input RESETPUSH_IBUF;
  input [3:0]O;
  input CLK_IBUF;

  wire CLK_IBUF;
  wire Clk1;
  wire [3:0]O;
  wire [3:0]R6_OBUF;
  wire RESETPUSH_IBUF;

  D_FF_7 D_FF_0
       (.Clk1(Clk1),
        .O(O[0]),
        .R6_OBUF(R6_OBUF[0]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_8 D_FF_1
       (.Clk1(Clk1),
        .O(O[1]),
        .R6_OBUF(R6_OBUF[1]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_9 D_FF_2
       (.Clk1(Clk1),
        .O(O[2]),
        .R6_OBUF(R6_OBUF[2]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_10 D_FF_3
       (.CLK_IBUF(CLK_IBUF),
        .Clk1(Clk1),
        .O(O[3]),
        .R6_OBUF(R6_OBUF[3]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
endmodule

(* ORIG_REF_NAME = "Reg4bit" *) 
module Reg4bit_3
   (R7_OBUF,
    ZERO,
    RESETPUSH_IBUF,
    O,
    Clk1_2);
  output [3:0]R7_OBUF;
  output ZERO;
  input RESETPUSH_IBUF;
  input [3:0]O;
  input Clk1_2;

  wire Clk1_2;
  wire [3:0]O;
  wire [3:0]R7_OBUF;
  wire RESETPUSH_IBUF;
  wire ZERO;

  D_FF D_FF_0
       (.Clk1_2(Clk1_2),
        .O(O[0]),
        .R7_OBUF(R7_OBUF[0]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_4 D_FF_1
       (.Clk1_2(Clk1_2),
        .O(O[1]),
        .Q_reg_0({R7_OBUF[3:2],R7_OBUF[0]}),
        .R7_OBUF(R7_OBUF[1]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF),
        .ZERO(ZERO));
  D_FF_5 D_FF_2
       (.Clk1_2(Clk1_2),
        .O(O[2]),
        .R7_OBUF(R7_OBUF[2]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  D_FF_6 D_FF_3
       (.Clk1_2(Clk1_2),
        .O(O[3]),
        .R7_OBUF(R7_OBUF[3]),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
endmodule

module RegisterBank
   (R1_OBUF,
    R2_OBUF,
    R3_OBUF,
    R6_OBUF,
    R7_OBUF,
    ZERO_OBUF,
    B16_out,
    B18_out,
    B12_out,
    B14_out,
    RESETPUSH_IBUF,
    O,
    Clk1,
    Clk1_0,
    Clk1_1,
    Clk1_2,
    Q_reg,
    C2,
    Q_reg_0,
    CLK_IBUF,
    Q_reg_1,
    Q_reg_2,
    Q);
  output [3:0]R1_OBUF;
  output [3:0]R2_OBUF;
  output [3:0]R3_OBUF;
  output [3:0]R6_OBUF;
  output [3:0]R7_OBUF;
  output ZERO_OBUF;
  output B16_out;
  output B18_out;
  output B12_out;
  output B14_out;
  input RESETPUSH_IBUF;
  input [3:0]O;
  input Clk1;
  input Clk1_0;
  input Clk1_1;
  input Clk1_2;
  input Q_reg;
  input C2;
  input Q_reg_0;
  input CLK_IBUF;
  input Q_reg_1;
  input Q_reg_2;
  input [2:0]Q;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire CLK_IBUF;
  wire Clk1;
  wire Clk1_0;
  wire Clk1_1;
  wire Clk1_2;
  wire [3:0]O;
  wire [2:0]Q;
  wire Q_reg;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire [3:0]R1_OBUF;
  wire [3:0]R2_OBUF;
  wire [3:0]R3_OBUF;
  wire [3:0]R6_OBUF;
  wire [3:0]R7_OBUF;
  wire RESETPUSH_IBUF;
  wire Reg7_n_4;
  wire ZERO_OBUF;

  Reg4bit Reg1
       (.Clk1(Clk1),
        .O(O),
        .R1_OBUF(R1_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  Reg4bit_0 Reg2
       (.B12_out(B12_out),
        .B14_out(B14_out),
        .B16_out(B16_out),
        .B18_out(B18_out),
        .C2(C2),
        .Clk1_0(Clk1_0),
        .O(O),
        .Q(Q),
        .Q_reg(Q_reg),
        .Q_reg_0(Q_reg_0),
        .Q_reg_1(Reg7_n_4),
        .Q_reg_2(Q_reg_1),
        .Q_reg_3(Q_reg_2),
        .R1_OBUF(R1_OBUF),
        .R2_OBUF(R2_OBUF),
        .R3_OBUF(R3_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF),
        .ZERO_OBUF(ZERO_OBUF));
  Reg4bit_1 Reg3
       (.Clk1_1(Clk1_1),
        .O(O),
        .R3_OBUF(R3_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  Reg4bit_2 Reg4
       (.CLK_IBUF(CLK_IBUF),
        .O(O),
        .R6_OBUF(R6_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF));
  Reg4bit_3 Reg7
       (.Clk1_2(Clk1_2),
        .O(O),
        .R7_OBUF(R7_OBUF),
        .RESETPUSH_IBUF(RESETPUSH_IBUF),
        .ZERO(Reg7_n_4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
