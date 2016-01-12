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

vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_1MHZ_10HZ.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/clk_test.v"

vsim -L proasic3l -L presynth  -t 1ps presynth.clk_test
add wave /clk_test/*
run 1000ns
