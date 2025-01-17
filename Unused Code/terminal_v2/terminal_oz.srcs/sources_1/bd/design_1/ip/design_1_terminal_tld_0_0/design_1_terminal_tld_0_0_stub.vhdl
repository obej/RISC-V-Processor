-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  2 20:24:30 2019
-- Host        : Oz-Bejerano-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Google_Drive/2018/Fall 2018/Embedded
--               Systems/Embedded_Systems/embedded_systems_lab4/embedded_lab4.srcs/sources_1/bd/design_1/ip/design_1_terminal_tld_0_0/design_1_terminal_tld_0_0_stub.vhdl}
-- Design      : design_1_terminal_tld_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_terminal_tld_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    clk_en : in STD_LOGIC;
    vram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ascii_value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vga_r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_hs : out STD_LOGIC;
    vga_vs : out STD_LOGIC
  );

end design_1_terminal_tld_0_0;

architecture stub of design_1_terminal_tld_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_en,vram_addr[31:0],ascii_value[7:0],vga_r[4:0],vga_g[5:0],vga_b[4:0],vga_hs,vga_vs";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "terminal_tld,Vivado 2018.3";
begin
end;
