-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 16 11:07:21 2019
-- Host        : Nugget running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RV32I_pipelined_stage_FD_0_0_stub.vhdl
-- Design      : RV32I_pipelined_stage_FD_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hazard : in STD_LOGIC_VECTOR ( 1 downto 0 );
    branch : in STD_LOGIC;
    PC_FD : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction_clear_out : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_en,PC[31:0],hazard[1:0],branch,PC_FD[31:0],instruction_clear_out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "stage_FD,Vivado 2018.3";
begin
end;
