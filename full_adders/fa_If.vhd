----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:44 10/23/2023 
-- Design Name: 
-- Module Name:    fa_If - Behavioral 
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

entity fa_If is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fa_If;

architecture Behavioral of fa_If is

begin
process (I0, I1, cin) 
    begin
        if (I0 = '0' and I1 = '0' and cin = '0') then
            sum <= '0';
            cout <= '0';
        elsif (I0 = '0' and I1 = '0' and cin = '1') then
            sum <= '1';
            cout <= '0';
        elsif (I0 = '0' and I1 = '1' and cin = '0') then
            sum <= '1';
            cout <= '0';
        elsif (I0 = '0' and I1 = '1' and cin = '1') then
            sum <= '0';
            cout <= '1';
        elsif (I0 = '1' and I1 = '0' and cin = '0') then
            sum <= '1';
            cout <= '0';
        elsif (I0 = '1' and I1 = '0' and cin = '1') then
            sum <= '0';
            cout <= '1';
        elsif (I0 = '1' and I1 = '1' and cin = '0') then
            sum <= '0';
            cout <= '1';
        else
            sum <= '1';
            cout <= '1';
        end if;
    end process;

end Behavioral;

