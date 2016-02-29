quietly set ACTELLIBNAME ProASIC3L
quietly set PROJECT_DIR "C:/Users/Scott/Documents/Docs/School/Senior/Projects/Libero/Ball_Avionics"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap proasic3l "C:/Microsemi/Libero_v11.6/Designer/lib/modelsim/precompiled/vlog/proasic3l"

vlog  -work postsynth "${PROJECT_DIR}/synthesis/transceiver_integration.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work postsynth "${PROJECT_DIR}/stimulus/tb_tranceiver_integration.v"

vsim -L proasic3l -L postsynth  -t 1ps postsynth.tb_tranceiver_integration
add wave /tb_tranceiver_integration/*
run 1000ns
