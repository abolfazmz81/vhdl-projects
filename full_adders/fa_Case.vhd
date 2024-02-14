----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:41:54 10/23/2023 
-- Design Name: 
-- Module Name:    fa_Case - Behavioral 
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

entity fa_Case is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC;
           cin : in  STD_LOGIC);
end fa_Case;

architecture Behavioral of fa_Case is

begin
process (I0, I1, cin) 
variable temp:std_logic_vector(2 downto 0);
begin
temp:= I0& I1 & cin;
        case temp is
            when "000" => sum <= '0';
            when "001" => sum <= '1';
            when "010" => sum <= '1';
            when "011" => sum <= '0';
            when "100" => sum <= '1';
            when "101" => sum <= '0';
            when "110" => sum <= '0';
            when "111" => sum <= '1';
            when others => sum <= '0';
        end case;

        case temp is
            when "011" => cout <= '1';
            when "101" => cout <= '1';
            when "110" => cout <= '1';
            when "111" => cout <= '1';
            when others => cout <= '0';
        end case;
    end process;

end Behavioral;

