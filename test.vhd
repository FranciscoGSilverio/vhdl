LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestBench IS
END TestBench;
 
ARCHITECTURE behavior OF TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Modulo
    PORT(
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         Output : buffer integer range 0 to 15
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Output : integer range 0 to 15;

 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Modulo PORT MAP (
          Clock => Clock,
          Reset => Reset,
          Output => Output
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      
		Reset <= '1';
      wait for 100 ns;
      Reset <= '0';
      wait for 100 ns;	

		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
		Clock <= '0'; 
      wait for 100 ns;	
		Clock <= '1'; 
      wait for 100 ns;
		Clock <= '0'; 
      wait for 100 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;