----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:28 11/02/2023 
-- Design Name: 
-- Module Name:    mux41 - Behavioral 
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

entity mux41 is
    generic (
    N : integer   
  );
  port (
    s : in std_logic_vector(1 downto 0);
    i0 : in std_logic_vector(N-1 downto 0); 
    i1 : in std_logic_vector(N-1 downto 0);
    i2 : in std_logic_vector(N-1 downto 0); 
    i3 : in std_logic_vector(N-1 downto 0);
    output : out std_logic_vector(N-1 downto 0)  
  );
end mux41;

architecture Behavioral of mux41 is

begin
    process(s,i0,i1,i2,i3)begin
        if (s(0) = '0' and s(1) = '0') then
            output <= i0;
        elsif (s(0) = '1' and s(1) = '0') then
            output <= i1;
        elsif (s(0) = '0' and s(1) = '1') then
            output <= i2;
        else
            output <= i3;
        end if;
    end process;

end Behavioral;