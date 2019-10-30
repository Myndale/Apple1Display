-- VHDL testbench template generated by SCUBA Diamond (64-bit) 3.10.2.115
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

use IEEE.math_real.all;

use IEEE.numeric_std.all;

entity tb is
end entity tb;


architecture test of tb is 

    component ShiftReg1024
        port (Din : in std_logic_vector(5 downto 0); Clock: in std_logic; 
        ClockEn: in std_logic; Reset: in std_logic; 
        Q : out std_logic_vector(5 downto 0)
    );
    end component;

    signal Din : std_logic_vector(5 downto 0) := (others => '0');
    signal Clock: std_logic := '0';
    signal ClockEn: std_logic := '0';
    signal Reset: std_logic := '0';
    signal Q : std_logic_vector(5 downto 0);
begin
    u1 : ShiftReg1024
        port map (Din => Din, Clock => Clock, ClockEn => ClockEn, Reset => Reset, 
            Q => Q
        );

    process

    begin
      Din <= (others => '0') ;
      wait for 100 ns;
      wait until Reset = '0';
      for i in 0 to 1027 loop
        wait until Clock'event and Clock = '1';
        Din <= Din + '1' after 1 ns;
      end loop;
      wait;
    end process;

    Clock <= not Clock after 5.00 ns;

    process

    begin
      ClockEn <= '0' ;
      wait for 100 ns;
      wait until Reset = '0';
      ClockEn <= '1' ;
      wait;
    end process;

    process

    begin
      Reset <= '1' ;
      wait for 100 ns;
      Reset <= '0' ;
      wait;
    end process;

end architecture test;
