----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:26:05 11/10/2023 
-- Design Name: 
-- Module Name:    nbit_register - Behavioral 
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


entity nbit_register is
    Generic (n:integer:=4);
    Port ( Data_in : in  STD_LOGIC_vector(n-1 downto 0);
           Clk : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Reset: in  STD_LOGIC;
           Data_out: inout  STD_LOGIC_vector(n-1 downto 0));
end nbit_register;

architecture Structural of nbit_register is
Component reg
               Port ( Data_in : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Reset: in  STD_LOGIC;
           Data_out: inout  STD_LOGIC);
End component;
For all:reg use entity work.reg (structural);
Begin 
Gen :for i in n-1 downto 0 generate
      Regi: reg port map(Data_in=>Data_in(i),Clk=>clk,en=>en,reset=>reset,Data_out=>Data_out(i));
End generate;
end Structural;
