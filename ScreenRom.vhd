-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.10.2.115
-- Module  Version: 5.4
--C:\lscc\diamond\3.10_x64\ispfpga\bin\nt64\scuba.exe -w -n ScreenRom -lang vhdl -synth synplify -bus_exp 7 -bb -arch xo2c00 -type bram -wp 00 -rp 1100 -addr_width 11 -data_width 6 -num_rows 2048 -cascade -1 -memfile c:/dev/apple1display/docs/lut_screen.mem -memformat bin 

-- Sat Jul 20 18:53:59 2019

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity ScreenRom is
    port (
        Address: in  std_logic_vector(10 downto 0); 
        OutClock: in  std_logic; 
        OutClockEn: in  std_logic; 
        Reset: in  std_logic; 
        Q: out  std_logic_vector(5 downto 0));
end ScreenRom;

architecture Structure of ScreenRom is

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
    attribute MEM_LPC_FILE of ScreenRom_0_0_1 : label is "ScreenRom.lpc";
    attribute MEM_INIT_FILE of ScreenRom_0_0_1 : label is "lut_screen.mem";
    attribute MEM_LPC_FILE of ScreenRom_0_1_0 : label is "ScreenRom.lpc";
    attribute MEM_INIT_FILE of ScreenRom_0_1_0 : label is "lut_screen.mem";
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    ScreenRom_0_0_1: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x000000000000000000000000000000000000000A00000000F7000000000000000000000000000000", 
        INITVAL_16=> "0x00000000550AA550AA33000000003F1B81D1A2CC00000000CC162BF1463300000000350AA550AA55", 
        INITVAL_15=> "0x00000000330665506633000000005B162ED036CB00000000CC198BF0665300000000350AA550AA33", 
        INITVAL_14=> "0x0000000000000330AA53000000003E17A1C154EE00000000EA154CC1A63500000000330AA330AA55", 
        INITVAL_13=> "0x0000000000000000065A00000000AE038EE1DCEE00000000E001CAA17E3300000000330AAAA14A30", 
        INITVAL_12=> "0x0000000000000000000500000000FB15CEA1DCEE00000000AE1DCEE19A63000000005614A3300000", 
        INITVAL_11=> "0x0000000000000000000000000000FC1DCBB198CB00000000BC1DC001D8DA00000000F50000000000", 
        INITVAL_10=> "0x0000000000000000000D00000000A01D8EE1DCD100000000BB19CEE0001D00000000500000000000", 
        INITVAL_0F=> "0x000000000000000000FE00000000EE1D8CB022BB00000000CA15CAA1DC0E00000000D50000000000", 
        INITVAL_0E=> "0x00000000000000000ACA00000000BC1DCAA1DC0E00000000CC1DCCB17400000000000E0000000000", 
        INITVAL_0D=> "0x000000000000000016E100000000D1178BD1DA11000000001B162111A2EC00000000CA0600000000", 
        INITVAL_0C=> "0x000000000000000016AE00000000FF1BCEF1546D00000000EE17ADD1BACA00000000C01600000000", 
        INITVAL_0B=> "0x000000000000000014E1000000006F17CDD16A6D0000000011022EB1BEB0000000000014A0000000", 
        INITVAL_0A=> "0x00000000000000001E0A00000000BE174E0156BA000000000001CC1176A000000000000140000000", 
        INITVAL_09=> "0x0000000000000000B800000000001E174EE19AED00000000CA158BE1A200000000000001E0000000", 
        INITVAL_08=> "0x0000000000000001600000000000AE17CEB17CEB00000000DB176DF1F80000000000000160000000", 
        INITVAL_07=> "0x0000000000000000DC00000000000C1DAFF1D6BB00000000DD022EF1B40000000000001D40000000", 
        INITVAL_06=> "0x00000000000000001AA0000000000015ADB0340000000000EE000EC1800000000000001600000000", 
        INITVAL_05=> "0x000000000000000000D00000000000014BB15C000000000000000000000000000000001A00000000", 
        INITVAL_04=> "0x0000000000000000003E00000000A01C0000000000000000000000000000000000000B0600000000", 
        INITVAL_03=> "0x00000000000000000000000000005B1DCEE00000000000000001CE00000000000000150000000000", 
        INITVAL_02=> "0x00000000000000000000000000000017C0E1DC0000000000000000E1D4D600000000000000000000", 
        INITVAL_01=> "0x000000000000000000000000000000014EB15CE00000000000000BA1460000000000000000000000", 
        INITVAL_00=> "0x000000000000000000000000000000000030DCBC00000000BD1CC000000000000000000000000000", 
        CSDECODE_B=> "0b111", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  4, 
        DATA_WIDTH_A=>  4)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>scuba_vlo, DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>scuba_vlo, DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>Address(10), ADA11=>Address(9), ADA10=>Address(8), 
            ADA9=>Address(7), ADA8=>Address(6), ADA7=>Address(5), 
            ADA6=>Address(4), ADA5=>Address(3), ADA4=>Address(2), 
            ADA3=>Address(1), ADA2=>Address(0), ADA1=>scuba_vlo, 
            ADA0=>scuba_vlo, CEA=>OutClockEn, OCEA=>OutClockEn, 
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
            DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>open, DOA4=>open, 
            DOA3=>Q(3), DOA2=>Q(2), DOA1=>Q(1), DOA0=>Q(0), DOB8=>open, 
            DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, DOB3=>open, 
            DOB2=>open, DOB1=>open, DOB0=>open);

    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    ScreenRom_0_1_0: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        INITVAL_1F=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1E=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1D=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1C=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1B=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_1A=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_19=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_18=> "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", 
        INITVAL_17=> "0x00000000220442204422000000002204422044210000000001044220442200000000220442204422", 
        INITVAL_16=> "0x00000000220442204422000000002304422044220000000022064230442200000000220442204422", 
        INITVAL_15=> "0x00000000220442204422000000002206412046230000000022044330442200000000220442204422", 
        INITVAL_14=> "0x00000000000002204422000000002106422066220000000023066220642200000000220442204422", 
        INITVAL_13=> "0x00000000000000000422000000002104422044220000000022044330662200000000220442204420", 
        INITVAL_12=> "0x00000000000000000002000000003206423044220000000032044220442200000000220442200000", 
        INITVAL_11=> "0x00000000000000000000000000003204433044230000000032044220443200000000320000000000", 
        INITVAL_10=> "0x00000000000000000003000000003204411022220000000033044220442200000000200000000000", 
        INITVAL_0F=> "0x00000000000000000032000000002204423044330000000023064330442200000000220000000000", 
        INITVAL_0E=> "0x00000000000000000423000000003204433044220000000022044230662200000000210000000000", 
        INITVAL_0D=> "0x00000000000000000422000000002206432024220000000023064220442200000000230400000000", 
        INITVAL_0C=> "0x00000000000000000431000000003306213044230000000011046330662300000000220400000000", 
        INITVAL_0B=> "0x00000000000000000422000000002304222044220000000022044120663200000000220640000000", 
        INITVAL_0A=> "0x00000000000000000623000000002106622064230000000022044220443200000000220440000000", 
        INITVAL_09=> "0x00000000000000004422000000002106622044120000000023064310642200000000220460000000", 
        INITVAL_08=> "0x00000000000000004422000000003104212042120000000032044330642200000000220440000000", 
        INITVAL_07=> "0x00000000000000004422000000002202633026330000000022044130662200000000220440000000", 
        INITVAL_06=> "0x00000000000000000632000000002206432046220000000022044220442200000000220600000000", 
        INITVAL_05=> "0x00000000000000000032000000002204633064220000000022044220442200000000220600000000", 
        INITVAL_04=> "0x00000000000000000021000000003204422044220000000022044220442200000000230400000000", 
        INITVAL_03=> "0x00000000000000000000000000002204422044220000000022044220442200000000220000000000", 
        INITVAL_02=> "0x00000000000000000000000000000004422044220000000022044220462200000000000000000000", 
        INITVAL_01=> "0x00000000000000000000000000000000413064220000000022044220440000000000000000000000", 
        INITVAL_00=> "0x00000000000000000000000000000000002042320000000032024000000000000000000000000000", 
        CSDECODE_B=> "0b111", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "NORMAL", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  4, 
        DATA_WIDTH_A=>  4)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>scuba_vlo, DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>scuba_vlo, DIA1=>scuba_vlo, DIA0=>scuba_vlo, 
            ADA12=>Address(10), ADA11=>Address(9), ADA10=>Address(8), 
            ADA9=>Address(7), ADA8=>Address(6), ADA7=>Address(5), 
            ADA6=>Address(4), ADA5=>Address(3), ADA4=>Address(2), 
            ADA3=>Address(1), ADA2=>Address(0), ADA1=>scuba_vlo, 
            ADA0=>scuba_vlo, CEA=>OutClockEn, OCEA=>OutClockEn, 
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
            DOA8=>open, DOA7=>open, DOA6=>open, DOA5=>open, DOA4=>open, 
            DOA3=>open, DOA2=>open, DOA1=>Q(5), DOA0=>Q(4), DOB8=>open, 
            DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, DOB3=>open, 
            DOB2=>open, DOB1=>open, DOB0=>open);

end Structure;

-- synopsys translate_off
library MACHXO2;
configuration Structure_CON of ScreenRom is
    for Structure
        for all:VHI use entity MACHXO2.VHI(V); end for;
        for all:VLO use entity MACHXO2.VLO(V); end for;
        for all:DP8KC use entity MACHXO2.DP8KC(V); end for;
    end for;
end Structure_CON;

-- synopsys translate_on
