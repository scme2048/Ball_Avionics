quietly set ACTELLIBNAME ProASIC3L
quietly set PROJECT_DIR "C:/Users/Scott/Documents/Docs/School/Senior/Projects/Libero/Ball_Avionics"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3l "C:/Microsemi/Libero_v11.6/Designer/lib/modelsim/precompiled/vlog/proasic3l"

vlog  -work presynth "${PROJECT_DIR}/smartgen/CLK_1MHZ/CLK_1MHZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_1MHZ_100KHZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_1MHZ_10HZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/geig_data_handling.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reset_pulse.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/test_harness_geiger_stack.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/timestamp.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/geiger_integration/geiger_integration.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/tb_geiger_integration.v"

vsim -L proasic3l -L presynth  -t 1ps presynth.tb_geiger_integration
add wave /tb_geiger_integration/*
run 1000ns
