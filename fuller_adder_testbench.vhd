--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Austin Bolinger
--
-- Create Date:   20:13:09 02/09/2014
-- Design Name:   full adder testbench
-- Module Name:   C:/Users/C16Austin.Bolinger/Desktop/ECE281/Lab2/fuller_adder_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  full adder
-- Tool versions:  
-- Description:   test the output of the created full adder file
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
-- 
-- Dependencies:
-- 
-- Revision: 1
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
 
ENTITY fuller_adder_testbench IS
END fuller_adder_testbench;
 
ARCHITECTURE behavior OF fuller_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         Ain : IN  std_logic;
         Bin : IN  std_logic;
         CarryIn : IN  std_logic;
         Sum : OUT  std_logic;
         CarryOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic := '0';
   signal Bin : std_logic := '0';
   signal CarryIn : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal CarryOut : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          Ain => Ain,
          Bin => Bin,
          CarryIn => CarryIn,
          Sum => Sum,
          CarryOut => CarryOut
        );

   -- Stimulus process
   stim_proc: process
   begin		

		-- First line of truth table
		Ain <= '0';
		Bin <= '0';
		CarryIn <= '0';
		wait for 100 ns;	
		
		-- Second line of truth table
		Ain <= '0';
		Bin <= '0';
		CarryIn <= '1';
		wait for 100 ns;	
		
		-- Complete_ the rest of the truth table below:

		-- third line of truth table
		Ain <= '0';
		Bin <= '1';
		CarryIn <= '0';
		wait for 100 ns;	
		
		-- forth line of truth table
		Ain <= '0';
		Bin <= '1';
		CarryIn <= '1';
		wait for 100 ns;	
		 -- fifth line of truth table
		Ain <= '1';
		Bin <= '0';
		CarryIn <= '0';
		wait for 100 ns;	
		
		-- sixth line of truth table
		Ain <= '1';
		Bin <= '0';
		CarryIn <= '1';
		wait for 100 ns;	
		 -- seventh line of truth table
		Ain <= '1';
		Bin <= '1';
		CarryIn <= '0';
		wait for 100 ns;	
		
		-- eighth line of truth table
		Ain <= '1';
		Bin <= '1';
		CarryIn <= '1';

      wait;
   end process;

END;
