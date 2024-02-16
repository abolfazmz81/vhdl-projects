----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:07:28 12/02/2023 
-- Design Name: 
-- Module Name:    string_finder - Behavioral 
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

entity string_finder is
    Port ( x : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in std_logic;
           w : out  STD_LOGIC;
           counter : inout integer := 0);
end string_finder;

architecture Behavioral of string_finder is
 SUBTYPE states IS STD_LOGIC_VECTOR (4 DOWNTO 0);
    CONSTANT s0 : states := "00001";
    CONSTANT s1 : states := "00010";
    CONSTANT s2 : states := "00100";
    CONSTANT s3 : states := "01000";
    CONSTANT s4 : states := "10000";
signal current_state : states:=s0;
begin
    process(clk)
    --variable counter : integer:=0;
    begin
        if(rising_edge(clk))then
            if(reset = '1')then
                current_state <= s0;
            else
                      if(current_state = s0)then
                if(x='0')then
                    current_state<=s1;
                    w <= '0';
                else
                    current_state<=s0;
                    w <= '0';
                end if;
            elsif(current_state = s1)then
                if(x='0')then
                    current_state<=s2;
                    w <= '0';
                else
                    current_state<=s0;
                    w <= '0';
                end if;
            elsif(current_state = s2)then
                if(x='0')then
                    current_state<=s2;
                    w <= '0';
                else
                    current_state<=s3;
                    w <= '0';
                end if;
            elsif(current_state = s3)then
                if(x='0')then
                    current_state<=s1;
                    w <= '0';
                else
                    current_state<=s4;
                    w <= '1';
                    counter <= 1+counter;
                end if;
            elsif(current_state = s4)then
                if(x='0')then
                    current_state<=s1;
                    w <= '0';
                else
                    current_state<=s0;
                    w <= '0';
                end if;
            end if;

            end if;
        end if;

    end process;
end Behavioral;

