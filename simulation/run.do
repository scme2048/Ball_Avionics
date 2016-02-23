quietly set ACTELLIBNAME ProASIC3L
quietly set PROJECT_DIR "C:/Users/Scott/Documents/Docs/School/Senior/Projects/Libero/Ball_Avionics"

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap proasic3l "C:/Microsemi/Libero_v11.6/Designer/lib/modelsim/precompiled/vlog/proasic3l"

vlog  -work postlayout "${PROJECT_DIR}/designer/impl1/geiger_integration_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work postlayout "${PROJECT_DIR}/stimulus/tb_geiger_integration.v"

vsim -L proasic3l -L postlayout  -t 1ps -sdfmax /geiger_integration_0=${PROJECT_DIR}/designer/impl1/geiger_integration_ba.sdf postlayout.tb_geiger_integration
add wave /tb_geiger_integration/*
run 1000ns
