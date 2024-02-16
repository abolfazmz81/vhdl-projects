----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:23 11/04/2023 
-- Design Name: 
-- Module Name:    generic_full_adder - Behavioral 
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

entity generic_full_adder is
    generic(n:integer := 4);
    Port ( a : in  STD_LOGIC_VECTOR (n-1 downto 0);
           b : in  STD_LOGIC_VECTOR (n-1 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (n-1 downto 0);
           cout : out  STD_LOGIC);
end generic_full_adder;

architecture Behavioral of generic_full_adder is

component full_adder is
	port(a, b, cin : in std_logic;
	     s, cout : out std_logic);
end component;

signal carry: std_logic_vector(n downto 1);
begin
    fab: full_adder port map(a=> a(0),b=>b(0),cin => cin,s=>s(0),cout => carry(1));
    hello:for i in 1 to n-1 generate
        fa: full_adder port map(a=>a(i),b => b(i),cin => carry(i),s => s(i),cout=>carry(i+1));
    end generate;
    cout <= carry(n);
end Behavioral;

