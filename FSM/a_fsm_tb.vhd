--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:05:55 12/04/2023
-- Design Name:   
-- Module Name:   C:/Documents and Settings/string_finder/a_fsm_tb.vhd
-- Project Name:  string_finder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: string_finder
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
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY a_fsm_tb IS
END a_fsm_tb;

ARCHITECTURE test OF a_fsm_tb IS
    COMPONENT string_finder
        PORT (
            x : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            reset : IN std_logic;
            w : OUT STD_LOGIC;
            counter : INOUT INTEGER := 0
        );
    END COMPONENT;

    SIGNAL x : STD_LOGIC;
    SIGNAL clk : STD_LOGIC;
    SIGNAL w : STD_LOGIC;
    SIGNAL counter : INTEGER := 0;
    Signal reset : std_logic;

    -- Clock period definitions
    CONSTANT clk_period : TIME := 20 ps;
BEGIN
    uut : string_finder PORT MAP(
        x => x,
        clk => clk,
        w => w,
        counter => counter,
        reset => reset
    );

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    stim_proc : PROCESS
    BEGIN
        reset <= '1';
        w
        wait for clk_period;
        reset <= '0';
        x <= '1';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '0';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;
        x <= '1';
        WAIT FOR clk_period;

        ASSERT false REPORT "End of simulation";
        WAIT;
    END PROCESS;
END test;