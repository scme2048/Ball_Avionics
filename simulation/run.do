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
vlog  -work presynth "${PROJECT_DIR}/hdl/buffer_data_out.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clock_div_1MHZ_10HZ.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/constant_sensor_data.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/memory_controller.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/read_address_traversal.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/read_buffer.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/reset_pulse.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/sdram_interface.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/timestamp.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/write_address_traversal.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/memory_test/memory_test.v"
vlog "+incdir+${PROJECT_DIR}/stimulus"  -work presynth "${PROJECT_DIR}/stimulus/tb_memory_test.v"

vsim -L proasic3l -L presynth  -t 1ps presynth.tb_memory_test
add wave /tb_memory_test/*
run 1000ns
