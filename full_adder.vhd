----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Austin Bolinger
-- 
-- Create Date:    19:52:58 02/09/2014 
-- Design Name: Full Adder
-- Module Name:    full_adder - Behavioral 
-- Project Name: Lab2 
-- Target Devices: full adder
-- Tool versions: 
-- Description: two inputs, one carry in input, one output, and one carry out output
--
-- Dependencies: 
--
-- Revision: 1
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

entity full_adder is
    Port ( Ain : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           CarryOut : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

signal Ain_NOT, Bin_NOT: STD_LOGIC;

begin

Ain_NOT <= not Ain;
Bin_NOT <= not Bin;

Sum <= (Ain and Bin_NOT) or (Ain_NOT and Bin);

CarryOut <= Ain and Bin;

end Behavioral;

