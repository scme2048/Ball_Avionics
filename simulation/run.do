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

vlog  -work presynth "${PROJECT_DIR}/smartgen/CLK_26MHZ/CLK_26MHZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_1MHZ_1KHZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/SPI_Master.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/spi_test/spi_test.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/tb_spi_test.v"

vsim -L proasic3l -L presynth  -t 1ps presynth.tb_spi_test
add wave /tb_spi_test/*
run 1000ns
