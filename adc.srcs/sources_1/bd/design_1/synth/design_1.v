//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Jan 30 09:01:26 2019
//Host        : agazorPC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (daddr_in,
    dclk_in_0,
    do_out_0,
    drdy_out_0,
    vauxn14_0,
    vauxp14_0);
  input [6:0]daddr_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DCLK_IN_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DCLK_IN_0, CLK_DOMAIN design_1_dclk_in_0, FREQ_HZ 100000000, PHASE 0.000" *) input dclk_in_0;
  output [15:0]do_out_0;
  output drdy_out_0;
  input vauxn14_0;
  input vauxp14_0;

  wire [6:0]daddr_in_1;
  wire dclk_in_0_1;
  wire vauxn14_0_1;
  wire vauxp14_0_1;
  wire [15:0]xadc_wiz_0_do_out;
  wire xadc_wiz_0_drdy_out;
  wire xadc_wiz_0_eoc_out;
  wire [15:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign daddr_in_1 = daddr_in[6:0];
  assign dclk_in_0_1 = dclk_in_0;
  assign do_out_0[15:0] = xadc_wiz_0_do_out;
  assign drdy_out_0 = xadc_wiz_0_drdy_out;
  assign vauxn14_0_1 = vauxn14_0;
  assign vauxp14_0_1 = vauxp14_0;
  design_1_xadc_wiz_0_0 xadc_wiz_0
       (.daddr_in(daddr_in_1),
        .dclk_in(dclk_in_0_1),
        .den_in(xadc_wiz_0_eoc_out),
        .di_in(xlconstant_0_dout),
        .do_out(xadc_wiz_0_do_out),
        .drdy_out(xadc_wiz_0_drdy_out),
        .dwe_in(xlconstant_1_dout),
        .eoc_out(xadc_wiz_0_eoc_out),
        .vauxn14(vauxn14_0_1),
        .vauxp14(vauxp14_0_1),
        .vn_in(xlconstant_1_dout),
        .vp_in(xlconstant_1_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
