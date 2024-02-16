----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:17:06 11/02/2023 
-- Design Name: 
-- Module Name:    mux21 - Behavioral 
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

entity mux21 is
    generic (
    N :integer:=4   
  );
  port (
    s : in std_logic;
    i0 : in std_logic_vector(N-1 downto 0); 
    i1 : in std_logic_vector(N-1 downto 0); 
    output : out std_logic_vector(N-1 downto 0)  
  );
end mux21;

architecture Behavioral of mux21 is

begin
    process(s,i0,i1)begin
        if s = '1' then
            output <= i1;
        else
            output <= i0;
        end if;
    end process;

end Behavioral;

