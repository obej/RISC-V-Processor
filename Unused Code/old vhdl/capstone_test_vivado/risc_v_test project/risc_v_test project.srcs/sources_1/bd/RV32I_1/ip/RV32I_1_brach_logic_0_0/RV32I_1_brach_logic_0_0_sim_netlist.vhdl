-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Mar 30 15:03:09 2019
-- Host        : Oz-Bejerano-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Oz
--               Bejerano/PycharmProjects/RISC-V-Processor/capstone_test_vivado/risc_v_test project/risc_v_test
--               project.srcs/sources_1/bd/RV32I_1/ip/RV32I_1_brach_logic_0_0/RV32I_1_brach_logic_0_0_sim_netlist.vhdl}
-- Design      : RV32I_1_brach_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32I_1_brach_logic_0_0 is
  port (
    control_branch : in STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_zero : in STD_LOGIC;
    alu_sign : in STD_LOGIC;
    alu_overflow : in STD_LOGIC;
    mux_next_pc : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RV32I_1_brach_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32I_1_brach_logic_0_0 : entity is "RV32I_1_brach_logic_0_0,brach_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RV32I_1_brach_logic_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RV32I_1_brach_logic_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RV32I_1_brach_logic_0_0 : entity is "brach_logic,Vivado 2018.3";
end RV32I_1_brach_logic_0_0;

architecture STRUCTURE of RV32I_1_brach_logic_0_0 is
  signal \mux_next_pc[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \mux_next_pc[0]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\mux_next_pc[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mux_next_pc[0]_INST_0_i_1_n_0\,
      I1 => \mux_next_pc[0]_INST_0_i_2_n_0\,
      O => mux_next_pc(0),
      S => control_branch(3)
    );
\mux_next_pc[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => control_branch(0),
      I1 => control_branch(2),
      O => \mux_next_pc[0]_INST_0_i_1_n_0\
    );
\mux_next_pc[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50505050303FCFC0"
    )
        port map (
      I0 => alu_overflow,
      I1 => alu_sign,
      I2 => control_branch(2),
      I3 => alu_zero,
      I4 => control_branch(0),
      I5 => control_branch(1),
      O => \mux_next_pc[0]_INST_0_i_2_n_0\
    );
\mux_next_pc[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => control_branch(3),
      I1 => control_branch(2),
      I2 => control_branch(1),
      O => mux_next_pc(1)
    );
end STRUCTURE;
