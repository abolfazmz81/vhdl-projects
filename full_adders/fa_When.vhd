----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:49:22 10/23/2023 
-- Design Name: 
-- Module Name:    fa_When - Behavioral 
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

entity fa_When is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fa_When;

architecture Behavioral of fa_When is

begin
 sum <= '0' when (I0 = '0' and I1 = '0' and cin = '0') else
            '1' when (I0 = '0' and I1 = '0' and cin = '1') else
            '1' when (I0 = '0' and I1 = '1' and cin = '0') else
            '0' when (I0 = '0' and I1 = '1' and cin = '1') else
            '1' when (I0 = '1' and I1 = '0' and cin = '0') else
            '0' when (I0 = '1' and I1 = '0' and cin = '1') else
            '0' when (I0 = '1' and I1 = '1' and cin = '0') else
            '1';

    cout <= '1' when (I0 = '0' and I1 = '1' and cin = '1') else
            '1' when (I0 = '1' and I1 = '0' and cin = '1') else
            '1' when (I0 = '1' and I1 = '1' and cin = '0') else
            '1' when (I0 = '1' and I1 = '1' and cin = '1') else
            '0';

end Behavioral;

