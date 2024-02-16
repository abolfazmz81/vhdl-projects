--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:11:24 12/17/2023
-- Design Name:   
-- Module Name:   C:/Documents and Settings/shift_reg/shift_test.vhd
-- Project Name:  shift_reg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_reg
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_test IS
END shift_test;
 
ARCHITECTURE behavior OF shift_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_reg
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         load : IN  std_logic;
         reset : IN  std_logic;
         shift : IN  std_logic;
         output : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal load : std_logic := '0';
   signal reset : std_logic := '0';
   signal shift : std_logic := '0';

	--BiDirs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_reg PORT MAP (
          input => input,
          clk => clk,
          load => load,
          reset => reset,
          shift => shift,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
          --wait for 100 ns;	
      reset <= '1';
      wait for clk_period;
      
      reset <= '0';
      load <= '1';
      input <= "1100";
      wait for clk_period;
      load <='0';
      shift <='1';
      wait for clk_period;
      shift <='0';
      wait for clk_period;
      reset <='1';
      shift <='1';
      load <='1';
      wait for clk_period;
      reset <='0';
      shift <='0';
      load <='0';
      -- insert stimulus here 

      wait;
   end process;

END;
