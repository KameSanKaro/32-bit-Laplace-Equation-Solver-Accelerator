--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : Shift_Register                                               ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY Shift_Register IS
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
END ENTITY Shift_Register;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY singleBitShiftReg IS
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

END ENTITY singleBitShiftReg;
