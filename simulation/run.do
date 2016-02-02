quietly set ACTELLIBNAME ProASIC3L
quietly set PROJECT_DIR "F:/Ball_Avionics"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3l "C:/Microsemi/Libero_v11.6/Designer/lib/modelsim/precompiled/vlog/proasic3l"

vlog  -work presynth "${PROJECT_DIR}/hdl/SPI_Master.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/spi_master_tb3.v"

vsim -L proasic3l -L presynth  -t 1ps presynth.spi_master_tb3
add wave /spi_master_tb3/*
run 1000ns
