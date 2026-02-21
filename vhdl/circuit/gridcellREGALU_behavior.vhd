--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : gridcellREGALU                                               ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF gridcellREGALU IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

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

      COMPONENT cellALU
         PORT ( IN01              : IN  std_logic_vector( 31 DOWNTO 0 );
                IN0NEG1           : IN  std_logic_vector( 31 DOWNTO 0 );
                IN10              : IN  std_logic_vector( 31 DOWNTO 0 );
                INNEG10           : IN  std_logic_vector( 31 DOWNTO 0 );
                logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
                NEW_VAL           : OUT std_logic_vector( 31 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus1  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus10 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus11 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus3  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus8  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus10(31 DOWNTO 0) <= IN01;
   s_logisimBus11(31 DOWNTO 0) <= VAL;
   s_logisimBus5(31 DOWNTO 0)  <= IN10;
   s_logisimBus6(31 DOWNTO 0)  <= IN0NEG1;
   s_logisimBus9(31 DOWNTO 0)  <= INNEG10;
   s_logisimNet0               <= Shift;
   s_logisimNet2               <= Reset;
   s_logisimNet4               <= Clk;
   s_logisimNet7               <= Load;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   NEW_VAL <= s_logisimBus8(31 DOWNTO 0);
   OLD_VAL <= s_logisimBus3(31 DOWNTO 0);

   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   MEMORY_1 : Shift_Register
      GENERIC MAP ( negateClock => 0,
                    nrOfBits    => 32,
                    nrOfParBits => 64,
                    nrOfStages  => 2 )
      PORT MAP ( clock       => logisimClockTree0(4),
                 d(0)        => s_logisimBus11(0),
                 d(1)        => s_logisimBus8(0),
                 d(10)       => s_logisimBus11(5),
                 d(11)       => s_logisimBus8(5),
                 d(12)       => s_logisimBus11(6),
                 d(13)       => s_logisimBus8(6),
                 d(14)       => s_logisimBus11(7),
                 d(15)       => s_logisimBus8(7),
                 d(16)       => s_logisimBus11(8),
                 d(17)       => s_logisimBus8(8),
                 d(18)       => s_logisimBus11(9),
                 d(19)       => s_logisimBus8(9),
                 d(2)        => s_logisimBus11(1),
                 d(20)       => s_logisimBus11(10),
                 d(21)       => s_logisimBus8(10),
                 d(22)       => s_logisimBus11(11),
                 d(23)       => s_logisimBus8(11),
                 d(24)       => s_logisimBus11(12),
                 d(25)       => s_logisimBus8(12),
                 d(26)       => s_logisimBus11(13),
                 d(27)       => s_logisimBus8(13),
                 d(28)       => s_logisimBus11(14),
                 d(29)       => s_logisimBus8(14),
                 d(3)        => s_logisimBus8(1),
                 d(30)       => s_logisimBus11(15),
                 d(31)       => s_logisimBus8(15),
                 d(32)       => s_logisimBus11(16),
                 d(33)       => s_logisimBus8(16),
                 d(34)       => s_logisimBus11(17),
                 d(35)       => s_logisimBus8(17),
                 d(36)       => s_logisimBus11(18),
                 d(37)       => s_logisimBus8(18),
                 d(38)       => s_logisimBus11(19),
                 d(39)       => s_logisimBus8(19),
                 d(4)        => s_logisimBus11(2),
                 d(40)       => s_logisimBus11(20),
                 d(41)       => s_logisimBus8(20),
                 d(42)       => s_logisimBus11(21),
                 d(43)       => s_logisimBus8(21),
                 d(44)       => s_logisimBus11(22),
                 d(45)       => s_logisimBus8(22),
                 d(46)       => s_logisimBus11(23),
                 d(47)       => s_logisimBus8(23),
                 d(48)       => s_logisimBus11(24),
                 d(49)       => s_logisimBus8(24),
                 d(5)        => s_logisimBus8(2),
                 d(50)       => s_logisimBus11(25),
                 d(51)       => s_logisimBus8(25),
                 d(52)       => s_logisimBus11(26),
                 d(53)       => s_logisimBus8(26),
                 d(54)       => s_logisimBus11(27),
                 d(55)       => s_logisimBus8(27),
                 d(56)       => s_logisimBus11(28),
                 d(57)       => s_logisimBus8(28),
                 d(58)       => s_logisimBus11(29),
                 d(59)       => s_logisimBus8(29),
                 d(6)        => s_logisimBus11(3),
                 d(60)       => s_logisimBus11(30),
                 d(61)       => s_logisimBus8(30),
                 d(62)       => s_logisimBus11(31),
                 d(63)       => s_logisimBus8(31),
                 d(7)        => s_logisimBus8(3),
                 d(8)        => s_logisimBus11(4),
                 d(9)        => s_logisimBus8(4),
                 parLoad     => s_logisimNet7,
                 q(0)        => s_logisimBus8(0),
                 q(1)        => OPEN,
                 q(10)       => s_logisimBus8(5),
                 q(11)       => OPEN,
                 q(12)       => s_logisimBus8(6),
                 q(13)       => OPEN,
                 q(14)       => s_logisimBus8(7),
                 q(15)       => OPEN,
                 q(16)       => s_logisimBus8(8),
                 q(17)       => OPEN,
                 q(18)       => s_logisimBus8(9),
                 q(19)       => OPEN,
                 q(2)        => s_logisimBus8(1),
                 q(20)       => s_logisimBus8(10),
                 q(21)       => OPEN,
                 q(22)       => s_logisimBus8(11),
                 q(23)       => OPEN,
                 q(24)       => s_logisimBus8(12),
                 q(25)       => OPEN,
                 q(26)       => s_logisimBus8(13),
                 q(27)       => OPEN,
                 q(28)       => s_logisimBus8(14),
                 q(29)       => OPEN,
                 q(3)        => OPEN,
                 q(30)       => s_logisimBus8(15),
                 q(31)       => OPEN,
                 q(32)       => s_logisimBus8(16),
                 q(33)       => OPEN,
                 q(34)       => s_logisimBus8(17),
                 q(35)       => OPEN,
                 q(36)       => s_logisimBus8(18),
                 q(37)       => OPEN,
                 q(38)       => s_logisimBus8(19),
                 q(39)       => OPEN,
                 q(4)        => s_logisimBus8(2),
                 q(40)       => s_logisimBus8(20),
                 q(41)       => OPEN,
                 q(42)       => s_logisimBus8(21),
                 q(43)       => OPEN,
                 q(44)       => s_logisimBus8(22),
                 q(45)       => OPEN,
                 q(46)       => s_logisimBus8(23),
                 q(47)       => OPEN,
                 q(48)       => s_logisimBus8(24),
                 q(49)       => OPEN,
                 q(5)        => OPEN,
                 q(50)       => s_logisimBus8(25),
                 q(51)       => OPEN,
                 q(52)       => s_logisimBus8(26),
                 q(53)       => OPEN,
                 q(54)       => s_logisimBus8(27),
                 q(55)       => OPEN,
                 q(56)       => s_logisimBus8(28),
                 q(57)       => OPEN,
                 q(58)       => s_logisimBus8(29),
                 q(59)       => OPEN,
                 q(6)        => s_logisimBus8(3),
                 q(60)       => s_logisimBus8(30),
                 q(61)       => OPEN,
                 q(62)       => s_logisimBus8(31),
                 q(63)       => OPEN,
                 q(7)        => OPEN,
                 q(8)        => s_logisimBus8(4),
                 q(9)        => OPEN,
                 reset       => s_logisimNet2,
                 shiftEnable => s_logisimNet0,
                 shiftIn     => s_logisimBus1(31 DOWNTO 0),
                 shiftOut    => s_logisimBus3(31 DOWNTO 0),
                 tick        => logisimClockTree0(2) );


   --------------------------------------------------------------------------------
   -- Here all sub-circuits are defined                                          --
   --------------------------------------------------------------------------------

   cellALUlolol : cellALU
      PORT MAP ( IN01              => s_logisimBus10(31 DOWNTO 0),
                 IN0NEG1           => s_logisimBus6(31 DOWNTO 0),
                 IN10              => s_logisimBus5(31 DOWNTO 0),
                 INNEG10           => s_logisimBus9(31 DOWNTO 0),
                 NEW_VAL           => s_logisimBus1(31 DOWNTO 0),
                 logisimClockTree0 => logisimClockTree0 );

END platformIndependent;
