--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT synthesizedClockGenerator
         PORT ( FPGAClock        : IN  std_logic;
                SynthesizedClock : OUT std_logic );
      END COMPONENT;

      COMPONENT logisimTickGenerator
         GENERIC ( nrOfBits    : INTEGER;
                   reloadValue : INTEGER );
         PORT ( FPGAClock : IN  std_logic;
                FPGATick  : OUT std_logic );
      END COMPONENT;

      COMPONENT LogisimClockComponent
         GENERIC ( highTicks : INTEGER;
                   lowTicks  : INTEGER;
                   nrOfBits  : INTEGER;
                   phase     : INTEGER );
         PORT ( clockTick   : IN  std_logic;
                globalClock : IN  std_logic;
                clockBus    : OUT std_logic_vector( 4 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT main
         PORT ( Reset             : IN  std_logic;
                VonNeumann        : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                TEST_OUT          : OUT std_logic_vector( 3 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_Reset             : std_logic;
   SIGNAL s_TEST_OUT          : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_VonNeumann        : std_logic;
   SIGNAL s_fpgaTick          : std_logic;
   SIGNAL s_logisimClockTree0 : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_synthesizedClock  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   n_TEST_OUT_0 <=  NOT s_TEST_OUT(0);
   n_TEST_OUT_1 <=  NOT s_TEST_OUT(1);
   n_TEST_OUT_2 <=  NOT s_TEST_OUT(2);
   n_TEST_OUT_3 <=  NOT s_TEST_OUT(3);
   s_Reset      <= Reset_0;
   s_VonNeumann <= VonNeumann_0;

   --------------------------------------------------------------------------------
   -- The clock tree components are defined here                                 --
   --------------------------------------------------------------------------------
   BASE_0 : synthesizedClockGenerator
      PORT MAP ( FPGAClock        => fpgaGlobalClock,
                 SynthesizedClock => s_synthesizedClock );

   BASE_1 : logisimTickGenerator
      GENERIC MAP ( nrOfBits    => 7,
                    reloadValue => 98 )
      PORT MAP ( FPGAClock => s_synthesizedClock,
                 FPGATick  => s_fpgaTick );

   Clk : LogisimClockComponent
      GENERIC MAP ( highTicks => 1,
                    lowTicks  => 1,
                    nrOfBits  => 1,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree0,
                 clockTick   => s_fpgaTick,
                 globalClock => s_synthesizedClock );

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : main
      PORT MAP ( Reset             => s_Reset,
                 TEST_OUT          => s_TEST_OUT,
                 VonNeumann        => s_VonNeumann,
                 logisimClockTree0 => s_logisimClockTree0 );
END platformIndependent;
