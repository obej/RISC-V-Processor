-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Apr  1 01:07:19 2019
-- Host        : Oz-Bejerano-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {C:/Users/Oz
--               Bejerano/PycharmProjects/RISC-V-Processor/rv32i_pipelined/rv32i_pipelined.srcs/sources_1/bd/RV32I_pipelined/ip/RV32I_pipelined_alu_signals_0_0/RV32I_pipelined_alu_signals_0_0_sim_netlist.vhdl}
-- Design      : RV32I_pipelined_alu_signals_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32I_pipelined_alu_signals_0_0_alu_signals is
  port (
    zero : out STD_LOGIC;
    alu_output_33 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of RV32I_pipelined_alu_signals_0_0_alu_signals : entity is "alu_signals";
end RV32I_pipelined_alu_signals_0_0_alu_signals;

architecture STRUCTURE of RV32I_pipelined_alu_signals_0_0_alu_signals is
  signal zero_INST_0_i_1_n_0 : STD_LOGIC;
  signal zero_INST_0_i_2_n_0 : STD_LOGIC;
  signal zero_INST_0_i_3_n_0 : STD_LOGIC;
  signal zero_INST_0_i_4_n_0 : STD_LOGIC;
  signal zero_INST_0_i_5_n_0 : STD_LOGIC;
  signal zero_INST_0_i_6_n_0 : STD_LOGIC;
begin
zero_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => zero_INST_0_i_1_n_0,
      I1 => zero_INST_0_i_2_n_0,
      I2 => zero_INST_0_i_3_n_0,
      I3 => zero_INST_0_i_4_n_0,
      I4 => zero_INST_0_i_5_n_0,
      I5 => zero_INST_0_i_6_n_0,
      O => zero
    );
zero_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => alu_output_33(0),
      I1 => alu_output_33(1),
      O => zero_INST_0_i_1_n_0
    );
zero_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_output_33(4),
      I1 => alu_output_33(5),
      I2 => alu_output_33(2),
      I3 => alu_output_33(3),
      I4 => alu_output_33(7),
      I5 => alu_output_33(6),
      O => zero_INST_0_i_2_n_0
    );
zero_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_output_33(10),
      I1 => alu_output_33(11),
      I2 => alu_output_33(8),
      I3 => alu_output_33(9),
      I4 => alu_output_33(13),
      I5 => alu_output_33(12),
      O => zero_INST_0_i_3_n_0
    );
zero_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_output_33(16),
      I1 => alu_output_33(17),
      I2 => alu_output_33(14),
      I3 => alu_output_33(15),
      I4 => alu_output_33(19),
      I5 => alu_output_33(18),
      O => zero_INST_0_i_4_n_0
    );
zero_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_output_33(22),
      I1 => alu_output_33(23),
      I2 => alu_output_33(20),
      I3 => alu_output_33(21),
      I4 => alu_output_33(25),
      I5 => alu_output_33(24),
      O => zero_INST_0_i_5_n_0
    );
zero_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_output_33(28),
      I1 => alu_output_33(29),
      I2 => alu_output_33(26),
      I3 => alu_output_33(27),
      I4 => alu_output_33(31),
      I5 => alu_output_33(30),
      O => zero_INST_0_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RV32I_pipelined_alu_signals_0_0 is
  port (
    alu_output_33 : in STD_LOGIC_VECTOR ( 32 downto 0 );
    alu_output : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    sign : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RV32I_pipelined_alu_signals_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RV32I_pipelined_alu_signals_0_0 : entity is "RV32I_pipelined_alu_signals_0_0,alu_signals,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RV32I_pipelined_alu_signals_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of RV32I_pipelined_alu_signals_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of RV32I_pipelined_alu_signals_0_0 : entity is "alu_signals,Vivado 2018.3";
end RV32I_pipelined_alu_signals_0_0;

architecture STRUCTURE of RV32I_pipelined_alu_signals_0_0 is
  signal \^alu_output_33\ : STD_LOGIC_VECTOR ( 32 downto 0 );
begin
  \^alu_output_33\(32 downto 0) <= alu_output_33(32 downto 0);
  alu_output(31 downto 0) <= \^alu_output_33\(31 downto 0);
  overflow <= \^alu_output_33\(32);
  sign <= \^alu_output_33\(31);
U0: entity work.RV32I_pipelined_alu_signals_0_0_alu_signals
     port map (
      alu_output_33(31 downto 0) => \^alu_output_33\(31 downto 0),
      zero => zero
    );
end STRUCTURE;
