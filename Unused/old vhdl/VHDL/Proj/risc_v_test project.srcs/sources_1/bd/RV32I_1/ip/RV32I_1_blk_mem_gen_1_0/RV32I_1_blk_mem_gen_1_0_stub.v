// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar 24 17:29:41 2019
// Host        : Oz-Bejerano-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {C:/Users/Oz
//               Bejerano/PycharmProjects/RISC-V-Processor/capstone_test_vivado/risc_v_test project/risc_v_test
//               project.srcs/sources_1/bd/RV32I_1/ip/RV32I_1_blk_mem_gen_1_0/RV32I_1_blk_mem_gen_1_0_stub.v}
// Design      : RV32I_1_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module RV32I_1_blk_mem_gen_1_0(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[3:0],addra[11:0],dina[31:0],douta[31:0],clkb,web[3:0],addrb[11:0],dinb[31:0],doutb[31:0]" */;
  input clka;
  input [3:0]wea;
  input [11:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input [3:0]web;
  input [11:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
endmodule