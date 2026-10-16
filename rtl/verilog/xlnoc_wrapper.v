//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Thu Oct 15 18:32:34 2026
//Host        : vlsi-vivado running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target xlnoc_wrapper.bd
//Design      : xlnoc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xlnoc_wrapper
   (nps_0_MNPP_S_credit_rdy,
    nps_0_MNPP_S_credit_return,
    nps_0_MNPP_S_flit,
    nps_0_MNPP_S_valid,
    nps_0_SNPP_S_credit_rdy,
    nps_0_SNPP_S_credit_return,
    nps_0_SNPP_S_flit,
    nps_0_SNPP_S_valid,
    nps_2_MNPP_S_credit_rdy,
    nps_2_MNPP_S_credit_return,
    nps_2_MNPP_S_flit,
    nps_2_MNPP_S_valid,
    nps_2_SNPP_S_credit_rdy,
    nps_2_SNPP_S_credit_return,
    nps_2_SNPP_S_flit,
    nps_2_SNPP_S_valid,
    nps_3_MNPP_S_credit_rdy,
    nps_3_MNPP_S_credit_return,
    nps_3_MNPP_S_flit,
    nps_3_MNPP_S_valid,
    nps_3_SNPP_S_credit_rdy,
    nps_3_SNPP_S_credit_return,
    nps_3_SNPP_S_flit,
    nps_3_SNPP_S_valid,
    nps_4_MNPP_S_credit_rdy,
    nps_4_MNPP_S_credit_return,
    nps_4_MNPP_S_flit,
    nps_4_MNPP_S_valid,
    nps_4_SNPP_S_credit_rdy,
    nps_4_SNPP_S_credit_return,
    nps_4_SNPP_S_flit,
    nps_4_SNPP_S_valid,
    nps_6_MNPP_S_credit_rdy,
    nps_6_MNPP_S_credit_return,
    nps_6_MNPP_S_flit,
    nps_6_MNPP_S_valid,
    nps_6_SNPP_S_credit_rdy,
    nps_6_SNPP_S_credit_return,
    nps_6_SNPP_S_flit,
    nps_6_SNPP_S_valid,
    nps_7_MNPP_S_credit_rdy,
    nps_7_MNPP_S_credit_return,
    nps_7_MNPP_S_flit,
    nps_7_MNPP_S_valid,
    nps_7_SNPP_S_credit_rdy,
    nps_7_SNPP_S_credit_return,
    nps_7_SNPP_S_flit,
    nps_7_SNPP_S_valid);
  output [0:0]nps_0_MNPP_S_credit_rdy;
  input [7:0]nps_0_MNPP_S_credit_return;
  output [181:0]nps_0_MNPP_S_flit;
  output [7:0]nps_0_MNPP_S_valid;
  input [0:0]nps_0_SNPP_S_credit_rdy;
  output [7:0]nps_0_SNPP_S_credit_return;
  input [181:0]nps_0_SNPP_S_flit;
  input [7:0]nps_0_SNPP_S_valid;
  output [0:0]nps_2_MNPP_S_credit_rdy;
  input [7:0]nps_2_MNPP_S_credit_return;
  output [181:0]nps_2_MNPP_S_flit;
  output [7:0]nps_2_MNPP_S_valid;
  input [0:0]nps_2_SNPP_S_credit_rdy;
  output [7:0]nps_2_SNPP_S_credit_return;
  input [181:0]nps_2_SNPP_S_flit;
  input [7:0]nps_2_SNPP_S_valid;
  output [0:0]nps_3_MNPP_S_credit_rdy;
  input [7:0]nps_3_MNPP_S_credit_return;
  output [181:0]nps_3_MNPP_S_flit;
  output [7:0]nps_3_MNPP_S_valid;
  input [0:0]nps_3_SNPP_S_credit_rdy;
  output [7:0]nps_3_SNPP_S_credit_return;
  input [181:0]nps_3_SNPP_S_flit;
  input [7:0]nps_3_SNPP_S_valid;
  output [0:0]nps_4_MNPP_S_credit_rdy;
  input [7:0]nps_4_MNPP_S_credit_return;
  output [181:0]nps_4_MNPP_S_flit;
  output [7:0]nps_4_MNPP_S_valid;
  input [0:0]nps_4_SNPP_S_credit_rdy;
  output [7:0]nps_4_SNPP_S_credit_return;
  input [181:0]nps_4_SNPP_S_flit;
  input [7:0]nps_4_SNPP_S_valid;
  output [0:0]nps_6_MNPP_S_credit_rdy;
  input [7:0]nps_6_MNPP_S_credit_return;
  output [181:0]nps_6_MNPP_S_flit;
  output [7:0]nps_6_MNPP_S_valid;
  input [0:0]nps_6_SNPP_S_credit_rdy;
  output [7:0]nps_6_SNPP_S_credit_return;
  input [181:0]nps_6_SNPP_S_flit;
  input [7:0]nps_6_SNPP_S_valid;
  output [0:0]nps_7_MNPP_S_credit_rdy;
  input [7:0]nps_7_MNPP_S_credit_return;
  output [181:0]nps_7_MNPP_S_flit;
  output [7:0]nps_7_MNPP_S_valid;
  input [0:0]nps_7_SNPP_S_credit_rdy;
  output [7:0]nps_7_SNPP_S_credit_return;
  input [181:0]nps_7_SNPP_S_flit;
  input [7:0]nps_7_SNPP_S_valid;

  wire [0:0]nps_0_MNPP_S_credit_rdy;
  wire [7:0]nps_0_MNPP_S_credit_return;
  wire [181:0]nps_0_MNPP_S_flit;
  wire [7:0]nps_0_MNPP_S_valid;
  wire [0:0]nps_0_SNPP_S_credit_rdy;
  wire [7:0]nps_0_SNPP_S_credit_return;
  wire [181:0]nps_0_SNPP_S_flit;
  wire [7:0]nps_0_SNPP_S_valid;
  wire [0:0]nps_2_MNPP_S_credit_rdy;
  wire [7:0]nps_2_MNPP_S_credit_return;
  wire [181:0]nps_2_MNPP_S_flit;
  wire [7:0]nps_2_MNPP_S_valid;
  wire [0:0]nps_2_SNPP_S_credit_rdy;
  wire [7:0]nps_2_SNPP_S_credit_return;
  wire [181:0]nps_2_SNPP_S_flit;
  wire [7:0]nps_2_SNPP_S_valid;
  wire [0:0]nps_3_MNPP_S_credit_rdy;
  wire [7:0]nps_3_MNPP_S_credit_return;
  wire [181:0]nps_3_MNPP_S_flit;
  wire [7:0]nps_3_MNPP_S_valid;
  wire [0:0]nps_3_SNPP_S_credit_rdy;
  wire [7:0]nps_3_SNPP_S_credit_return;
  wire [181:0]nps_3_SNPP_S_flit;
  wire [7:0]nps_3_SNPP_S_valid;
  wire [0:0]nps_4_MNPP_S_credit_rdy;
  wire [7:0]nps_4_MNPP_S_credit_return;
  wire [181:0]nps_4_MNPP_S_flit;
  wire [7:0]nps_4_MNPP_S_valid;
  wire [0:0]nps_4_SNPP_S_credit_rdy;
  wire [7:0]nps_4_SNPP_S_credit_return;
  wire [181:0]nps_4_SNPP_S_flit;
  wire [7:0]nps_4_SNPP_S_valid;
  wire [0:0]nps_6_MNPP_S_credit_rdy;
  wire [7:0]nps_6_MNPP_S_credit_return;
  wire [181:0]nps_6_MNPP_S_flit;
  wire [7:0]nps_6_MNPP_S_valid;
  wire [0:0]nps_6_SNPP_S_credit_rdy;
  wire [7:0]nps_6_SNPP_S_credit_return;
  wire [181:0]nps_6_SNPP_S_flit;
  wire [7:0]nps_6_SNPP_S_valid;
  wire [0:0]nps_7_MNPP_S_credit_rdy;
  wire [7:0]nps_7_MNPP_S_credit_return;
  wire [181:0]nps_7_MNPP_S_flit;
  wire [7:0]nps_7_MNPP_S_valid;
  wire [0:0]nps_7_SNPP_S_credit_rdy;
  wire [7:0]nps_7_SNPP_S_credit_return;
  wire [181:0]nps_7_SNPP_S_flit;
  wire [7:0]nps_7_SNPP_S_valid;

  xlnoc xlnoc_i
       (.nps_0_MNPP_S_credit_rdy(nps_0_MNPP_S_credit_rdy),
        .nps_0_MNPP_S_credit_return(nps_0_MNPP_S_credit_return),
        .nps_0_MNPP_S_flit(nps_0_MNPP_S_flit),
        .nps_0_MNPP_S_valid(nps_0_MNPP_S_valid),
        .nps_0_SNPP_S_credit_rdy(nps_0_SNPP_S_credit_rdy),
        .nps_0_SNPP_S_credit_return(nps_0_SNPP_S_credit_return),
        .nps_0_SNPP_S_flit(nps_0_SNPP_S_flit),
        .nps_0_SNPP_S_valid(nps_0_SNPP_S_valid),
        .nps_2_MNPP_S_credit_rdy(nps_2_MNPP_S_credit_rdy),
        .nps_2_MNPP_S_credit_return(nps_2_MNPP_S_credit_return),
        .nps_2_MNPP_S_flit(nps_2_MNPP_S_flit),
        .nps_2_MNPP_S_valid(nps_2_MNPP_S_valid),
        .nps_2_SNPP_S_credit_rdy(nps_2_SNPP_S_credit_rdy),
        .nps_2_SNPP_S_credit_return(nps_2_SNPP_S_credit_return),
        .nps_2_SNPP_S_flit(nps_2_SNPP_S_flit),
        .nps_2_SNPP_S_valid(nps_2_SNPP_S_valid),
        .nps_3_MNPP_S_credit_rdy(nps_3_MNPP_S_credit_rdy),
        .nps_3_MNPP_S_credit_return(nps_3_MNPP_S_credit_return),
        .nps_3_MNPP_S_flit(nps_3_MNPP_S_flit),
        .nps_3_MNPP_S_valid(nps_3_MNPP_S_valid),
        .nps_3_SNPP_S_credit_rdy(nps_3_SNPP_S_credit_rdy),
        .nps_3_SNPP_S_credit_return(nps_3_SNPP_S_credit_return),
        .nps_3_SNPP_S_flit(nps_3_SNPP_S_flit),
        .nps_3_SNPP_S_valid(nps_3_SNPP_S_valid),
        .nps_4_MNPP_S_credit_rdy(nps_4_MNPP_S_credit_rdy),
        .nps_4_MNPP_S_credit_return(nps_4_MNPP_S_credit_return),
        .nps_4_MNPP_S_flit(nps_4_MNPP_S_flit),
        .nps_4_MNPP_S_valid(nps_4_MNPP_S_valid),
        .nps_4_SNPP_S_credit_rdy(nps_4_SNPP_S_credit_rdy),
        .nps_4_SNPP_S_credit_return(nps_4_SNPP_S_credit_return),
        .nps_4_SNPP_S_flit(nps_4_SNPP_S_flit),
        .nps_4_SNPP_S_valid(nps_4_SNPP_S_valid),
        .nps_6_MNPP_S_credit_rdy(nps_6_MNPP_S_credit_rdy),
        .nps_6_MNPP_S_credit_return(nps_6_MNPP_S_credit_return),
        .nps_6_MNPP_S_flit(nps_6_MNPP_S_flit),
        .nps_6_MNPP_S_valid(nps_6_MNPP_S_valid),
        .nps_6_SNPP_S_credit_rdy(nps_6_SNPP_S_credit_rdy),
        .nps_6_SNPP_S_credit_return(nps_6_SNPP_S_credit_return),
        .nps_6_SNPP_S_flit(nps_6_SNPP_S_flit),
        .nps_6_SNPP_S_valid(nps_6_SNPP_S_valid),
        .nps_7_MNPP_S_credit_rdy(nps_7_MNPP_S_credit_rdy),
        .nps_7_MNPP_S_credit_return(nps_7_MNPP_S_credit_return),
        .nps_7_MNPP_S_flit(nps_7_MNPP_S_flit),
        .nps_7_MNPP_S_valid(nps_7_MNPP_S_valid),
        .nps_7_SNPP_S_credit_rdy(nps_7_SNPP_S_credit_rdy),
        .nps_7_SNPP_S_credit_return(nps_7_SNPP_S_credit_return),
        .nps_7_SNPP_S_flit(nps_7_SNPP_S_flit),
        .nps_7_SNPP_S_valid(nps_7_SNPP_S_valid));
endmodule
