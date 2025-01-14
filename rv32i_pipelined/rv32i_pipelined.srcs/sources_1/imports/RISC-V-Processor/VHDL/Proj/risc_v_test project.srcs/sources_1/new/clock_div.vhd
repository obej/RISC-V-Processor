----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2019 06:01:45 PM
-- Design Name: 
-- Module Name: clock_div - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_div is -- slows down the clock by 5 to 10 MHz
    Port ( clk : in STD_LOGIC;
           locked: in STD_LOGIC;
           div_clk : out STD_LOGIC);
end clock_div;

architecture Behavioral of clock_div is
signal counter: std_logic_vector(31 downto 0) := x"00000000";
signal div_clk_reg: std_logic := '0';
begin
    process(clk)
    begin
        if(rising_edge(clk) and locked = '1') then
            if(unsigned(counter) < 1) then -- 25 MHz
                counter <= std_logic_vector(unsigned(counter)+1);
                div_clk_reg <= '0';
            else
                counter <= (others => '0');
                div_clk_reg <= '1';
            end if;
        end if;
    end process;
    div_clk <= div_clk_reg;
end Behavioral;
