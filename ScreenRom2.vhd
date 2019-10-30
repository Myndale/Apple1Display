-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.10.2.115
-- Module  Version: 5.4
--C:\lscc\diamond\3.10_x64\ispfpga\bin\nt64\scuba.exe -w -n ScreenRom2 -lang vhdl -synth synplify -bus_exp 7 -bb -arch xo2c00 -type bram -wp 00 -rp 1100 -addr_width 10 -data_width 6 -num_rows 1024 -cascade -1 -memfile c:/dev/apple1display/docs/lut_screen2.mem -memformat bin 

-- Sun Jul 21 16:56:14 2019

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity ScreenRom2 is
    port (
        Address: in  std_logic_vector(9 downto 0); 
        OutClock: in  std_logic; 
        OutClockEn: in  std_logic; 
        Reset: in  std_logic; 
        Q: out  std_logic_vector(5 downto 0));
end ScreenRom2;

architecture Structure of ScreenRom2 is

    -- internal signal declarations
    signal scuba_vhi: std_logic;
    signal scuba_vlo: std_logic;

    -- local component declarations
    component VHI
        port (Z: out  std_logic);
    end component;
    component VLO
        port (Z: out  std_logic);
    end component;
    component DP8KC
        generic (INIT_DATA : in String; INITVAL_1F : in String; 
                INITVAL_1E : in String; INITVAL_1D : in String; 
                INITVAL_1C : in String; INITVAL_1B : in String; 
                INITVAL_1A : in String; INITVAL_19 : in String; 
                INITVAL_18 : in String; INITVAL_17 : in String; 
                INITVAL_16 : in String; INITVAL_15 : in String; 
                INITVAL_14 : in String; INITVAL_13 : in String; 
                INITVAL_12 : in String; INITVAL_11 : in String; 
                INITVAL_10 : in String; INITVAL_0F : in String; 
                INITVAL_0E : in String; INITVAL_0D : in String; 
                INITVAL_0C : in String; INITVAL_0B : in String; 
                INITVAL_0A : in String; INITVAL_09 : in String; 
                INITVAL_08 : in String; INITVAL_07 : in String; 
                INITVAL_06 : in String; INITVAL_05 : in String; 
                INITVAL_04 : in String; INITVAL_03 : in String; 
                INITVAL_02 : in String; INITVAL_01 : in String; 
                INITVAL_00 : in String; ASYNC_RESET_RELEASE : in String; 
                RESETMODE : in String; GSR : in String; 
                WRITEMODE_B : in String; WRITEMODE_A : in String; 
                CSDECODE_B : in String; CSDECODE_A : in String; 
                REGMODE_B : in String; REGMODE_A : in String; 
                DATA_WIDTH_B : in Integer; DATA_WIDTH_A : in Integer);
        port (DIA8: in  std_logic; DIA7: in  std_logic; 
            DIA6: in  std_logic; DIA5: in  std_logic; 
            DIA4: in  std_logic; DIA3: in  std_logic; 
            DIA2: in  std_logic; DIA1: in  std_logic; 
            DIA0: in  std_logic; ADA12: in  std_logic; 
            ADA11: in  std_logic; ADA10: in  std_logic; 
            ADA9: in  std_logic; ADA8: in  std_logic; 
            ADA7: in  std_logic; ADA6: in  std_logic; 
            ADA5: in  std_logic; ADA4: in  std_logic; 
            ADA3: in  std_logic; ADA2: in  std_logic; 
            ADA1: in  std_logic; ADA0: in  std_logic; CEA: in  std_logic; 
            OCEA: in  std_logic; CLKA: in  std_logic; WEA: in  std_logic; 
            CSA2: in  std_logic; CSA1: in  std_logic; 
            CSA0: in  std_logic; RSTA: in  std_logic; 
            DIB8: in  std_logic; DIB7: in  std_logic; 
            DIB6: in  std_logic; DIB5: in  std_logic; 
            DIB4: in  std_logic; DIB3: in  std_logic; 
            DIB2: in  std_logic; DIB1: in  std_logic; 
            DIB0: in  std_logic; ADB12: in  std_logic; 
            ADB11: in  std_logic; ADB10: in  std_logic; 
            ADB9: in  std_logic; ADB8: in  std_logic; 
            ADB7: in  std_logic; ADB6: in  std_logic; 
            ADB5: in  std_logic; ADB4: in  std_logic; 
            ADB3: in  std_logic; ADB2: in  std_logic; 
            ADB1: in  std_logic; ADB0: in  std_logic; CEB: in  std_logic; 
            OCEB: in  std_logic; CLKB: in  std_logic; WEB: in  std_logic; 
            CSB2: in  std_logic; CSB1: in  std_logic; 
            CSB0: in  std_logic; RSTB: in  std_logic; 
            DOA8: out  std_logic; DOA7: out  std_logic; 
            DOA6: out  std_logic; DOA5: out  std_logic; 
            DOA4: out  std_logic; DOA3: out  std_logic; 
            DOA2: out  std_logic; DOA1: out  std_logic; 
            DOA0: out  std_logic; DOB8: out  std_logic; 
            DOB7: out  std_logic; DOB6: out  std_logic; 
            DOB5: out  std_logic; DOB4: out  std_logic; 
            DOB3: out  std_logic; DOB2: out  std_logic; 
            DOB1: out  std_logic; DOB0: out  std_logic);
    end component;
    attribute MEM_LPC_FILE : string; 
    attribute MEM_INIT_FILE : string; 
    attribute MEM_LPC_FILE of ScreenRom2_0_0_0 : label is "ScreenRom2.lpc";
    attribute MEM_INIT_FILE of ScreenRom2_0_0_0 : label is "lut_screen2.mem";
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    ScreenRom2_0_0_0: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x0402004020040200402004020040200402004020040200401A01E170402004020040200402004020", 
        INITVAL_1C=> "0x0402004020040200402004A2504A2504A2504A25046230463F05A2C0422D05A210582C0582C07621", 
        INITVAL_1B=> "0x0563F05423046230462504A2504A2504A2504A25046230462304A25046230462304A2B0762103C2D", 
        INITVAL_1A=> "0x0423B0583B0582C0582C0763F0462304A230462504A2504A2504A250462300000000000462304A25", 
        INITVAL_19=> "0x04A230461E0762D0422C0743A05C2E05C3A0743A0582C07A23046250462304A250462304A2504A25", 
        INITVAL_18=> "0x0000000000000000002304A2A0541E0422C05C2E05C2E05C2E05C200402E0743A0763F0462304623", 
        INITVAL_17=> "0x04A250542A0542504600000000000000000000000002507E2B0742E05C3A05C2E05C2E0742E05C2E", 
        INITVAL_16=> "0x05C2E0582D04C2304A2605425046230000000000000000000000000000000000007E2C05C2E0763B", 
        INITVAL_15=> "0x0582C0583B0762C05C2E0402005C2C07A2A07E250000000000000000000000000000000000000000", 
        INITVAL_14=> "0x0003D0742005C2C03C1E03C1E05A210763B0582E05C2E040200422D04A0000000000000000000000", 
        INITVAL_13=> "0x0000000000000000000007E2E05C2E05C2C0583B042210763B0583A0742E0743A05C2E0402E05A25", 
        INITVAL_12=> "0x00000000000000000000000000000000000000250583A0762C05C2E0743A05C2E0402E0582C05C2E", 
        INITVAL_11=> "0x0583B0763A040200401E000000000000000000000000000000000000002B05C2105A210762C0762D", 
        INITVAL_10=> "0x03C2D042210423B076210422105A2105C2C0583A046000000000000000000000000000000000002B", 
        INITVAL_0F=> "0x0741E07E3F07A1E03C3F0542A04C3D03C1E0563D07A3D07A3D0583A0582005600000000000000000", 
        INITVAL_0E=> "0x0000000000000000002A05C2104C3F0561E05A2D0562504C2D042210422103C2B07A3F0762004020", 
        INITVAL_0D=> "0x074250000000000000000000000000000000003F0403A0561E0763A05C200742B0563A040200402E", 
        INITVAL_0C=> "0x058210562B07420040200402A00000000000000000000000000000004A2C040200421E0763A05C2E", 
        INITVAL_0B=> "0x0582D03C2D0583A0742C0761E07A2104020040200403F00000000000000000000000000000005620", 
        INITVAL_0A=> "0x040200741E0561E03C2B0561E03C2B07A2B0562B07A3F07E2C04020040200402B000000000000000", 
        INITVAL_09=> "0x00000000000000004C2E040200402C03C3D07E3F03C3B0763B05A2D0422103C3F07A3A0402004020", 
        INITVAL_08=> "0x05C2A0000000000000000000000000000000003D07420040200742D07A2B0423A0402005C2E04020", 
        INITVAL_07=> "0x05C2C058200402004020076000000000000000000000000000000000000007A20040200403A0763B", 
        INITVAL_06=> "0x0742E0402004020040200402004020040200402007A0000000000000000000000000000000000000", 
        INITVAL_05=> "0x0461E0742005C2004020040200402004020040200402004020040200403B04600000000000000000", 
        INITVAL_04=> "0x000000000000000000000000004A2B05C2E05C2E0402004020040200402E05C20040200402004225", 
        INITVAL_03=> "0x000000000000000000000000000000000000000000000000000562E0402E05C2E040200402004020", 
        INITVAL_02=> "0x0402E05C3A05A2600000000000000000000000000000000000000000000000000000000002A03C3B", 
        INITVAL_01=> "0x0742E05C2004020040200562A0542300000000000000000000000000000000000000000000000000", 
        INITVAL_00=> "0x0000000000000000002304C1E0762C0762D03C260000000000000000000000000000000000000000", 
        CSDECODE_B=> "0b111", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  9, 
        DATA_WIDTH_A=>  9)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>scuba_vlo, DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>scuba_vlo, DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>Address(9), ADA11=>Address(8), ADA10=>Address(7), 
            ADA9=>Address(6), ADA8=>Address(5), ADA7=>Address(4), 
            ADA6=>Address(3), ADA5=>Address(2), ADA4=>Address(1), 
            ADA3=>Address(0), ADA2=>scuba_vlo, ADA1=>scuba_vlo, 
            ADA0=>scuba_vhi, CEA=>OutClockEn, OCEA=>OutClockEn, 
            CLKA=>OutClock, WEA=>scuba_vlo, CSA2=>scuba_vlo, 
            CSA1=>scuba_vlo, CSA0=>scuba_vlo, RSTA=>Reset, 
            DIB8=>scuba_vlo, DIB7=>scuba_vlo, DIB6=>scuba_vlo, 
            DIB5=>scuba_vlo, DIB4=>scuba_vlo, DIB3=>scuba_vlo, 
            DIB2=>scuba_vlo, DIB1=>scuba_vlo, DIB0=>scuba_vlo, 
            ADB12=>scuba_vlo, ADB11=>scuba_vlo, ADB10=>scuba_vlo, 
            ADB9=>scuba_vlo, ADB8=>scuba_vlo, ADB7=>scuba_vlo, 
            ADB6=>scuba_vlo, ADB5=>scuba_vlo, ADB4=>scuba_vlo, 
            ADB3=>scuba_vlo, ADB2=>scuba_vlo, ADB1=>scuba_vlo, 
            ADB0=>scuba_vlo, CEB=>scuba_vhi, OCEB=>scuba_vhi, 
            CLKB=>scuba_vlo, WEB=>scuba_vlo, CSB2=>scuba_vlo, 
            CSB1=>scuba_vlo, CSB0=>scuba_vlo, RSTB=>scuba_vlo, 
            DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>Q(5), DOA4=>Q(4), 
            DOA3=>Q(3), DOA2=>Q(2), DOA1=>Q(1), DOA0=>Q(0), DOB8=>open, 
            DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, DOB3=>open, 
            DOB2=>open, DOB1=>open, DOB0=>open);

end Structure;

-- synopsys translate_off
library MACHXO2;
configuration Structure_CON of ScreenRom2 is
    for Structure
        for all:VHI use entity MACHXO2.VHI(V); end for;
        for all:VLO use entity MACHXO2.VLO(V); end for;
        for all:DP8KC use entity MACHXO2.DP8KC(V); end for;
    end for;
end Structure_CON;

-- synopsys translate_on
