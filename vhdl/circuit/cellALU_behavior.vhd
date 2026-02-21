--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : cellALU                                                      ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF cellALU IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Adder
         GENERIC ( extendedBits : INTEGER;
                   nrOfBits     : INTEGER );
         PORT ( carryIn  : IN  std_logic;
                dataA    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB    : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                carryOut : OUT std_logic;
                result   : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Shifter_32_bit
         GENERIC ( shifterMode : INTEGER );
         PORT ( dataA       : IN  std_logic_vector( 31 DOWNTO 0 );
                shiftAmount : IN  std_logic_vector( 4 DOWNTO 0 );
                result      : OUT std_logic_vector( 31 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus1 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus2 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus3 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus4 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus5 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus6 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus7 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus8 : std_logic_vector( 4 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus1(31 DOWNTO 0) <= IN10;
   s_logisimBus2(31 DOWNTO 0) <= IN0NEG1;
   s_logisimBus4(31 DOWNTO 0) <= IN01;
   s_logisimBus5(31 DOWNTO 0) <= INNEG10;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   NEW_VAL <= s_logisimBus0(31 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimBus8(4 DOWNTO 0)  <=  "0"&X"2";


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   ARITH_1 : Adder
      GENERIC MAP ( extendedBits => 33,
                    nrOfBits     => 32 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus4(31 DOWNTO 0),
                 dataB    => s_logisimBus1(31 DOWNTO 0),
                 result   => s_logisimBus6(31 DOWNTO 0) );

   ARITH_2 : Adder
      GENERIC MAP ( extendedBits => 33,
                    nrOfBits     => 32 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus2(31 DOWNTO 0),
                 dataB    => s_logisimBus5(31 DOWNTO 0),
                 result   => s_logisimBus7(31 DOWNTO 0) );

   ARITH_3 : Adder
      GENERIC MAP ( extendedBits => 33,
                    nrOfBits     => 32 )
      PORT MAP ( carryIn  => '0',
                 carryOut => OPEN,
                 dataA    => s_logisimBus6(31 DOWNTO 0),
                 dataB    => s_logisimBus7(31 DOWNTO 0),
                 result   => s_logisimBus3(31 DOWNTO 0) );

   ARITH_4 : Shifter_32_bit
      GENERIC MAP ( shifterMode => 2 )
      PORT MAP ( dataA       => s_logisimBus3(31 DOWNTO 0),
                 result      => s_logisimBus0(31 DOWNTO 0),
                 shiftAmount => s_logisimBus8(4 DOWNTO 0) );


END platformIndependent;
