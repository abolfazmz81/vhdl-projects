----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:08 10/23/2023 
-- Design Name: 
-- Module Name:    fa_WithSelect - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fa_WithSelect is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fa_WithSelect;

architecture Behavioral of fa_WithSelect is
signal temp: std_logic_vector(2 downto 0);
begin
temp <= I0 & I1 & cin;
with temp select
        sum <= '0' when "000",
                '1' when "001",
                '1' when "010",
                '0' when "011",
                '1' when "100",
                '0' when "101",
                '0' when "110",
                '1' when others;
    with temp select
        cout <= '1' when "011",
                '1' when "101",
                '1' when "110",
                '1' when "111",
                '0' when others;

end Behavioral;

