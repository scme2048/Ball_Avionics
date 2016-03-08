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

vlog  -work presynth "${PROJECT_DIR}/smartgen/CLK_26MHZ/CLK_26MHZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_1MHZ_10HZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_26MHZ_1MHZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/orbit_control.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/read_buffer.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reset_pulse.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/spi_data_out.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/SPI_Master.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/spi_mode_config2.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/test_constants_spi.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/transceiver_integration/transceiver_integration.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/tb_tranceiver_integration.v"

vsim -L proasic3l -L presynth  -t 1ps presynth.tb_tranceiver_integration
add wave /tb_tranceiver_integration/*
run 1000ns
