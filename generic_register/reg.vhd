----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:15 11/10/2023 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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

entity reg is
    Port ( Data_in : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Reset: in  STD_LOGIC;
           Data_out: inout  STD_LOGIC);
end reg;

architecture Structural of reg is
Component dff
               Port ( d : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           nQ : inout  STD_LOGIC);
End component;

Signal mux_o,D_in,n_en,n_reset,s1,s2 : std_logic;

Begin 

D_ff:dff port map(d =>D_in,clk=>Clk,Q=>Data_out);

D_in<= mux_o and n_reset;

n_reset <= not reset;

s1<= Data_in and en;
n_en <= not en;
s2<= Data_out and n_en;
mux_o <= s1 or s2;

end Structural;
