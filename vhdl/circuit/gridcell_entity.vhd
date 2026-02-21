--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : gridcell                                                     ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY gridcell IS
   PORT ( Clk               : IN  std_logic;
          ERR_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
          IN01              : IN  std_logic_vector( 31 DOWNTO 0 );
          IN0NEG1           : IN  std_logic_vector( 31 DOWNTO 0 );
          IN10              : IN  std_logic_vector( 31 DOWNTO 0 );
          INNEG10           : IN  std_logic_vector( 31 DOWNTO 0 );
          MIN_TOL           : IN  std_logic_vector( 31 DOWNTO 0 );
          Reset             : IN  std_logic;
          VAL               : IN  std_logic_vector( 31 DOWNTO 0 );
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          GC_VAL            : OUT std_logic_vector( 31 DOWNTO 0 ) );
END ENTITY gridcell;
