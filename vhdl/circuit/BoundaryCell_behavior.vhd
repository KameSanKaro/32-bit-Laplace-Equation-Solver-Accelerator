--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : BoundaryCell                                                 ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF BoundaryCell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT Multiplexer_bus_2
         GENERIC ( nrOfBits : INTEGER );
         PORT ( enable  : IN  std_logic;
                muxIn_0 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                muxIn_1 : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                sel     : IN  std_logic;
                muxOut  : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Shift_Register
         GENERIC ( negateClock : INTEGER;
                   nrOfBits    : INTEGER;
                   nrOfParBits : INTEGER;
                   nrOfStages  : INTEGER );
         PORT ( clock       : IN  std_logic;
                d           : IN  std_logic_vector( (nrOfParBits - 1) DOWNTO 0 );
                parLoad     : IN  std_logic;
                reset       : IN  std_logic;
                shiftEnable : IN  std_logic;
                shiftIn     : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                tick        : IN  std_logic;
                q           : OUT std_logic_vector( (nrOfParBits - 1) DOWNTO 0 );
                shiftOut    : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus1 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus2 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus5 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus7 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimNet0 : std_logic;
   SIGNAL s_logisimNet3 : std_logic;
   SIGNAL s_logisimNet4 : std_logic;
   SIGNAL s_logisimNet6 : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus2(31 DOWNTO 0) <= INIT_VAL;
   s_logisimBus5(31 DOWNTO 0) <= NEXT_VAL;
   s_logisimNet3              <= Clk;
   s_logisimNet4              <= Reset;
   s_logisimNet6              <= VonNeumann;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   GC_VAL <= s_logisimBus7(31 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Constant
    s_logisimNet0  <=  '1';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   PLEXERS_1 : Multiplexer_bus_2
      GENERIC MAP ( nrOfBits => 32 )
      PORT MAP ( enable  => '1',
                 muxIn_0 => s_logisimBus2(31 DOWNTO 0),
                 muxIn_1 => s_logisimBus5(31 DOWNTO 0),
                 muxOut  => s_logisimBus1(31 DOWNTO 0),
                 sel     => s_logisimNet6 );

   MEMORY_2 : Shift_Register
      GENERIC MAP ( negateClock => 0,
                    nrOfBits    => 32,
                    nrOfParBits => 32,
                    nrOfStages  => 1 )
      PORT MAP ( clock       => logisimClockTree0(4),
                 d(0)        => s_logisimBus1(0),
                 d(1)        => s_logisimBus1(1),
                 d(10)       => s_logisimBus1(10),
                 d(11)       => s_logisimBus1(11),
                 d(12)       => s_logisimBus1(12),
                 d(13)       => s_logisimBus1(13),
                 d(14)       => s_logisimBus1(14),
                 d(15)       => s_logisimBus1(15),
                 d(16)       => s_logisimBus1(16),
                 d(17)       => s_logisimBus1(17),
                 d(18)       => s_logisimBus1(18),
                 d(19)       => s_logisimBus1(19),
                 d(2)        => s_logisimBus1(2),
                 d(20)       => s_logisimBus1(20),
                 d(21)       => s_logisimBus1(21),
                 d(22)       => s_logisimBus1(22),
                 d(23)       => s_logisimBus1(23),
                 d(24)       => s_logisimBus1(24),
                 d(25)       => s_logisimBus1(25),
                 d(26)       => s_logisimBus1(26),
                 d(27)       => s_logisimBus1(27),
                 d(28)       => s_logisimBus1(28),
                 d(29)       => s_logisimBus1(29),
                 d(3)        => s_logisimBus1(3),
                 d(30)       => s_logisimBus1(30),
                 d(31)       => s_logisimBus1(31),
                 d(4)        => s_logisimBus1(4),
                 d(5)        => s_logisimBus1(5),
                 d(6)        => s_logisimBus1(6),
                 d(7)        => s_logisimBus1(7),
                 d(8)        => s_logisimBus1(8),
                 d(9)        => s_logisimBus1(9),
                 parLoad     => s_logisimNet0,
                 q(0)        => OPEN,
                 q(1)        => OPEN,
                 q(10)       => OPEN,
                 q(11)       => OPEN,
                 q(12)       => OPEN,
                 q(13)       => OPEN,
                 q(14)       => OPEN,
                 q(15)       => OPEN,
                 q(16)       => OPEN,
                 q(17)       => OPEN,
                 q(18)       => OPEN,
                 q(19)       => OPEN,
                 q(2)        => OPEN,
                 q(20)       => OPEN,
                 q(21)       => OPEN,
                 q(22)       => OPEN,
                 q(23)       => OPEN,
                 q(24)       => OPEN,
                 q(25)       => OPEN,
                 q(26)       => OPEN,
                 q(27)       => OPEN,
                 q(28)       => OPEN,
                 q(29)       => OPEN,
                 q(3)        => OPEN,
                 q(30)       => OPEN,
                 q(31)       => OPEN,
                 q(4)        => OPEN,
                 q(5)        => OPEN,
                 q(6)        => OPEN,
                 q(7)        => OPEN,
                 q(8)        => OPEN,
                 q(9)        => OPEN,
                 reset       => s_logisimNet4,
                 shiftEnable => '0',
                 shiftIn     => X"00000000",
                 shiftOut    => s_logisimBus7(31 DOWNTO 0),
                 tick        => logisimClockTree0(2) );


END platformIndependent;
