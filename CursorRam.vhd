-- VHDL netlist generated by SCUBA Diamond (64-bit) 3.10.2.115
-- Module  Version: 5.2
--C:\lscc\diamond\3.10_x64\ispfpga\bin\nt64\scuba.exe -w -n CursorRam -lang vhdl -synth synplify -bus_exp 7 -bb -arch xo2c00 -type shiftreg -width 1 -depth 1024 -mode 8 

-- Thu Aug 08 17:25:26 2019

library IEEE;
use IEEE.std_logic_1164.all;
-- synopsys translate_off
library MACHXO2;
use MACHXO2.components.all;
-- synopsys translate_on

entity CursorRam is
    port (
        Din: in  std_logic_vector(0 downto 0); 
        Clock: in  std_logic; 
        ClockEn: in  std_logic; 
        Reset: in  std_logic; 
        Q: out  std_logic_vector(0 downto 0));
end CursorRam;

architecture Structure of CursorRam is

    -- internal signal declarations
    signal shreg_addr_w0_inv: std_logic;
    signal func_and_inet_2: std_logic;
    signal func_and_inet_1: std_logic;
    signal func_and_inet: std_logic;
    signal dec0_r2046: std_logic;
    signal Reset_inv: std_logic;
    signal srrst_ctr: std_logic;
    signal scuba_vlo: std_logic;
    signal scuba_vhi: std_logic;
    signal ishreg_addr_w0: std_logic;
    signal ishreg_addr_w1: std_logic;
    signal sreg_0_ctr_1_ci: std_logic;
    signal shreg_addr_w0: std_logic;
    signal shreg_addr_w1: std_logic;
    signal ishreg_addr_w2: std_logic;
    signal ishreg_addr_w3: std_logic;
    signal co0: std_logic;
    signal shreg_addr_w2: std_logic;
    signal shreg_addr_w3: std_logic;
    signal ishreg_addr_w4: std_logic;
    signal ishreg_addr_w5: std_logic;
    signal co1: std_logic;
    signal shreg_addr_w4: std_logic;
    signal shreg_addr_w5: std_logic;
    signal ishreg_addr_w6: std_logic;
    signal ishreg_addr_w7: std_logic;
    signal co2: std_logic;
    signal shreg_addr_w6: std_logic;
    signal shreg_addr_w7: std_logic;
    signal ishreg_addr_w8: std_logic;
    signal ishreg_addr_w9: std_logic;
    signal co4: std_logic;
    signal co3: std_logic;
    signal shreg_addr_w8: std_logic;
    signal shreg_addr_w9: std_logic;

    -- local component declarations
    component CU2
        port (CI: in  std_logic; PC0: in  std_logic; PC1: in  std_logic; 
            CO: out  std_logic; NC0: out  std_logic; NC1: out  std_logic);
    end component;
    component FADD2B
        port (A0: in  std_logic; A1: in  std_logic; B0: in  std_logic; 
            B1: in  std_logic; CI: in  std_logic; COUT: out  std_logic; 
            S0: out  std_logic; S1: out  std_logic);
    end component;
    component FD1P3IX
        port (D: in  std_logic; SP: in  std_logic; CK: in  std_logic; 
            CD: in  std_logic; Q: out  std_logic);
    end component;
    component INV
        port (A: in  std_logic; Z: out  std_logic);
    end component;
    component OR2
        port (A: in  std_logic; B: in  std_logic; Z: out  std_logic);
    end component;
    component ROM16X1A
        generic (INITVAL : in std_logic_vector(15 downto 0));
        port (AD3: in  std_logic; AD2: in  std_logic; AD1: in  std_logic; 
            AD0: in  std_logic; DO0: out  std_logic);
    end component;
    component VHI
        port (Z: out  std_logic);
    end component;
    component VLO
        port (Z: out  std_logic);
    end component;
    component DP8KC
        generic (INIT_DATA : in String; ASYNC_RESET_RELEASE : in String; 
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
    attribute GSR : string; 
    attribute MEM_LPC_FILE of sram_1_0_0_0 : label is "CursorRam.lpc";
    attribute MEM_INIT_FILE of sram_1_0_0_0 : label is "";
    attribute GSR of FF_9 : label is "ENABLED";
    attribute GSR of FF_8 : label is "ENABLED";
    attribute GSR of FF_7 : label is "ENABLED";
    attribute GSR of FF_6 : label is "ENABLED";
    attribute GSR of FF_5 : label is "ENABLED";
    attribute GSR of FF_4 : label is "ENABLED";
    attribute GSR of FF_3 : label is "ENABLED";
    attribute GSR of FF_2 : label is "ENABLED";
    attribute GSR of FF_1 : label is "ENABLED";
    attribute GSR of FF_0 : label is "ENABLED";
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    INV_1: INV
        port map (A=>shreg_addr_w0, Z=>shreg_addr_w0_inv);

    LUT4_3: ROM16X1A
        generic map (initval=> X"8000")
        port map (AD3=>shreg_addr_w0_inv, AD2=>shreg_addr_w1, 
            AD1=>shreg_addr_w2, AD0=>shreg_addr_w3, DO0=>func_and_inet);

    LUT4_2: ROM16X1A
        generic map (initval=> X"8000")
        port map (AD3=>shreg_addr_w4, AD2=>shreg_addr_w5, 
            AD1=>shreg_addr_w6, AD0=>shreg_addr_w7, DO0=>func_and_inet_1);

    LUT4_1: ROM16X1A
        generic map (initval=> X"8000")
        port map (AD3=>shreg_addr_w8, AD2=>shreg_addr_w9, AD1=>ClockEn, 
            AD0=>scuba_vhi, DO0=>func_and_inet_2);

    LUT4_0: ROM16X1A
        generic map (initval=> X"8000")
        port map (AD3=>func_and_inet, AD2=>func_and_inet_1, 
            AD1=>func_and_inet_2, AD0=>scuba_vhi, DO0=>dec0_r2046);

    OR2_t0: OR2
        port map (A=>Reset, B=>dec0_r2046, Z=>srrst_ctr);

    INV_0: INV
        port map (A=>Reset, Z=>Reset_inv);

    sram_1_0_0_0: DP8KC
        generic map (INIT_DATA=> "STATIC", ASYNC_RESET_RELEASE=> "SYNC", 
        CSDECODE_B=> "0b111", CSDECODE_A=> "0b000", WRITEMODE_B=> "NORMAL", 
        WRITEMODE_A=> "READBEFOREWRITE", GSR=> "ENABLED", RESETMODE=> "ASYNC", 
        REGMODE_B=> "NOREG", REGMODE_A=> "NOREG", DATA_WIDTH_B=>  1, 
        DATA_WIDTH_A=>  1)
        port map (DIA8=>scuba_vlo, DIA7=>scuba_vlo, DIA6=>scuba_vlo, 
            DIA5=>scuba_vlo, DIA4=>scuba_vlo, DIA3=>scuba_vlo, 
            DIA2=>scuba_vlo, DIA1=>Din(0), DIA0=>scuba_vlo, 
            ADA12=>scuba_vlo, ADA11=>scuba_vlo, ADA10=>scuba_vlo, 
            ADA9=>shreg_addr_w9, ADA8=>shreg_addr_w8, 
            ADA7=>shreg_addr_w7, ADA6=>shreg_addr_w6, 
            ADA5=>shreg_addr_w5, ADA4=>shreg_addr_w4, 
            ADA3=>shreg_addr_w3, ADA2=>shreg_addr_w2, 
            ADA1=>shreg_addr_w1, ADA0=>shreg_addr_w0, CEA=>ClockEn, 
            OCEA=>ClockEn, CLKA=>Clock, WEA=>Reset_inv, CSA2=>scuba_vlo, 
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
            DOA3=>open, DOA2=>open, DOA1=>open, DOA0=>Q(0), DOB8=>open, 
            DOB7=>open, DOB6=>open, DOB5=>open, DOB4=>open, DOB3=>open, 
            DOB2=>open, DOB1=>open, DOB0=>open);

    FF_9: FD1P3IX
        port map (D=>ishreg_addr_w0, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w0);

    FF_8: FD1P3IX
        port map (D=>ishreg_addr_w1, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w1);

    FF_7: FD1P3IX
        port map (D=>ishreg_addr_w2, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w2);

    FF_6: FD1P3IX
        port map (D=>ishreg_addr_w3, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w3);

    FF_5: FD1P3IX
        port map (D=>ishreg_addr_w4, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w4);

    FF_4: FD1P3IX
        port map (D=>ishreg_addr_w5, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w5);

    FF_3: FD1P3IX
        port map (D=>ishreg_addr_w6, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w6);

    FF_2: FD1P3IX
        port map (D=>ishreg_addr_w7, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w7);

    FF_1: FD1P3IX
        port map (D=>ishreg_addr_w8, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w8);

    FF_0: FD1P3IX
        port map (D=>ishreg_addr_w9, SP=>ClockEn, CK=>Clock, 
            CD=>srrst_ctr, Q=>shreg_addr_w9);

    scuba_vlo_inst: VLO
        port map (Z=>scuba_vlo);

    scuba_vhi_inst: VHI
        port map (Z=>scuba_vhi);

    sreg_0_ctr_1_cia: FADD2B
        port map (A0=>scuba_vlo, A1=>scuba_vhi, B0=>scuba_vlo, 
            B1=>scuba_vhi, CI=>scuba_vlo, COUT=>sreg_0_ctr_1_ci, 
            S0=>open, S1=>open);

    sreg_0_ctr_1_0: CU2
        port map (CI=>sreg_0_ctr_1_ci, PC0=>shreg_addr_w0, 
            PC1=>shreg_addr_w1, CO=>co0, NC0=>ishreg_addr_w0, 
            NC1=>ishreg_addr_w1);

    sreg_0_ctr_1_1: CU2
        port map (CI=>co0, PC0=>shreg_addr_w2, PC1=>shreg_addr_w3, 
            CO=>co1, NC0=>ishreg_addr_w2, NC1=>ishreg_addr_w3);

    sreg_0_ctr_1_2: CU2
        port map (CI=>co1, PC0=>shreg_addr_w4, PC1=>shreg_addr_w5, 
            CO=>co2, NC0=>ishreg_addr_w4, NC1=>ishreg_addr_w5);

    sreg_0_ctr_1_3: CU2
        port map (CI=>co2, PC0=>shreg_addr_w6, PC1=>shreg_addr_w7, 
            CO=>co3, NC0=>ishreg_addr_w6, NC1=>ishreg_addr_w7);

    sreg_0_ctr_1_4: CU2
        port map (CI=>co3, PC0=>shreg_addr_w8, PC1=>shreg_addr_w9, 
            CO=>co4, NC0=>ishreg_addr_w8, NC1=>ishreg_addr_w9);

end Structure;

-- synopsys translate_off
library MACHXO2;
configuration Structure_CON of CursorRam is
    for Structure
        for all:CU2 use entity MACHXO2.CU2(V); end for;
        for all:FADD2B use entity MACHXO2.FADD2B(V); end for;
        for all:FD1P3IX use entity MACHXO2.FD1P3IX(V); end for;
        for all:INV use entity MACHXO2.INV(V); end for;
        for all:OR2 use entity MACHXO2.OR2(V); end for;
        for all:ROM16X1A use entity MACHXO2.ROM16X1A(V); end for;
        for all:VHI use entity MACHXO2.VHI(V); end for;
        for all:VLO use entity MACHXO2.VLO(V); end for;
        for all:DP8KC use entity MACHXO2.DP8KC(V); end for;
    end for;
end Structure_CON;

-- synopsys translate_on
