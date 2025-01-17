-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 16 11:06:56 2019
-- Host        : Nugget running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RV32I_pipelined_pc_logic_0_0_stub.vhdl
-- Design      : RV32I_pipelined_pc_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    mux_next_pc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    hazard : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PC_DE : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_bus_E : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_FD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mux_next_pc[1:0],hazard[1:0],PC_DE[31:0],output_bus_E[31:0],PC[31:0],PC_FD[31:0],PC_out[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pc_logic,Vivado 2018.3";
begin
end;
