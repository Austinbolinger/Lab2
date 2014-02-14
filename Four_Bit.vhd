----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Austin Bolinger
-- 
-- Create Date:    14:10:05 02/10/2014 
-- Design Name: 4 bit full adder
-- Module Name:    Four_Bit - Structural 
-- Project Name: Four bit
-- Target Devices: full adder
-- Tool versions: 
-- Description: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Four_Bit is
    Port ( --clk : in STD_LOGIC;
				--buttonState : in STD_LOGIC;
				A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Co : out  STD_LOGIC);
end Four_Bit;

architecture Structural of Four_Bit is

component full_adder is 
	port (Ain : in STD_LOGIC;
			Bin : in STD_LOGIC;
			CarryIn : in STD_LOGIC;
			Sum : out STD_LOGIC;
			CarryOut : out STD_LOGIC);
end component full_adder;

signal L, M, N : STD_LOGIC;

--signal lastButtonState    : std_logic := '0';

begin

 --attempt at programming code for a subtractor
 -- found @ http://stackoverflow.com/questions/14493625/vhdl-incrementing-register-value-on-push-button-event
-- process(clk)
--begin
--  if(rising_edge(clk)) then
--    if(buttonState = '1' and lastButtonState = '0') then 
--		B <= STD_LOGIC_VECTOR (signed(not B) + 1);
--    end if;
--    lastButtonState <= buttonState;
--  end if;
--end process;
 
Bit0: full_adder Port Map(A(0),B(0),C,S(0),L);
Bit1: full_adder Port Map(A(1),B(1),L,S(1),M);
Bit2: full_adder Port Map(A(2),B(2),M,S(2),N);
Bit3: full_adder Port Map(A(3),B(3),N,S(3),Co);

end Structural;

