// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jul 29 08:49:51 2022
// Host        : LAPTOP-HCMN7SBA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Asus/Desktop/NANO_UPLOADED/NanoProcessor.sim/sim_1/synth/func/xsim/System_sim_func_synth.v
// Design      : System
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module NanoProcessor
   (Q,
    Seg7_OBUF,
    ZERO_OBUF,
    OVERFLOW_OBUF,
    ResetPush_IBUF,
    CLK);
  output [3:0]Q;
  output [6:0]Seg7_OBUF;
  output ZERO_OBUF;
  output OVERFLOW_OBUF;
  input ResetPush_IBUF;
  input CLK;

  wire \ASUnit0/B12_out ;
  wire \ASUnit0/B14_out ;
  wire \ASUnit0/B16_out ;
  wire \ASUnit0/B18_out ;
  wire \ASUnit0/C2 ;
  wire CLK;
  wire [3:0]O;
  wire OVERFLOW_OBUF;
  wire PROGRAMCOUNTER_n_10;
  wire PROGRAMCOUNTER_n_13;
  wire PROGRAMCOUNTER_n_14;
  wire PROGRAMCOUNTER_n_15;
  wire PROGRAMCOUNTER_n_16;
  wire PROGRAMCOUNTER_n_4;
  wire PROGRAMCOUNTER_n_5;
  wire PROGRAMCOUNTER_n_6;
  wire PROGRAMCOUNTER_n_7;
  wire PROGRAMCOUNTER_n_8;
  wire PROGRAMCOUNTER_n_9;
  wire [3:0]Q;
  wire ResetPush_IBUF;
  wire [6:0]Seg7_OBUF;
  wire ZERO_OBUF;

  REG_3_BIT PROGRAMCOUNTER
       (.B12_out(\ASUnit0/B12_out ),
        .B14_out(\ASUnit0/B14_out ),
        .B16_out(\ASUnit0/B16_out ),
        .B18_out(\ASUnit0/B18_out ),
        .C2(\ASUnit0/C2 ),
        .CLK(CLK),
        .D(O),
        .E(PROGRAMCOUNTER_n_13),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q(Q),
        .\Q_reg[0]_0 (PROGRAMCOUNTER_n_4),
        .\Q_reg[0]_1 (PROGRAMCOUNTER_n_5),
        .\Q_reg[0]_2 (PROGRAMCOUNTER_n_6),
        .\Q_reg[0]_3 (PROGRAMCOUNTER_n_7),
        .\Q_reg[0]_4 (PROGRAMCOUNTER_n_14),
        .\Q_reg[0]_5 (PROGRAMCOUNTER_n_15),
        .\Q_reg[0]_6 (PROGRAMCOUNTER_n_16),
        .\Q_reg[2]_0 (PROGRAMCOUNTER_n_8),
        .\Q_reg[2]_1 (PROGRAMCOUNTER_n_10),
        .\Q_reg[3] (PROGRAMCOUNTER_n_9),
        .ResetPush_IBUF(ResetPush_IBUF));
  RegisterBank Reg_Bank1
       (.B12_out(\ASUnit0/B12_out ),
        .B14_out(\ASUnit0/B14_out ),
        .B16_out(\ASUnit0/B16_out ),
        .B18_out(\ASUnit0/B18_out ),
        .C2(\ASUnit0/C2 ),
        .CLK(CLK),
        .D(O),
        .E(PROGRAMCOUNTER_n_16),
        .Q(Q),
        .\Q_reg[0] (PROGRAMCOUNTER_n_6),
        .\Q_reg[1] (PROGRAMCOUNTER_n_5),
        .\Q_reg[1]_0 (PROGRAMCOUNTER_n_13),
        .\Q_reg[1]_1 (PROGRAMCOUNTER_n_14),
        .\Q_reg[1]_2 (PROGRAMCOUNTER_n_15),
        .\Q_reg[2] (PROGRAMCOUNTER_n_7),
        .\Q_reg[2]_0 (PROGRAMCOUNTER_n_10),
        .\Q_reg[2]_1 (PROGRAMCOUNTER_n_9),
        .\Q_reg[2]_2 (PROGRAMCOUNTER_n_4),
        .\Q_reg[2]_3 (PROGRAMCOUNTER_n_8),
        .ResetPush_IBUF(ResetPush_IBUF),
        .Seg7_OBUF(Seg7_OBUF),
        .ZERO_OBUF(ZERO_OBUF));
endmodule

module REG_3_BIT
   (D,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    \Q_reg[2]_0 ,
    \Q_reg[3] ,
    \Q_reg[2]_1 ,
    C2,
    OVERFLOW_OBUF,
    E,
    \Q_reg[0]_4 ,
    \Q_reg[0]_5 ,
    \Q_reg[0]_6 ,
    B12_out,
    Q,
    B16_out,
    B18_out,
    B14_out,
    ResetPush_IBUF,
    CLK);
  output [3:0]D;
  output \Q_reg[0]_0 ;
  output \Q_reg[0]_1 ;
  output \Q_reg[0]_2 ;
  output \Q_reg[0]_3 ;
  output \Q_reg[2]_0 ;
  output \Q_reg[3] ;
  output \Q_reg[2]_1 ;
  output C2;
  output OVERFLOW_OBUF;
  output [0:0]E;
  output [0:0]\Q_reg[0]_4 ;
  output [0:0]\Q_reg[0]_5 ;
  output [0:0]\Q_reg[0]_6 ;
  input B12_out;
  input [3:0]Q;
  input B16_out;
  input B18_out;
  input B14_out;
  input ResetPush_IBUF;
  input CLK;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire JMPFlag;
  wire LoadSelector;
  wire OVERFLOW_OBUF;
  wire [3:0]Q;
  wire \Q[0]_i_1__0_n_0 ;
  wire \Q[1]_i_1__0_n_0 ;
  wire \Q[2]_i_1__0_n_0 ;
  wire \Q[2]_i_3_n_0 ;
  wire \Q[2]_i_4_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[0]_2 ;
  wire \Q_reg[0]_3 ;
  wire [0:0]\Q_reg[0]_4 ;
  wire [0:0]\Q_reg[0]_5 ;
  wire [0:0]\Q_reg[0]_6 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[3] ;
  wire ResetPush_IBUF;
  wire [1:1]S;

  LUT5 #(
    .INIT(32'hFFE8E800)) 
    OVERFLOW_OBUF_inst_i_1
       (.I0(\Q_reg[2]_1 ),
        .I1(B16_out),
        .I2(C2),
        .I3(B18_out),
        .I4(\Q_reg[3] ),
        .O(OVERFLOW_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    OVERFLOW_OBUF_inst_i_2
       (.I0(\Q_reg[0]_3 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[2]),
        .O(\Q_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    OVERFLOW_OBUF_inst_i_4
       (.I0(\Q_reg[0]_0 ),
        .I1(B12_out),
        .I2(B14_out),
        .I3(\Q_reg[2]_0 ),
        .O(C2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    OVERFLOW_OBUF_inst_i_6
       (.I0(\Q_reg[0]_3 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[3]),
        .O(\Q_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    OVERFLOW_OBUF_inst_i_8
       (.I0(\Q_reg[0]_3 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[1]),
        .O(\Q_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h666660FF)) 
    \Q[0]_i_1 
       (.I0(\Q_reg[0]_0 ),
        .I1(B12_out),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[0]_2 ),
        .I4(\Q_reg[0]_3 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00003391)) 
    \Q[0]_i_1__0 
       (.I0(\Q_reg[0]_3 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_1 ),
        .I3(JMPFlag),
        .I4(ResetPush_IBUF),
        .O(\Q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4A00)) 
    \Q[0]_i_2 
       (.I0(\Q_reg[0]_3 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[0]),
        .O(\Q_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAAB3)) 
    \Q[1]_i_1 
       (.I0(S),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[0]_2 ),
        .I3(\Q_reg[0]_3 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00006863)) 
    \Q[1]_i_1__0 
       (.I0(\Q_reg[0]_2 ),
        .I1(\Q_reg[0]_1 ),
        .I2(JMPFlag),
        .I3(\Q_reg[0]_3 ),
        .I4(ResetPush_IBUF),
        .O(\Q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \Q[1]_i_2 
       (.I0(\Q_reg[2]_0 ),
        .I1(B14_out),
        .I2(B12_out),
        .I3(\Q_reg[0]_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h9696969696000000)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[2]_1 ),
        .I1(B16_out),
        .I2(C2),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[0]_2 ),
        .I5(\Q_reg[0]_3 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00007880)) 
    \Q[2]_i_1__0 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .I3(JMPFlag),
        .I4(ResetPush_IBUF),
        .O(\Q[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \Q[2]_i_2 
       (.I0(\Q[2]_i_3_n_0 ),
        .I1(\Q[2]_i_4_n_0 ),
        .I2(\Q_reg[2]_0 ),
        .I3(\Q_reg[3] ),
        .I4(\Q_reg[2]_1 ),
        .I5(\Q_reg[0]_0 ),
        .O(JMPFlag));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Q[2]_i_3 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_3 ),
        .I2(\Q_reg[0]_2 ),
        .O(\Q[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \Q[2]_i_4 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .O(\Q[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \Q[3]_i_1 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Q[3]_i_1__0 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .O(\Q_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[3]_i_1__1 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .O(\Q_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \Q[3]_i_1__2 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .O(\Q_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hA880022A022AA880)) 
    \Q[3]_i_2 
       (.I0(LoadSelector),
        .I1(\Q_reg[2]_1 ),
        .I2(B16_out),
        .I3(C2),
        .I4(B18_out),
        .I5(\Q_reg[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \Q[3]_i_3 
       (.I0(\Q_reg[0]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[0]_3 ),
        .O(LoadSelector));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q[0]_i_1__0_n_0 ),
        .Q(\Q_reg[0]_2 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q[1]_i_1__0_n_0 ),
        .Q(\Q_reg[0]_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q[2]_i_1__0_n_0 ),
        .Q(\Q_reg[0]_3 ),
        .R(1'b0));
endmodule

module REG_4_BIT
   (Q,
    ResetPush_IBUF,
    \Q_reg[1]_0 ,
    D,
    CLK);
  output [3:0]Q;
  input ResetPush_IBUF;
  input [0:0]\Q_reg[1]_0 ;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]\Q_reg[1]_0 ;
  wire ResetPush_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(ResetPush_IBUF));
endmodule

(* ORIG_REF_NAME = "REG_4_BIT" *) 
module REG_4_BIT_0
   (B12_out,
    B14_out,
    B16_out,
    B18_out,
    ZERO_OBUF,
    Q,
    \Q_reg[3]_0 ,
    \Q_reg[1]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[2]_1 ,
    C2,
    \Q_reg[2]_2 ,
    \Q_reg[1]_1 ,
    \Q_reg[2]_3 ,
    \Q_reg[2]_4 ,
    ResetPush_IBUF,
    \Q_reg[1]_2 ,
    D,
    CLK);
  output B12_out;
  output B14_out;
  output B16_out;
  output B18_out;
  output ZERO_OBUF;
  input [3:0]Q;
  input [3:0]\Q_reg[3]_0 ;
  input \Q_reg[1]_0 ;
  input \Q_reg[2]_0 ;
  input \Q_reg[0]_0 ;
  input \Q_reg[2]_1 ;
  input C2;
  input \Q_reg[2]_2 ;
  input \Q_reg[1]_1 ;
  input \Q_reg[2]_3 ;
  input \Q_reg[2]_4 ;
  input ResetPush_IBUF;
  input [0:0]\Q_reg[1]_2 ;
  input [3:0]D;
  input CLK;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire [0:0]\Q_reg[1]_2 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[2]_2 ;
  wire \Q_reg[2]_3 ;
  wire \Q_reg[2]_4 ;
  wire [3:0]\Q_reg[3]_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire ResetPush_IBUF;
  wire ZERO_OBUF;
  wire ZERO_OBUF_inst_i_2_n_0;

  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    OVERFLOW_OBUF_inst_i_3
       (.I0(\Q_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\Q_reg[3]_0 [2]),
        .I3(\Q_reg[1]_0 ),
        .I4(\Q_reg[2]_0 ),
        .I5(\Q_reg[0]_0 ),
        .O(B16_out));
  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    OVERFLOW_OBUF_inst_i_5
       (.I0(\Q_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\Q_reg[3]_0 [3]),
        .I3(\Q_reg[1]_0 ),
        .I4(\Q_reg[2]_0 ),
        .I5(\Q_reg[0]_0 ),
        .O(B18_out));
  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    OVERFLOW_OBUF_inst_i_7
       (.I0(\Q_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(\Q_reg[3]_0 [1]),
        .I3(\Q_reg[1]_0 ),
        .I4(\Q_reg[2]_0 ),
        .I5(\Q_reg[0]_0 ),
        .O(B14_out));
  LUT6 #(
    .INIT(64'h00F0CC0000AA0000)) 
    \Q[0]_i_3 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\Q_reg[3]_0 [0]),
        .I3(\Q_reg[1]_0 ),
        .I4(\Q_reg[2]_0 ),
        .I5(\Q_reg[0]_0 ),
        .O(B12_out));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[1]_2 ),
        .D(D[0]),
        .Q(\Q_reg_n_0_[0] ),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[1]_2 ),
        .D(D[1]),
        .Q(\Q_reg_n_0_[1] ),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[1]_2 ),
        .D(D[2]),
        .Q(\Q_reg_n_0_[2] ),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[1]_2 ),
        .D(D[3]),
        .Q(\Q_reg_n_0_[3] ),
        .R(ResetPush_IBUF));
  LUT6 #(
    .INIT(64'h0002288028800002)) 
    ZERO_OBUF_inst_i_1
       (.I0(ZERO_OBUF_inst_i_2_n_0),
        .I1(\Q_reg[2]_1 ),
        .I2(B16_out),
        .I3(C2),
        .I4(B18_out),
        .I5(\Q_reg[2]_2 ),
        .O(ZERO_OBUF));
  LUT5 #(
    .INIT(32'h02808002)) 
    ZERO_OBUF_inst_i_2
       (.I0(\Q_reg[1]_1 ),
        .I1(\Q_reg[2]_3 ),
        .I2(B12_out),
        .I3(B14_out),
        .I4(\Q_reg[2]_4 ),
        .O(ZERO_OBUF_inst_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "REG_4_BIT" *) 
module REG_4_BIT_1
   (Q,
    ResetPush_IBUF,
    \Q_reg[1]_0 ,
    D,
    CLK);
  output [3:0]Q;
  input ResetPush_IBUF;
  input [0:0]\Q_reg[1]_0 ;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]\Q_reg[1]_0 ;
  wire ResetPush_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(\Q_reg[1]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(ResetPush_IBUF));
endmodule

(* ORIG_REF_NAME = "REG_4_BIT" *) 
module REG_4_BIT_2
   (ZERO,
    Q,
    Seg7_OBUF,
    ResetPush_IBUF,
    E,
    D,
    CLK);
  output ZERO;
  output [3:0]Q;
  output [6:0]Seg7_OBUF;
  input ResetPush_IBUF;
  input [0:0]E;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire ResetPush_IBUF;
  wire [6:0]Seg7_OBUF;
  wire ZERO;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(ResetPush_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(ResetPush_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4018)) 
    \Seg7_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(Seg7_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \Seg7_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(Seg7_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \Seg7_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(Seg7_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \Seg7_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(Seg7_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \Seg7_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(Seg7_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    \Seg7_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(Seg7_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0895)) 
    \Seg7_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(Seg7_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ZERO_OBUF_inst_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(ZERO));
endmodule

module RegisterBank
   (B12_out,
    B14_out,
    B16_out,
    B18_out,
    ZERO_OBUF,
    Q,
    Seg7_OBUF,
    \Q_reg[1] ,
    \Q_reg[2] ,
    \Q_reg[0] ,
    \Q_reg[2]_0 ,
    C2,
    \Q_reg[2]_1 ,
    \Q_reg[2]_2 ,
    \Q_reg[2]_3 ,
    ResetPush_IBUF,
    E,
    D,
    CLK,
    \Q_reg[1]_0 ,
    \Q_reg[1]_1 ,
    \Q_reg[1]_2 );
  output B12_out;
  output B14_out;
  output B16_out;
  output B18_out;
  output ZERO_OBUF;
  output [3:0]Q;
  output [6:0]Seg7_OBUF;
  input \Q_reg[1] ;
  input \Q_reg[2] ;
  input \Q_reg[0] ;
  input \Q_reg[2]_0 ;
  input C2;
  input \Q_reg[2]_1 ;
  input \Q_reg[2]_2 ;
  input \Q_reg[2]_3 ;
  input ResetPush_IBUF;
  input [0:0]E;
  input [3:0]D;
  input CLK;
  input [0:0]\Q_reg[1]_0 ;
  input [0:0]\Q_reg[1]_1 ;
  input [0:0]\Q_reg[1]_2 ;

  wire B12_out;
  wire B14_out;
  wire B16_out;
  wire B18_out;
  wire C2;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[1] ;
  wire [0:0]\Q_reg[1]_0 ;
  wire [0:0]\Q_reg[1]_1 ;
  wire [0:0]\Q_reg[1]_2 ;
  wire \Q_reg[2] ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[2]_2 ;
  wire \Q_reg[2]_3 ;
  wire Reg1_n_0;
  wire Reg1_n_1;
  wire Reg1_n_2;
  wire Reg1_n_3;
  wire Reg3_n_0;
  wire Reg3_n_1;
  wire Reg3_n_2;
  wire Reg3_n_3;
  wire Reg7_n_0;
  wire ResetPush_IBUF;
  wire [6:0]Seg7_OBUF;
  wire ZERO_OBUF;

  REG_4_BIT Reg1
       (.CLK(CLK),
        .D(D),
        .Q({Reg1_n_0,Reg1_n_1,Reg1_n_2,Reg1_n_3}),
        .\Q_reg[1]_0 (\Q_reg[1]_0 ),
        .ResetPush_IBUF(ResetPush_IBUF));
  REG_4_BIT_0 Reg2
       (.B12_out(B12_out),
        .B14_out(B14_out),
        .B16_out(B16_out),
        .B18_out(B18_out),
        .C2(C2),
        .CLK(CLK),
        .D(D),
        .Q({Reg1_n_0,Reg1_n_1,Reg1_n_2,Reg1_n_3}),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[1]_1 (Reg7_n_0),
        .\Q_reg[1]_2 (\Q_reg[1]_1 ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .\Q_reg[2]_1 (\Q_reg[2]_0 ),
        .\Q_reg[2]_2 (\Q_reg[2]_1 ),
        .\Q_reg[2]_3 (\Q_reg[2]_2 ),
        .\Q_reg[2]_4 (\Q_reg[2]_3 ),
        .\Q_reg[3]_0 ({Reg3_n_0,Reg3_n_1,Reg3_n_2,Reg3_n_3}),
        .ResetPush_IBUF(ResetPush_IBUF),
        .ZERO_OBUF(ZERO_OBUF));
  REG_4_BIT_1 Reg3
       (.CLK(CLK),
        .D(D),
        .Q({Reg3_n_0,Reg3_n_1,Reg3_n_2,Reg3_n_3}),
        .\Q_reg[1]_0 (\Q_reg[1]_2 ),
        .ResetPush_IBUF(ResetPush_IBUF));
  REG_4_BIT_2 Reg7
       (.CLK(CLK),
        .D(D),
        .E(E),
        .Q(Q),
        .ResetPush_IBUF(ResetPush_IBUF),
        .Seg7_OBUF(Seg7_OBUF),
        .ZERO(Reg7_n_0));
endmodule

module SlowClock
   (CLK,
    Clk_IBUF_BUFG);
  output CLK;
  input Clk_IBUF_BUFG;

  wire CLK;
  wire Clk_IBUF_BUFG;
  wire [31:0]Count;
  wire Count0_carry__0_n_0;
  wire Count0_carry__0_n_1;
  wire Count0_carry__0_n_2;
  wire Count0_carry__0_n_3;
  wire Count0_carry__1_n_0;
  wire Count0_carry__1_n_1;
  wire Count0_carry__1_n_2;
  wire Count0_carry__1_n_3;
  wire Count0_carry__2_n_0;
  wire Count0_carry__2_n_1;
  wire Count0_carry__2_n_2;
  wire Count0_carry__2_n_3;
  wire Count0_carry__3_n_0;
  wire Count0_carry__3_n_1;
  wire Count0_carry__3_n_2;
  wire Count0_carry__3_n_3;
  wire Count0_carry__4_n_0;
  wire Count0_carry__4_n_1;
  wire Count0_carry__4_n_2;
  wire Count0_carry__4_n_3;
  wire Count0_carry__5_n_0;
  wire Count0_carry__5_n_1;
  wire Count0_carry__5_n_2;
  wire Count0_carry__5_n_3;
  wire Count0_carry__6_n_2;
  wire Count0_carry__6_n_3;
  wire Count0_carry_n_0;
  wire Count0_carry_n_1;
  wire Count0_carry_n_2;
  wire Count0_carry_n_3;
  wire \Count[31]_i_2_n_0 ;
  wire \Count[31]_i_3_n_0 ;
  wire \Count[31]_i_4_n_0 ;
  wire \Count[31]_i_5_n_0 ;
  wire \Count[31]_i_6_n_0 ;
  wire \Count[31]_i_7_n_0 ;
  wire \Count[31]_i_8_n_0 ;
  wire \Count[31]_i_9_n_0 ;
  wire [0:0]Count_0;
  wire clockStatus;
  wire clockStatus_i_1_n_0;
  wire [31:1]data0;
  wire [3:2]NLW_Count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_Count0_carry__6_O_UNCONNECTED;

  CARRY4 Count0_carry
       (.CI(1'b0),
        .CO({Count0_carry_n_0,Count0_carry_n_1,Count0_carry_n_2,Count0_carry_n_3}),
        .CYINIT(Count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Count[4:1]));
  CARRY4 Count0_carry__0
       (.CI(Count0_carry_n_0),
        .CO({Count0_carry__0_n_0,Count0_carry__0_n_1,Count0_carry__0_n_2,Count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Count[8:5]));
  CARRY4 Count0_carry__1
       (.CI(Count0_carry__0_n_0),
        .CO({Count0_carry__1_n_0,Count0_carry__1_n_1,Count0_carry__1_n_2,Count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Count[12:9]));
  CARRY4 Count0_carry__2
       (.CI(Count0_carry__1_n_0),
        .CO({Count0_carry__2_n_0,Count0_carry__2_n_1,Count0_carry__2_n_2,Count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(Count[16:13]));
  CARRY4 Count0_carry__3
       (.CI(Count0_carry__2_n_0),
        .CO({Count0_carry__3_n_0,Count0_carry__3_n_1,Count0_carry__3_n_2,Count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(Count[20:17]));
  CARRY4 Count0_carry__4
       (.CI(Count0_carry__3_n_0),
        .CO({Count0_carry__4_n_0,Count0_carry__4_n_1,Count0_carry__4_n_2,Count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(Count[24:21]));
  CARRY4 Count0_carry__5
       (.CI(Count0_carry__4_n_0),
        .CO({Count0_carry__5_n_0,Count0_carry__5_n_1,Count0_carry__5_n_2,Count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(Count[28:25]));
  CARRY4 Count0_carry__6
       (.CI(Count0_carry__5_n_0),
        .CO({NLW_Count0_carry__6_CO_UNCONNECTED[3:2],Count0_carry__6_n_2,Count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Count0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,Count[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Count[0]_i_1 
       (.I0(Count[0]),
        .O(Count_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \Count[31]_i_1 
       (.I0(\Count[31]_i_2_n_0 ),
        .I1(\Count[31]_i_3_n_0 ),
        .I2(\Count[31]_i_4_n_0 ),
        .I3(\Count[31]_i_5_n_0 ),
        .O(clockStatus));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Count[31]_i_2 
       (.I0(Count[10]),
        .I1(Count[11]),
        .I2(Count[8]),
        .I3(Count[9]),
        .I4(\Count[31]_i_6_n_0 ),
        .O(\Count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \Count[31]_i_3 
       (.I0(Count[3]),
        .I1(Count[2]),
        .I2(Count[0]),
        .I3(Count[1]),
        .I4(\Count[31]_i_7_n_0 ),
        .O(\Count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Count[31]_i_4 
       (.I0(Count[26]),
        .I1(Count[27]),
        .I2(Count[24]),
        .I3(Count[25]),
        .I4(\Count[31]_i_8_n_0 ),
        .O(\Count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Count[31]_i_5 
       (.I0(Count[18]),
        .I1(Count[19]),
        .I2(Count[16]),
        .I3(Count[17]),
        .I4(\Count[31]_i_9_n_0 ),
        .O(\Count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Count[31]_i_6 
       (.I0(Count[13]),
        .I1(Count[12]),
        .I2(Count[15]),
        .I3(Count[14]),
        .O(\Count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Count[31]_i_7 
       (.I0(Count[5]),
        .I1(Count[4]),
        .I2(Count[7]),
        .I3(Count[6]),
        .O(\Count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Count[31]_i_8 
       (.I0(Count[29]),
        .I1(Count[28]),
        .I2(Count[31]),
        .I3(Count[30]),
        .O(\Count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Count[31]_i_9 
       (.I0(Count[21]),
        .I1(Count[20]),
        .I2(Count[23]),
        .I3(Count[22]),
        .O(\Count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \Count_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Count_0),
        .Q(Count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(Count[10]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(Count[11]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(Count[12]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(Count[13]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(Count[14]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(Count[15]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(Count[16]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(Count[17]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(Count[18]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(Count[19]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(Count[1]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(Count[20]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(Count[21]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(Count[22]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(Count[23]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[24]),
        .Q(Count[24]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[25]),
        .Q(Count[25]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[26]),
        .Q(Count[26]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[27]),
        .Q(Count[27]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[28]),
        .Q(Count[28]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[29]),
        .Q(Count[29]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(Count[2]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[30]),
        .Q(Count[30]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[31]),
        .Q(Count[31]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(Count[3]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(Count[4]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(Count[5]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(Count[6]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(Count[7]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(Count[8]),
        .R(clockStatus));
  FDRE #(
    .INIT(1'b0)) 
    \Count_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(Count[9]),
        .R(clockStatus));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clockStatus_i_1
       (.I0(\Count[31]_i_2_n_0 ),
        .I1(\Count[31]_i_3_n_0 ),
        .I2(\Count[31]_i_4_n_0 ),
        .I3(\Count[31]_i_5_n_0 ),
        .I4(CLK),
        .O(clockStatus_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clockStatus_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clockStatus_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module System
   (Clk,
    ResetPush,
    realclk,
    Seg7,
    Reg7,
    OVERFLOW,
    Anode,
    ZERO);
  input Clk;
  input ResetPush;
  output realclk;
  output [6:0]Seg7;
  output [3:0]Reg7;
  output OVERFLOW;
  output [3:0]Anode;
  output ZERO;

  wire [3:0]Anode;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire OVERFLOW;
  wire OVERFLOW_OBUF;
  wire [3:0]Reg7;
  wire [3:0]Reg7_OBUF;
  wire ResetPush;
  wire ResetPush_IBUF;
  wire [6:0]Seg7;
  wire [6:0]Seg7_OBUF;
  wire ZERO;
  wire ZERO_OBUF;
  wire realclk;
  wire realclk_OBUF;

  OBUF \Anode_OBUF[0]_inst 
       (.I(1'b0),
        .O(Anode[0]));
  OBUF \Anode_OBUF[1]_inst 
       (.I(1'b1),
        .O(Anode[1]));
  OBUF \Anode_OBUF[2]_inst 
       (.I(1'b1),
        .O(Anode[2]));
  OBUF \Anode_OBUF[3]_inst 
       (.I(1'b1),
        .O(Anode[3]));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  OBUF OVERFLOW_OBUF_inst
       (.I(OVERFLOW_OBUF),
        .O(OVERFLOW));
  OBUF \Reg7_OBUF[0]_inst 
       (.I(Reg7_OBUF[0]),
        .O(Reg7[0]));
  OBUF \Reg7_OBUF[1]_inst 
       (.I(Reg7_OBUF[1]),
        .O(Reg7[1]));
  OBUF \Reg7_OBUF[2]_inst 
       (.I(Reg7_OBUF[2]),
        .O(Reg7[2]));
  OBUF \Reg7_OBUF[3]_inst 
       (.I(Reg7_OBUF[3]),
        .O(Reg7[3]));
  IBUF ResetPush_IBUF_inst
       (.I(ResetPush),
        .O(ResetPush_IBUF));
  OBUF \Seg7_OBUF[0]_inst 
       (.I(Seg7_OBUF[0]),
        .O(Seg7[0]));
  OBUF \Seg7_OBUF[1]_inst 
       (.I(Seg7_OBUF[1]),
        .O(Seg7[1]));
  OBUF \Seg7_OBUF[2]_inst 
       (.I(Seg7_OBUF[2]),
        .O(Seg7[2]));
  OBUF \Seg7_OBUF[3]_inst 
       (.I(Seg7_OBUF[3]),
        .O(Seg7[3]));
  OBUF \Seg7_OBUF[4]_inst 
       (.I(Seg7_OBUF[4]),
        .O(Seg7[4]));
  OBUF \Seg7_OBUF[5]_inst 
       (.I(Seg7_OBUF[5]),
        .O(Seg7[5]));
  OBUF \Seg7_OBUF[6]_inst 
       (.I(Seg7_OBUF[6]),
        .O(Seg7[6]));
  SlowClock SlowClock0
       (.CLK(realclk_OBUF),
        .Clk_IBUF_BUFG(Clk_IBUF_BUFG));
  OBUF ZERO_OBUF_inst
       (.I(ZERO_OBUF),
        .O(ZERO));
  NanoProcessor processor
       (.CLK(realclk_OBUF),
        .OVERFLOW_OBUF(OVERFLOW_OBUF),
        .Q(Reg7_OBUF),
        .ResetPush_IBUF(ResetPush_IBUF),
        .Seg7_OBUF(Seg7_OBUF),
        .ZERO_OBUF(ZERO_OBUF));
  OBUF realclk_OBUF_inst
       (.I(realclk_OBUF),
        .O(realclk));
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
