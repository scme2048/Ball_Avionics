# Created by Microsemi Libero Software 11.6.0.34
# Tue Feb 02 21:32:47 2016

# (OPEN DESIGN)

open_design "spi_test.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "spi_test_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\Scott\Documents\Docs\School\Senior\Projects\Libero\Ball_Avionics\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/spi_test.edn} -merge_physical "no" -merge_timing "yes"
compile
report -type "status" {spi_test_compile_report.txt}
report -type "pin" -listby "name" {spi_test_report_pin_byname.txt}
report -type "pin" -listby "number" {spi_test_report_pin_bynumber.txt}

save_design
