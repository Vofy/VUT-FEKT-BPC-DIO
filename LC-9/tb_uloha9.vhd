--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:42 04/19/2023
-- Design Name:   
-- Module Name:   C:/BDIO/243511/uloha9/tb_uloha9.vhd
-- Project Name:  uloha9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY tb_uloha9 IS
END tb_uloha9;
 
ARCHITECTURE behavior OF tb_uloha9 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         btn : IN  std_logic;
         clk : IN  std_logic;
         leds : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal btn : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal leds : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          btn => btn,
          clk => clk,
          leds => leds
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		wait for 10 ms;
		
		btn<='1';
		
      wait for 150 ms;
		
		btn<='0';
		

      wait;
   end process;

END;
