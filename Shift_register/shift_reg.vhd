----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:49 12/16/2023 
-- Design Name: 
-- Module Name:    shift_reg - Behavioral 
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

entity shift_reg is
    Generic (n:integer:=4);
    Port ( input : in  STD_LOGIC_vector(n-1 downto 0);
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           shift : in  STD_LOGIC;
           output : inout  STD_LOGIC_vector(n-1 downto 0));
end shift_reg;

architecture Behavioral of shift_reg is

signal temp:std_logic_vector(n-1 downto 0);
constant z:std_logic_vector(n-1 downto 0) := (others => '0');

begin
process(clk,shift,reset,load,input)begin
    if(reset='1')then
        output <= z;
    elsif(shift = '1')then
        for i in 1 to n-1 loop
            output(i-1) <= output(i);
        end loop;
        output(n-1) <='0';
        --output <= temp;
    elsif(rising_edge(clk))then
        if(load = '1')then
            output <= input;
        end if;
    end if;
end process;
end Behavioral;


