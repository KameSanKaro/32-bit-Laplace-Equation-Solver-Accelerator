--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : gridcell                                                     ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF gridcell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT gridcellREGALU
         PORT ( Clk               : IN  std_logic;
                IN01              : IN  std_logic_vector( 31 DOWNTO 0 );
                IN0NEG1           : IN  std_logic_vector( 31 DOWNTO 0 );
                IN10              : IN  std_logic_vector( 31 DOWNTO 0 );
                INNEG10           : IN  std_logic_vector( 31 DOWNTO 0 );
                Load              : IN  std_logic;
                Reset             : IN  std_logic;
                Shift             : IN  std_logic;
                VAL               : IN  std_logic_vector( 31 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                NEW_VAL           : OUT std_logic_vector( 31 DOWNTO 0 );
                OLD_VAL           : OUT std_logic_vector( 31 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT cellFSM
         PORT ( CONV_FLAG         : IN  std_logic;
                Clk               : IN  std_logic;
                Reset             : IN  std_logic;
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                Load              : OUT std_logic;
                Shift             : OUT std_logic );
      END COMPONENT;

      COMPONENT ConvergenceChecker
         PORT ( ERR_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
                MIN_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
                NEW_VAL           : IN  std_logic_vector( 31 DOWNTO 0 );
                OLD_VAL           : IN  std_logic_vector( 31 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                CONV_FLAG         : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus11 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus12 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus13 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus3  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus0(31 DOWNTO 0)  <= MIN_TOL;
   s_logisimBus11(31 DOWNTO 0) <= IN10;
   s_logisimBus12(31 DOWNTO 0) <= ERR_TOL;
   s_logisimBus13(31 DOWNTO 0) <= INNEG10;
   s_logisimBus3(31 DOWNTO 0)  <= VAL;
   s_logisimBus6(31 DOWNTO 0)  <= IN01;
   s_logisimBus9(31 DOWNTO 0)  <= IN0NEG1;
   s_logisimNet1               <= Reset;
   s_logisimNet2               <= Clk;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   GC_VAL <= s_logisimBus4(31 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   gridcellREGALU_1 : gridcellREGALU
      PORT MAP ( Clk               => s_logisimNet2,
                 IN01              => s_logisimBus6(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus9(31 DOWNTO 0),
                 IN10              => s_logisimBus11(31 DOWNTO 0),
                 INNEG10           => s_logisimBus13(31 DOWNTO 0),
                 Load              => s_logisimNet7,
                 NEW_VAL           => s_logisimBus4(31 DOWNTO 0),
                 OLD_VAL           => s_logisimBus8(31 DOWNTO 0),
                 Reset             => s_logisimNet1,
                 Shift             => s_logisimNet10,
                 VAL               => s_logisimBus3(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

   cellFSM_1 : cellFSM
      PORT MAP ( CONV_FLAG         => s_logisimNet5,
                 Clk               => s_logisimNet2,
                 Load              => s_logisimNet7,
                 Reset             => s_logisimNet1,
                 Shift             => s_logisimNet10,
                 logisimClockTree0 => logisimClockTree0 );

   ConvergenceChecker_1 : ConvergenceChecker
      PORT MAP ( CONV_FLAG         => s_logisimNet5,
                 ERR_TOL           => s_logisimBus12(31 DOWNTO 0),
                 MIN_TOL           => s_logisimBus0(31 DOWNTO 0),
                 NEW_VAL           => s_logisimBus4(31 DOWNTO 0),
                 OLD_VAL           => s_logisimBus8(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

END platformIndependent;
