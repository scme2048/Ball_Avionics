# Created by Microsemi Libero Software 11.6.0.34
# Fri Mar 04 12:08:17 2016

# (NEW DESIGN)

# create a new design
new_design -name "geiger_integration" -family "ProASIC3L"
set_device -die {A3PE3000L} -package {484 FBGA} -speed {STD} -voltage {1.5} -IO_DEFT_STD {LVCMOS 3.3V} -RESTRICTPROBEPINS {1} -RESTRICTSPIPINS {0} -TEMPR {IND} -UNUSED_MSS_IO_RESISTOR_PULL {None} -VCCI_1.5_VOLTR {COM} -VCCI_1.8_VOLTR {COM} -VCCI_2.5_VOLTR {COM} -VCCI_3.3_VOLTR {COM} -VOLTR {IND}


# set default back-annotation base-name
set_defvar "BA_NAME" "geiger_integration_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\Scott\Documents\Docs\School\Senior\Projects\Libero\Ball_Avionics\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "C:/Users/Scott/Documents/Docs/School/Senior/Projects/Libero/Ball_Avionics/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "C:/Users/Scott/Documents/Docs/School/Senior/Projects/Libero/Ball_Avionics/designer/impl1"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VERILOG"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "geiger_integration.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/geiger_integration.edn}

# save the design database
save_design {geiger_integration.adb}


compile
report -type "status" {geiger_integration_compile_report.txt}
report -type "pin" -listby "name" {geiger_integration_report_pin_byname.txt}
report -type "pin" -listby "number" {geiger_integration_report_pin_bynumber.txt}

save_design
