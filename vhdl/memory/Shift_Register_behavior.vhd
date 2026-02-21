--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : Shift_Register                                               ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF Shift_Register IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
   COMPONENT singleBitShiftReg
      GENERIC ( negateClock : INTEGER;
                nrOfStages  : INTEGER );
      PORT ( reset       : IN  std_logic;
             tick        : IN  std_logic;
             clock       : IN  std_logic;
             shiftEnable : IN  std_logic;
             parLoad     : IN  std_logic;
             shiftIn     : IN  std_logic;
             d           : IN  std_logic_vector( (nrOfStages-1) DOWNTO 0 );
             shiftOut    : OUT std_logic;
             q           : OUT std_logic_vector( (nrOfStages-1) DOWNTO 0 ) );
   END COMPONENT;

BEGIN

   genBits : FOR n IN (nrOfBits-1) DOWNTO 0 GENERATE
      OneBit : singleBitShiftReg
      GENERIC MAP ( negateClock => negateClock,
                    nrOfStages => nrOfStages )
      PORT MAP ( reset       => reset,
                 tick        => tick,
                 clock       => clock,
                 shiftEnable => shiftEnable,
                 parLoad     => parLoad,
                 shiftIn     => shiftIn(n),
                 d           => d( ((n+1) * nrOfStages)-1 DOWNTO (n*nrOfStages)),
                 shiftOut    => shiftOut(n),
                 q           => q( ((n+1) * nrOfStages)-1 DOWNTO (n*nrOfStages)) );
   END GENERATE genBits;

END platformIndependent;



ARCHITECTURE noPlatformSpecific OF singleBitShiftReg IS

   SIGNAL s_stateReg  : std_logic_vector( (nrOfStages-1) DOWNTO 0 );
   SIGNAL s_stateNext : std_logic_vector( (nrOfStages-1) DOWNTO 0 );
   SIGNAL s_clock     : std_logic;

BEGIN
   q        <= s_stateReg;
   shiftOut <= s_stateReg(nrOfStages-1);
   s_clock  <= clock WHEN negateClock = 0 ELSE NOT(clock);

   s_stateNext <= d WHEN parLoad = '1' ELSE s_stateReg((nrOfStages-2) DOWNTO 0)&shiftIn;

   makeState : PROCESS(s_clock, shiftEnable, tick, reset, s_stateNext, parLoad) IS
   BEGIN
      IF (reset = '1') THEN s_stateReg <= (OTHERS => '0');
      ELSIF (rising_edge(s_clock)) THEN
         IF (((shiftEnable = '1') OR (parLoad = '1')) AND (tick = '1')) THEN
            s_stateReg <= s_stateNext;
         END IF;
      END IF;
   END PROCESS makeState;
END noPlatformSpecific;



