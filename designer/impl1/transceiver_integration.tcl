# Created by Microsemi Libero Software 11.6.0.34
# Sun Feb 28 18:12:34 2016

# (OPEN DESIGN)

open_design "transceiver_integration.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "transceiver_integration_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\Scott\Documents\Docs\School\Senior\Projects\Libero\Ball_Avionics\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/transceiver_integration.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {transceiver_integration_compile_report.txt}
report -type "pin" -listby "name" {transceiver_integration_report_pin_byname.txt}
report -type "pin" -listby "number" {transceiver_integration_report_pin_bynumber.txt}

save_design
