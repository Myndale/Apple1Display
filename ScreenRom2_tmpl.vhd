-- VHDL module instantiation generated by SCUBA Diamond (64-bit) 3.10.2.115
-- Module  Version: 5.4
-- Sun Jul 21 16:56:14 2019

-- parameterized module component declaration
component ScreenRom2
    port (Address: in  std_logic_vector(9 downto 0); 
        OutClock: in  std_logic; OutClockEn: in  std_logic; 
        Reset: in  std_logic; Q: out  std_logic_vector(5 downto 0));
end component;

-- parameterized module component instance
__ : ScreenRom2
    port map (Address(9 downto 0)=>__, OutClock=>__, OutClockEn=>__, 
        Reset=>__, Q(5 downto 0)=>__);