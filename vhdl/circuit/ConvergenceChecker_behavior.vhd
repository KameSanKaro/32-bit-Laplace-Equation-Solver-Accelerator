--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : ConvergenceChecker                                           ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF ConvergenceChecker IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT AND_GATE
         GENERIC ( BubblesMask : std_logic_vector );
         PORT ( input1 : IN  std_logic;
                input2 : IN  std_logic;
                result : OUT std_logic );
      END COMPONENT;

      COMPONENT Subtractor
         GENERIC ( extendedBits : INTEGER;
                   nrOfBits     : INTEGER );
         PORT ( borrowIn  : IN  std_logic;
                dataA     : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB     : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                borrowOut : OUT std_logic;
                result    : OUT std_logic_vector( (nrOfBits - 1) DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT Comparator
         GENERIC ( nrOfBits       : INTEGER;
                   twosComplement : INTEGER );
         PORT ( dataA         : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                dataB         : IN  std_logic_vector( (nrOfBits - 1) DOWNTO 0 );
                aEqualsB      : OUT std_logic;
                aGreaterThanB : OUT std_logic;
                aLessThanB    : OUT std_logic );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus0  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus25 : std_logic_vector( 32 DOWNTO 0 );
   SIGNAL s_logisimBus3  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus4  : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus41 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus42 : std_logic_vector( 31 DOWNTO 0 );
   SIGNAL s_logisimBus5  : std_logic_vector( 32 DOWNTO 0 );
   SIGNAL s_logisimBus6  : std_logic_vector( 32 DOWNTO 0 );
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet11 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet16 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet32 : std_logic;
   SIGNAL s_logisimNet33 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet38 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;
   SIGNAL s_logisimNet9  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- Here all wiring is defined                                                 --
   --------------------------------------------------------------------------------
   s_logisimBus0(0)  <= s_logisimNet26;
   s_logisimBus0(1)  <= s_logisimNet9;
   s_logisimBus0(10) <= s_logisimNet30;
   s_logisimBus0(11) <= s_logisimNet7;
   s_logisimBus0(12) <= s_logisimNet31;
   s_logisimBus0(13) <= s_logisimNet13;
   s_logisimBus0(14) <= s_logisimNet32;
   s_logisimBus0(15) <= s_logisimNet14;
   s_logisimBus0(16) <= s_logisimNet33;
   s_logisimBus0(17) <= s_logisimNet15;
   s_logisimBus0(18) <= s_logisimNet34;
   s_logisimBus0(19) <= s_logisimNet16;
   s_logisimBus0(2)  <= s_logisimNet27;
   s_logisimBus0(20) <= s_logisimNet35;
   s_logisimBus0(21) <= s_logisimNet17;
   s_logisimBus0(22) <= s_logisimNet36;
   s_logisimBus0(23) <= s_logisimNet18;
   s_logisimBus0(24) <= s_logisimNet37;
   s_logisimBus0(25) <= s_logisimNet19;
   s_logisimBus0(26) <= s_logisimNet38;
   s_logisimBus0(27) <= s_logisimNet20;
   s_logisimBus0(28) <= s_logisimNet39;
   s_logisimBus0(29) <= s_logisimNet21;
   s_logisimBus0(3)  <= s_logisimNet10;
   s_logisimBus0(30) <= s_logisimNet40;
   s_logisimBus0(31) <= s_logisimNet22;
   s_logisimBus0(4)  <= s_logisimNet24;
   s_logisimBus0(5)  <= s_logisimNet11;
   s_logisimBus0(6)  <= s_logisimNet28;
   s_logisimBus0(7)  <= s_logisimNet8;
   s_logisimBus0(8)  <= s_logisimNet29;
   s_logisimBus0(9)  <= s_logisimNet12;
   s_logisimNet10    <= s_logisimBus25(3);
   s_logisimNet11    <= s_logisimBus25(5);
   s_logisimNet12    <= s_logisimBus25(9);
   s_logisimNet13    <= s_logisimBus25(13);
   s_logisimNet14    <= s_logisimBus25(15);
   s_logisimNet15    <= s_logisimBus25(17);
   s_logisimNet16    <= s_logisimBus25(19);
   s_logisimNet17    <= s_logisimBus25(21);
   s_logisimNet18    <= s_logisimBus25(23);
   s_logisimNet19    <= s_logisimBus25(25);
   s_logisimNet20    <= s_logisimBus25(27);
   s_logisimNet21    <= s_logisimBus25(29);
   s_logisimNet22    <= s_logisimBus25(31);
   s_logisimNet24    <= s_logisimBus25(4);
   s_logisimNet26    <= s_logisimBus25(0);
   s_logisimNet27    <= s_logisimBus25(2);
   s_logisimNet28    <= s_logisimBus25(6);
   s_logisimNet29    <= s_logisimBus25(8);
   s_logisimNet30    <= s_logisimBus25(10);
   s_logisimNet31    <= s_logisimBus25(12);
   s_logisimNet32    <= s_logisimBus25(14);
   s_logisimNet33    <= s_logisimBus25(16);
   s_logisimNet34    <= s_logisimBus25(18);
   s_logisimNet35    <= s_logisimBus25(20);
   s_logisimNet36    <= s_logisimBus25(22);
   s_logisimNet37    <= s_logisimBus25(24);
   s_logisimNet38    <= s_logisimBus25(26);
   s_logisimNet39    <= s_logisimBus25(28);
   s_logisimNet40    <= s_logisimBus25(30);
   s_logisimNet7     <= s_logisimBus25(11);
   s_logisimNet8     <= s_logisimBus25(7);
   s_logisimNet9     <= s_logisimBus25(1);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimBus3(31 DOWNTO 0)  <= MIN_TOL;
   s_logisimBus4(31 DOWNTO 0)  <= ERR_TOL;
   s_logisimBus41(31 DOWNTO 0) <= OLD_VAL;
   s_logisimBus42(31 DOWNTO 0) <= NEW_VAL;

   --------------------------------------------------------------------------------
   -- Here all output connections are defined                                    --
   --------------------------------------------------------------------------------
   CONV_FLAG <= s_logisimNet23;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- Bit Extender
    s_logisimBus5(0)  <=  s_logisimBus41(0);
    s_logisimBus5(1)  <=  s_logisimBus41(1);
    s_logisimBus5(2)  <=  s_logisimBus41(2);
    s_logisimBus5(3)  <=  s_logisimBus41(3);
    s_logisimBus5(4)  <=  s_logisimBus41(4);
    s_logisimBus5(5)  <=  s_logisimBus41(5);
    s_logisimBus5(6)  <=  s_logisimBus41(6);
    s_logisimBus5(7)  <=  s_logisimBus41(7);
    s_logisimBus5(8)  <=  s_logisimBus41(8);
    s_logisimBus5(9)  <=  s_logisimBus41(9);
    s_logisimBus5(10)  <=  s_logisimBus41(10);
    s_logisimBus5(11)  <=  s_logisimBus41(11);
    s_logisimBus5(12)  <=  s_logisimBus41(12);
    s_logisimBus5(13)  <=  s_logisimBus41(13);
    s_logisimBus5(14)  <=  s_logisimBus41(14);
    s_logisimBus5(15)  <=  s_logisimBus41(15);
    s_logisimBus5(16)  <=  s_logisimBus41(16);
    s_logisimBus5(17)  <=  s_logisimBus41(17);
    s_logisimBus5(18)  <=  s_logisimBus41(18);
    s_logisimBus5(19)  <=  s_logisimBus41(19);
    s_logisimBus5(20)  <=  s_logisimBus41(20);
    s_logisimBus5(21)  <=  s_logisimBus41(21);
    s_logisimBus5(22)  <=  s_logisimBus41(22);
    s_logisimBus5(23)  <=  s_logisimBus41(23);
    s_logisimBus5(24)  <=  s_logisimBus41(24);
    s_logisimBus5(25)  <=  s_logisimBus41(25);
    s_logisimBus5(26)  <=  s_logisimBus41(26);
    s_logisimBus5(27)  <=  s_logisimBus41(27);
    s_logisimBus5(28)  <=  s_logisimBus41(28);
    s_logisimBus5(29)  <=  s_logisimBus41(29);
    s_logisimBus5(30)  <=  s_logisimBus41(30);
    s_logisimBus5(31)  <=  s_logisimBus41(31);
    s_logisimBus5(32)  <=  '0';


   -- Bit Extender
    s_logisimBus6(0)  <=  s_logisimBus42(0);
    s_logisimBus6(1)  <=  s_logisimBus42(1);
    s_logisimBus6(2)  <=  s_logisimBus42(2);
    s_logisimBus6(3)  <=  s_logisimBus42(3);
    s_logisimBus6(4)  <=  s_logisimBus42(4);
    s_logisimBus6(5)  <=  s_logisimBus42(5);
    s_logisimBus6(6)  <=  s_logisimBus42(6);
    s_logisimBus6(7)  <=  s_logisimBus42(7);
    s_logisimBus6(8)  <=  s_logisimBus42(8);
    s_logisimBus6(9)  <=  s_logisimBus42(9);
    s_logisimBus6(10)  <=  s_logisimBus42(10);
    s_logisimBus6(11)  <=  s_logisimBus42(11);
    s_logisimBus6(12)  <=  s_logisimBus42(12);
    s_logisimBus6(13)  <=  s_logisimBus42(13);
    s_logisimBus6(14)  <=  s_logisimBus42(14);
    s_logisimBus6(15)  <=  s_logisimBus42(15);
    s_logisimBus6(16)  <=  s_logisimBus42(16);
    s_logisimBus6(17)  <=  s_logisimBus42(17);
    s_logisimBus6(18)  <=  s_logisimBus42(18);
    s_logisimBus6(19)  <=  s_logisimBus42(19);
    s_logisimBus6(20)  <=  s_logisimBus42(20);
    s_logisimBus6(21)  <=  s_logisimBus42(21);
    s_logisimBus6(22)  <=  s_logisimBus42(22);
    s_logisimBus6(23)  <=  s_logisimBus42(23);
    s_logisimBus6(24)  <=  s_logisimBus42(24);
    s_logisimBus6(25)  <=  s_logisimBus42(25);
    s_logisimBus6(26)  <=  s_logisimBus42(26);
    s_logisimBus6(27)  <=  s_logisimBus42(27);
    s_logisimBus6(28)  <=  s_logisimBus42(28);
    s_logisimBus6(29)  <=  s_logisimBus42(29);
    s_logisimBus6(30)  <=  s_logisimBus42(30);
    s_logisimBus6(31)  <=  s_logisimBus42(31);
    s_logisimBus6(32)  <=  '0';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   GATES_1 : AND_GATE
      GENERIC MAP ( BubblesMask => "00" )
      PORT MAP ( input1 => s_logisimNet1,
                 input2 => s_logisimNet2,
                 result => s_logisimNet23 );

   ARITH_2 : Subtractor
      GENERIC MAP ( extendedBits => 34,
                    nrOfBits     => 33 )
      PORT MAP ( borrowIn  => '0',
                 borrowOut => OPEN,
                 dataA     => s_logisimBus5(32 DOWNTO 0),
                 dataB     => s_logisimBus6(32 DOWNTO 0),
                 result    => s_logisimBus25(32 DOWNTO 0) );

   ARITH_3 : Comparator
      GENERIC MAP ( nrOfBits       => 32,
                    twosComplement => 1 )
      PORT MAP ( aEqualsB      => OPEN,
                 aGreaterThanB => OPEN,
                 aLessThanB    => s_logisimNet1,
                 dataA         => s_logisimBus0(31 DOWNTO 0),
                 dataB         => s_logisimBus4(31 DOWNTO 0) );

   ARITH_4 : Comparator
      GENERIC MAP ( nrOfBits       => 32,
                    twosComplement => 1 )
      PORT MAP ( aEqualsB      => OPEN,
                 aGreaterThanB => s_logisimNet2,
                 aLessThanB    => OPEN,
                 dataA         => s_logisimBus0(31 DOWNTO 0),
                 dataB         => s_logisimBus3(31 DOWNTO 0) );


END platformIndependent;
