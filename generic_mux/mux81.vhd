----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:26:55 11/02/2023 
-- Design Name: 
-- Module Name:    mux81 - Behavioral 
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

entity mux81 is
    generic (
    N : integer   
  );
  port (
    s : in std_logic_vector(2 downto 0);
    i0 : in std_logic_vector(N-1 downto 0); 
    i1 : in std_logic_vector(N-1 downto 0);
    i2 : in std_logic_vector(N-1 downto 0); 
    i3 : in std_logic_vector(N-1 downto 0);
    i4 : in std_logic_vector(N-1 downto 0); 
    i5 : in std_logic_vector(N-1 downto 0);
    i6 : in std_logic_vector(N-1 downto 0); 
    i7 : in std_logic_vector(N-1 downto 0);
    output : out std_logic_vector(N-1 downto 0)  
  );
end mux81;

architecture Behavioral of mux81 is

begin
    process(s,i0,i1,i2,i3)
    variable temp:std_logic_vector(2 downto 0);
    begin
    temp := s(2) & s(1) & s(0);
    case temp is
            when "000" => output <= i0;
            when "001" => output <= i1;
            when "010" => output <= i2;
            when "011" => output <= i3;
            when "100" => output <= i4;
            when "101" => output <= i5;
            when "110" => output <= i6;
            when "111" => output <= i7;
            when others => output <= i0;
    end case;
    end process;

end Behavioral;
