-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 16 11:07:58 2019
-- Host        : Nugget running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Jon/Desktop/capstone/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_clock_div_1_0/RV32I_pipelined_clock_div_1_0_stub.vhdl
-- Design      : RV32I_pipelined_clock_div_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RV32I_pipelined_clock_div_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    locked : in STD_LOGIC;
    div_clk : out STD_LOGIC
  );

end RV32I_pipelined_clock_div_1_0;

architecture stub of RV32I_pipelined_clock_div_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,locked,div_clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "clock_div,Vivado 2018.3";
begin
end;
