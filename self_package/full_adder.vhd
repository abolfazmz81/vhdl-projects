----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:49:40 11/17/2023 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
    Port ( a : in  mam_logic;
           b : in  mam_logic;
           cin : in  mam_logic;
           s : out  mam_logic;
           cout : out  mam_logic);
end full_adder;

architecture Behavioral of full_adder is
signal temp,c1,c2,c3,cn : mam_logic;
begin

temp <= mamxnor(a,b);
s <= mamxnor(cin,temp);

c1 <= mamor(a,b);
c2 <= mamor(a,cin);
c3 <= mamor(cin,b);

cn <= mamand(c1,c2);
cout <=  mamand(c3,cn) ;

end Behavioral;