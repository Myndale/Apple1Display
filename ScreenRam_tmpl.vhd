-- VHDL module instantiation generated by SCUBA Diamond (64-bit) 3.10.2.115
-- Module  Version: 5.2
-- Thu Aug 08 17:25:32 2019

-- parameterized module component declaration
component ScreenRam
    port (Din: in  std_logic_vector(5 downto 0); Clock: in  std_logic; 
        ClockEn: in  std_logic; Reset: in  std_logic; 
        Q: out  std_logic_vector(5 downto 0));
end component;

-- parameterized module component instance
__ : ScreenRam
    port map (Din(5 downto 0)=>__, Clock=>__, ClockEn=>__, Reset=>__, Q(5 downto 0)=>__);
