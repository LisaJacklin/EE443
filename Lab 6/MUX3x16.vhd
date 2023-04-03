--Lisa Jacklin
--EE 443 Lab 6
--MUX3x16.vhd
-------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux3x16 is
  port (
    A : in std_logic_vector(15 downto 0);
    B : in std_logic_vector(15 downto 0);
    C : in std_logic_vector(15 downto 0);
    sel : in std_logic_vector(1 downto 0);
    Y : out std_logic_vector(15 downto 0)
  );
end entity mux3x16;

architecture behavior of mux3x16 is
begin
  Y <= A when sel = "00" else
       B when sel = "01" else
       C;
end architecture behavior;