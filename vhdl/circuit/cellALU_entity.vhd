--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : cellALU                                                      ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY cellALU IS
   PORT ( IN01              : IN  std_logic_vector( 31 DOWNTO 0 );
          IN0NEG1           : IN  std_logic_vector( 31 DOWNTO 0 );
          IN10              : IN  std_logic_vector( 31 DOWNTO 0 );
          INNEG10           : IN  std_logic_vector( 31 DOWNTO 0 );
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          NEW_VAL           : OUT std_logic_vector( 31 DOWNTO 0 ) );
END ENTITY cellALU;
