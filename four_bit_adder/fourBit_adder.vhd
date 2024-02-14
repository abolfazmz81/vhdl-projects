----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:06 10/27/2023 
-- Design Name: 
-- Module Name:    fourBit_adder - Behavioral 
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

entity fourBit_adder is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end fourBit_adder;

architecture Behavioral of fourBit_adder is
component full_adder is
	port(a, b, cin : in std_logic;
	     s, cout : out std_logic);
end component;

type ts is array(1 to 3) of std_logic;
signal temp : ts;
signal s0,s1,s2,s3: std_logic;
begin

u1:full_adder port map(a => a(0), b => b(0), cin => cin, s => s(0), cout => temp(1));
u2:full_adder port map(a => a(1), b => b(1), cin => temp(1), s => s(1), cout => temp(2));
u3:full_adder port map(a => a(2), b => b(2), cin => temp(2), s => s(2), cout => temp(3));
u4:full_adder port map(a => a(3), b => b(3), cin => temp(3), s => s(3), cout => cout);

end Behavioral;

