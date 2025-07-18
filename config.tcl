set ::env(DESIGN_NAME) alu_32_bit

set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "" ;# No clock needed, purely combinational

set ::env(SYNTH_TOP) alu_32_bit
set ::env(SYNTH_READ_BLACKBOX_LIB) 1

set ::env(FP_CORE_UTIL) 20
set ::env(PL_TARGET_DENSITY) 0.5
set ::env(DIE_AREA) "0 0 100 100"

# Disable PDN generation since there’s no sequential logic
set ::env(RUN_CTS) 0
set ::env(RUN_POWER_GRID) 0
set ::env(RUN_IRDROP) 0
set ::env(FP_PDN_ENABLE) 0

