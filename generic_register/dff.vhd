----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:32:08 11/10/2023 
-- Design Name: 
-- Module Name:    dff - Behavioral 
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

entity dff is
    Port ( d : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           nQ : inout  STD_LOGIC);
end dff;

architecture Structural of dff is

Component dlatch
               Port ( d : in  STD_LOGIC;
           e : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           nQ : inout  STD_LOGIC);
End component;

Signal L1,nclk : std_logic :='0';
Begin 
nclk <= Clk ;
D_11: dlatch port map (d=>d,e=>nclk,q=>L1);
D_12:dlatch port map (d=>L1,e=>Clk,q=>q,nq=>nQ);
end Structural;

