--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY logisimTopLevelShell IS
   PORT ( Reset_0         : IN  std_logic;
          VonNeumann_0    : IN  std_logic;
          fpgaGlobalClock : IN  std_logic;
          n_TEST_OUT_0    : OUT std_logic;
          n_TEST_OUT_1    : OUT std_logic;
          n_TEST_OUT_2    : OUT std_logic;
          n_TEST_OUT_3    : OUT std_logic );
END ENTITY logisimTopLevelShell;
