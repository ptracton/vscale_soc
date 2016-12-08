+libext+.v
+define+VERBOSE
+define+SIM
+define+RTL_SIM
+define+SIMULATION
+define+__ICARUS__

+incdir+sim

//
// Test Bench
//
+incdir+../testbench
+incdir+../tasks/
+incdir+../testbench/verilog_utils
../testbench/testbench.v
../testbench/dump.v
../tasks/test_tasks.v


//
// Top Level Instance
//
../rtl/wb_riscv_soc_top.v

//
// Clock and Reset control
// 
../rtl/system_controller.v
 
//
// Bus Matrix
//
+incdir+../rtl/bus_matrix
../rtl/bus_matrix/bus_matrix.v
../rtl/wb_intercon/wb_arbiter.v
../rtl/wb_intercon/wb_mux.v
../rtl/wb_intercon/wb_data_resize.v
../rtl/verilog-arbiter/src/arbiter.v

//
// Memories
//
+incdir+../rtl/wb_common
../rtl/wb_ram/rtl/verilog/wb_ram.v 
../rtl/wb_ram/rtl/verilog/wb_ram_generic.v 

//
// UART
//
+incdir+../rtl/uart16550-1.5.4/rtl/verilog
../rtl/uart16550-1.5.4/rtl/verilog/raminfr.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_receiver.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_regs.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_rfifo.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_sync_flops.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_tfifo.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_top.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_transmitter.v
../rtl/uart16550-1.5.4/rtl/verilog/uart_wb.v

//
// RiscV CPU
//
+incdir+../rtl/wb_riscvscale
../rtl/wb_riscvscale/vscale_alu.v
../rtl/wb_riscvscale/vscale_core.v
../rtl/wb_riscvscale/vscale_csr_file.v
../rtl/wb_riscvscale/vscale_ctrl.v
../rtl/wb_riscvscale/vscale_hasti_bridge.v
../rtl/wb_riscvscale/vscale_imm_gen.v
../rtl/wb_riscvscale/vscale_mul_div.v
../rtl/wb_riscvscale/vscale_PC_mux.v
../rtl/wb_riscvscale/vscale_pipeline.v
../rtl/wb_riscvscale/vscale_regfile.v
../rtl/wb_riscvscale/vscale_src_a_mux.v
../rtl/wb_riscvscale/vscale_src_b_mux.v
../rtl/wb_riscvscale/wb_vscale.v
