--Testbench de shift register
--Jaime Ramirez Stanford
--A00825248
--Laboratorio de sistemas digitales
library IEEE;
use IEEE.numeric_bit.ALL;

entity shift_tb is
end shift_tb;
architecture behavior of shift_tb is 
    component shiftreg
     port(x: in bit_vector(7 downto 0); sel: in bit_vector(1 downto 0); r,l,clr,clk: in bit; y: inout bit_vector(7 downto 0));
     end component;
   signal clk : bit := '0';
   signal r,l,clr: bit;
   signal x,y: bit_vector(7 downto 0);
   signal sel: bit_vector(1 downto 0);
begin
   uut: shiftreg port map (
          clk => clk,
          r => r,
          l => l,
          clr => clr,
          x => x,
          y => y,
          sel => sel
        );
 clk_process :process
        begin
             clk <= '0';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
             clk <= '0'; x<="01100010"; sel<="01"; l<='1';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
             clk <= '0';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
             clk <= '0'; sel<="11";
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns; 
             clk <= '0';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
             clk <= '0'; sel <="10"; r<='1';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
             clk <= '0';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
        end process;
end;