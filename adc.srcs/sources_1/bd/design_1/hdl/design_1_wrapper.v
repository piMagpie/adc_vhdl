//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Jan 30 09:01:26 2019
//Host        : agazorPC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (daddr_in,
    dclk_in_0,
    do_out_0,
    drdy_out_0,
    vauxn14_0,
    vauxp14_0);
  input [6:0]daddr_in;
  input dclk_in_0;
  output [15:0]do_out_0;
  output drdy_out_0;
  input vauxn14_0;
  input vauxp14_0;

  wire [6:0]daddr_in;
  wire dclk_in_0;
  wire [15:0]do_out_0;
  wire drdy_out_0;
  wire vauxn14_0;
  wire vauxp14_0;

  design_1 design_1_i
       (.daddr_in(daddr_in),
        .dclk_in_0(dclk_in_0),
        .do_out_0(do_out_0),
        .drdy_out_0(drdy_out_0),
        .vauxn14_0(vauxn14_0),
        .vauxp14_0(vauxp14_0));
endmodule
