--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : ConvergenceChecker                                           ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY ConvergenceChecker IS
   PORT ( ERR_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
          MIN_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
          NEW_VAL           : IN  std_logic_vector( 31 DOWNTO 0 );
          OLD_VAL           : IN  std_logic_vector( 31 DOWNTO 0 );
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          CONV_FLAG         : OUT std_logic );
END ENTITY ConvergenceChecker;
