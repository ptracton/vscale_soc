vlib work



vlog ../testbench/testbench.v
vlog ../testbench/dump.v
vlog ../tasks/test_tasks.v  +incdir+../testbench/

vlog ../rtl/wb_riscv_soc_top.v +incdir+../rtl/bus_matrix +incdir+../testbench/verilog_utils

vlog ../rtl/system_controller.v
 
vlog ../rtl/bus_matrix/bus_matrix.v
vlog ../rtl/wb_intercon/wb_arbiter.v +incdir+../testbench/verilog_utils
vlog ../rtl/wb_intercon/wb_mux.v +incdir+../testbench/verilog_utils
vlog ../rtl/wb_intercon/wb_data_resize.v
vlog ../rtl/verilog-arbiter/src/arbiter.v

vlog ../rtl/wb_ram/rtl/verilog/wb_ram.v +incdir+../rtl/wb_common
vlog ../rtl/wb_ram/rtl/verilog/wb_ram_generic.v  +incdir+../rtl/wb_common

vlog ../rtl/uart16550-1.5.4/rtl/verilog/raminfr.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_receiver.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_regs.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_rfifo.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_sync_flops.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_tfifo.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_top.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_transmitter.v
vlog ../rtl/uart16550-1.5.4/rtl/verilog/uart_wb.v

vlog ../rtl/wb_riscvscale/vscale_alu.v
vlog ../rtl/wb_riscvscale/vscale_core.v +incdir+../rtl/wb_riscvscale
vlog ../rtl/wb_riscvscale/vscale_csr_file.v +incdir+../rtl/wb_riscvscale
vlog ../rtl/wb_riscvscale/vscale_ctrl.v
vlog ../rtl/wb_riscvscale/vscale_hasti_bridge.v
vlog ../rtl/wb_riscvscale/vscale_imm_gen.v
vlog ../rtl/wb_riscvscale/vscale_mul_div.v
vlog ../rtl/wb_riscvscale/vscale_PC_mux.v
vlog ../rtl/wb_riscvscale/vscale_pipeline.v +incdir+../rtl/wb_riscvscale
vlog ../rtl/wb_riscvscale/vscale_regfile.v
vlog ../rtl/wb_riscvscale/vscale_src_a_mux.v
vlog ../rtl/wb_riscvscale/vscale_src_b_mux.v
vlog ../rtl/wb_riscvscale/wb_vscale.v +incdir+../rtl/wb_riscvscale


vsim -voptargs=+acc work.testbench +define+MODELSIM
run -all
