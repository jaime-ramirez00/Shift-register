library IEEE;
use IEEE.numeric_bit.all;
entity auxiliar is
port(data: in bit_vector(3 downto 0); sel: in bit_vector(1 downto 0); sr, sl, clr, clk: in bit; q: inout bit_vector(3 downto 0));
end auxiliar;
architecture behavior of auxiliar is
begin
process(clk,clr)
begin
if clr ='1' then q<="0000";
elsif clk='1' and clk'event then
case sel is
when "00" => q<=q;
when "01" => q <= q(2 downto 0) & sl;
when "10" => q<= sr & q(3 downto 1);
when "11" => q<=data;
end case;
end if;
end process;
end behavior;