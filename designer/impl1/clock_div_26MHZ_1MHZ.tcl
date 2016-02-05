# Created by Microsemi Libero Software 11.6.0.34
# Thu Feb 04 11:28:31 2016

# (OPEN DESIGN)

open_design "clock_div_26MHZ_1MHZ.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "clock_div_26MHZ_1MHZ_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\Scott\Documents\Docs\School\Senior\Projects\Libero\Ball_Avionics\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
