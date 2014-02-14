--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Austin Bolinger
--
-- Create Date:   15:06:30 02/10/2014
-- Design Name:   four bit testbench
-- Module Name:   C:/Users/C16Austin.Bolinger/Desktop/ECE281/Lab2/four_bit_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  full adder 
-- Tool versions:  
-- Description:   tests the structural implementation of the four bit adder
-- 
-- VHDL Test Bench Created by ISE for module: Four_Bit
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
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY four_bit_testbench IS
END four_bit_testbench;
 
ARCHITECTURE behavior OF four_bit_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Co : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic;
 
 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Co : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit PORT MAP (
          A => A,
          B => B,
          C => C,
          S => S,
          Co => Co
        );

   -- Stimulus process
   stim_proc: process
   begin		
	-- code found online @
	--http://www.seas.upenn.edu/~ese171/vhdl/VHDLTestbench.pdf
	A <= "0000";
	B <= "0000";
	C <= '0';
	for I in 0 to 3 loop
		for J in 0 to 3 loop 
			wait for 10ns;
			assert (S = A + B ) report "Expected sum of " & 
			integer' image(to_integer(unsigned((A+B)))) & " for A = " & 
			integer' image(to_integer(unsigned((A)))) & " and B = " &
			integer' image(to_integer(unsigned((B)))) & --" and C = " &
			--integer' image(to_integer(unsigned((C)))) & 
			", but was " &
			integer' image(to_integer(unsigned((S)))) severity ERROR;
			B <= B + "0001";
		end loop;
		A <= A + "0001";
	end loop;
			report "Test completed";
	wait;
   end process;
 
END;
