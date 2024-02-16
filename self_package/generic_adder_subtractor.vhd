----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:11:57 11/17/2023 
-- Design Name: 
-- Module Name:    generic_adder_subtractor - Behavioral 
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
library work;
use work.mam_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity generic_adder_subtractor is
    generic(n:integer := 4);
    Port ( a : in  mam_logic_VECTOR (n-1 downto 0);
           b : in  mam_logic_VECTOR (n-1 downto 0);
           m: in mam_logic;
           s : out  mam_logic_VECTOR (n-1 downto 0);
           cout : out  mam_logic);
end generic_adder_subtractor;

architecture Behavioral of generic_adder_subtractor is

component full_adder is
	port(a, b, cin : in mam_logic;
	     s, cout : out mam_logic);
end component;

signal carry,ta: mam_logic_vector(n downto 1);
signal t: mam_logic;

begin

    t <= mamxnor(b(0),m);
    fab: full_adder port map(a=> a(0),b=>t,cin => m,s=>s(0),cout => carry(1));
    
    hello:for i in 1 to n-1 generate
        ta(i) <= mamxnor(b(i),m);
        fa: full_adder port map(a=>a(i),b => ta(i),cin => carry(i),s => s(i),cout=>carry(i+1));
    end generate;
    cout <= carry(n);
end Behavioral;
