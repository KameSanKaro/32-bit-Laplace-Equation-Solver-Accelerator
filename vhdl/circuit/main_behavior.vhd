--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF main IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT gridcell
         PORT ( Clk               : IN  std_logic;
                ERR_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
                IN01              : IN  std_logic_vector( 31 DOWNTO 0 );
                IN0NEG1           : IN  std_logic_vector( 31 DOWNTO 0 );
                IN10              : IN  std_logic_vector( 31 DOWNTO 0 );
                INNEG10           : IN  std_logic_vector( 31 DOWNTO 0 );
                MIN_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
                Reset             : IN  std_logic;
                VAL               : IN  std_logic_vector( 31 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                GC_VAL            : OUT std_logic_vector( 31 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT BoundaryCell
         PORT ( Clk               : IN  std_logic;
                INIT_VAL          : IN  std_logic_vector( 31 DOWNTO 0 );
                NEXT_VAL          : IN  std_logic_vector( 31 DOWNTO 0 );
                Reset             : IN  std_logic;
                VonNeumann        : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                GC_VAL            : OUT std_logic_vector( 31 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus1  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus10 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus12 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus13 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus14 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus15 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus17 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus18 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus19 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus2  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus20 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus21 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus22 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus23 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus24 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus26 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus27 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus28 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus29 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus30 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus31 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus32 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus33 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus34 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus35 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus36 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus37 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus38 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus39 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus40 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus41 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus42 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus43 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus44 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus45 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus46 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus47 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus48 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus49 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus50 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus51 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus52 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus53 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus54 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus55 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus56 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus57 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus58 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus59 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus60 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus61 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus62 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus63 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus64 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus65 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus66 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus67 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus68 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus69 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus7  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus70 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus71 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus72 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus73 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus74 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus75 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus76 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus77 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet4 <= logisimClockTree0(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet11 <= VonNeumann;
   s_logisimNet3  <= Reset;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   TEST_OUT <= s_logisimBus68(3 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimBus1(31 DOWNTO 0)  <=  X"00000010";


   -- Constant
    s_logisimBus27(31 DOWNTO 0)  <=  X"00000001";


   -- Constant
    s_logisimBus38(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus75(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus52(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus77(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus67(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus53(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus65(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus74(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus63(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus41(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus57(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus48(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus61(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus76(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus72(31 DOWNTO 0)  <=  X"00010000";


   -- Constant
    s_logisimBus16(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus37(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus28(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus36(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus64(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus47(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus70(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus30(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus33(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus12(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus73(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus6(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus43(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus58(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus45(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus55(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus25(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus59(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus54(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus69(31 DOWNTO 0)  <=  X"00000000";


   -- Constant
    s_logisimBus21(31 DOWNTO 0)  <=  X"00000000";


   -- Bit Extender
    s_logisimBus68(0)  <=  s_logisimBus44(0);
    s_logisimBus68(1)  <=  s_logisimBus44(1);
    s_logisimBus68(2)  <=  s_logisimBus44(2);
    s_logisimBus68(3)  <=  s_logisimBus44(3);


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   gridcell_1 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus5(31 DOWNTO 0),
                 IN01              => s_logisimBus62(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus34(31 DOWNTO 0),
                 IN10              => s_logisimBus18(31 DOWNTO 0),
                 INNEG10           => s_logisimBus32(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus63(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_5 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus34(31 DOWNTO 0),
                 IN01              => s_logisimBus5(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus2(31 DOWNTO 0),
                 IN10              => s_logisimBus49(31 DOWNTO 0),
                 INNEG10           => s_logisimBus14(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus74(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_9 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus2(31 DOWNTO 0),
                 IN01              => s_logisimBus34(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus46(31 DOWNTO 0),
                 IN10              => s_logisimBus44(31 DOWNTO 0),
                 INNEG10           => s_logisimBus56(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus41(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_13 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus46(31 DOWNTO 0),
                 IN01              => s_logisimBus2(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus20(31 DOWNTO 0),
                 IN10              => s_logisimBus15(31 DOWNTO 0),
                 INNEG10           => s_logisimBus24(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus48(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_16 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus20(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus65(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus46(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_2 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus62(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus57(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus5(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_2 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus18(31 DOWNTO 0),
                 IN01              => s_logisimBus26(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus49(31 DOWNTO 0),
                 IN10              => s_logisimBus10(31 DOWNTO 0),
                 INNEG10           => s_logisimBus5(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus61(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_6 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus49(31 DOWNTO 0),
                 IN01              => s_logisimBus18(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus44(31 DOWNTO 0),
                 IN10              => s_logisimBus7(31 DOWNTO 0),
                 INNEG10           => s_logisimBus34(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus37(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_10 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus44(31 DOWNTO 0),
                 IN01              => s_logisimBus49(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus15(31 DOWNTO 0),
                 IN10              => s_logisimBus0(31 DOWNTO 0),
                 INNEG10           => s_logisimBus2(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus72(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_14 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus15(31 DOWNTO 0),
                 IN01              => s_logisimBus44(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus42(31 DOWNTO 0),
                 IN10              => s_logisimBus22(31 DOWNTO 0),
                 INNEG10           => s_logisimBus46(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus28(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_17 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus42(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus16(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus15(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_3 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus26(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus76(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus18(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_3 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus10(31 DOWNTO 0),
                 IN01              => s_logisimBus39(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus7(31 DOWNTO 0),
                 IN10              => s_logisimBus9(31 DOWNTO 0),
                 INNEG10           => s_logisimBus18(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus70(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_7 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus7(31 DOWNTO 0),
                 IN01              => s_logisimBus10(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus0(31 DOWNTO 0),
                 IN10              => s_logisimBus23(31 DOWNTO 0),
                 INNEG10           => s_logisimBus49(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus30(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_11 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus0(31 DOWNTO 0),
                 IN01              => s_logisimBus7(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus22(31 DOWNTO 0),
                 IN10              => s_logisimBus35(31 DOWNTO 0),
                 INNEG10           => s_logisimBus0(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus36(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_15 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus22(31 DOWNTO 0),
                 IN01              => s_logisimBus0(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus17(31 DOWNTO 0),
                 IN10              => s_logisimBus13(31 DOWNTO 0),
                 INNEG10           => s_logisimBus15(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus64(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_18 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus17(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus47(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus22(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_4 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus39(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus33(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus10(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_4 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus9(31 DOWNTO 0),
                 IN01              => s_logisimBus66(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus23(31 DOWNTO 0),
                 IN10              => s_logisimBus8(31 DOWNTO 0),
                 INNEG10           => s_logisimBus10(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus12(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_8 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus23(31 DOWNTO 0),
                 IN01              => s_logisimBus9(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus35(31 DOWNTO 0),
                 IN10              => s_logisimBus19(31 DOWNTO 0),
                 INNEG10           => s_logisimBus7(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus58(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_12 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus35(31 DOWNTO 0),
                 IN01              => s_logisimBus23(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus13(31 DOWNTO 0),
                 IN10              => s_logisimBus40(31 DOWNTO 0),
                 INNEG10           => s_logisimBus0(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus45(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   gridcell_16 : gridcell
      PORT MAP ( Clk               => s_logisimNet4,
                 ERR_TOL           => s_logisimBus1(31 DOWNTO 0),
                 GC_VAL            => s_logisimBus13(31 DOWNTO 0),
                 IN01              => s_logisimBus35(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus29(31 DOWNTO 0),
                 IN10              => s_logisimBus50(31 DOWNTO 0),
                 INNEG10           => s_logisimBus22(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus27(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VAL               => s_logisimBus73(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_19 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus29(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus43(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus13(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_5 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus66(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus6(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus9(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_8 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus8(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus25(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus9(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_10 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus19(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus69(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus23(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_12 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus40(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus21(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus35(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_14 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus50(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus55(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus13(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_20 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus60(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus59(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus13(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_6 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus31(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus54(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus9(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_7 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus32(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus75(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus5(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_9 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus14(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus52(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus34(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_11 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus56(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus77(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus2(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_13 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus24(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus67(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus46(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_15 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus71(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus53(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus46(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

   BoundaryCell_1 : BoundaryCell
      PORT MAP ( Clk               => s_logisimNet4,
                 GC_VAL            => s_logisimBus51(31 DOWNTO 0),
                 INIT_VAL          => s_logisimBus38(31 DOWNTO 0),
                 NEXT_VAL          => s_logisimBus5(31 DOWNTO 0),
                 Reset             => s_logisimNet3,
                 VonNeumann        => s_logisimNet11,
                 logisimClockTree0 => logisimClockTree0 );

END platformIndependent;
