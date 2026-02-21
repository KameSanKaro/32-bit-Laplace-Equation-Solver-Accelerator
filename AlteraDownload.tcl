# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
    if {[string compare $quartus(project) "logisimTopLevelShell"]} {
        puts "Project logisimTopLevelShell is not open"
        set make_assignments 0
    }
} else {
    # Only open if not already open
    if {[project_exists logisimTopLevelShell]} {
        project_open -revision logisimTopLevelShell logisimTopLevelShell
    } else {
        project_new -revision logisimTopLevelShell logisimTopLevelShell
    }
    set need_to_close_project 1
}
# Make assignments
if {$make_assignments} {

   set_global_assignment -name FAMILY "Cyclone V"
   set_global_assignment -name DEVICE 5CSEMA5F31C6
   set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
   set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
   set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
   set_global_assignment -name FMAX_REQUIREMENT "50 MHz "
   set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
   set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

    # Include all entities and gates


    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/gates/NOR_GATE_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/gates/AND_GATE_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/memory/Shift_Register_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/memory/D_FLIPFLOP_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/plexers/Multiplexer_bus_2_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/cellFSM_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/main_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/ConvergenceChecker_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/gridcell_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/gridcellREGALU_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/cellALU_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/BoundaryCell_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Shifter_32_bit_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Adder_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Subtractor_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Comparator_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/toplevel/logisimTopLevelShell_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/base/logisimTickGenerator_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/base/LogisimClockComponent_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/base/synthesizedClockGenerator_entity.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/gates/NOR_GATE_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/gates/AND_GATE_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/memory/Shift_Register_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/memory/D_FLIPFLOP_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/plexers/Multiplexer_bus_2_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/gridcellREGALU_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/cellFSM_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/cellALU_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/main_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/BoundaryCell_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/ConvergenceChecker_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/circuit/gridcell_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Subtractor_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Adder_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Shifter_32_bit_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/arith/Comparator_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/toplevel/logisimTopLevelShell_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/base/LogisimClockComponent_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/base/logisimTickGenerator_behavior.vhd"
    set_global_assignment -name VHDL_FILE "/Users/kame_chikara/logisim_evolution_workspace/Laplace32BitAccelerator-FPGA-TESTING/main/vhdl/base/synthesizedClockGenerator_behavior.vhd"

    # Map fpga_clk and ionets to fpga pins
    set_location_assignment PIN_AF14 -to fpgaGlobalClock
            set_location_assignment PIN_AE26 -to n_TEST_OUT_0
            set_location_assignment PIN_AE27 -to n_TEST_OUT_1
            set_location_assignment PIN_AE28 -to n_TEST_OUT_2
            set_location_assignment PIN_AG27 -to n_TEST_OUT_3
            set_location_assignment PIN_AE12 -to Reset_0
            set_location_assignment PIN_AD10 -to VonNeumann_0
    # Commit assignments
    export_assignments

    # Close project
    if {$need_to_close_project} {
        project_close
    }
}

