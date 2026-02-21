--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : Laplace32BitAccelerator-FPGA-TESTING                         ==
--== Component : BoundaryCell                                                 ==
--==                                                                          ==
--==============================================================================


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY BoundaryCell IS
   PORT ( Clk               : IN  std_logic;
          INIT_VAL          : IN  std_logic_vector( 31 DOWNTO 0 );
          NEXT_VAL          : IN  std_logic_vector( 31 DOWNTO 0 );
          Reset             : IN  std_logic;
          VonNeumann        : IN  std_logic;
          logisimClockTree0 : IN  std_logic_vector( 4 DOWNTO 0 );
          GC_VAL            : OUT std_logic_vector( 31 DOWNTO 0 ) );
END ENTITY BoundaryCell;
