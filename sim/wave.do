onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {TEST BENCH} /testbench/clk
add wave -noupdate -group {TEST BENCH} /testbench/reset
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_clk_i
add wave -noupdate -group DUT -color Magenta -radix hexadecimal /testbench/dut/wb_rst_i
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_iwmb_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_adr
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_bte
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cti
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_cyc
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_sel
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_stb
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_m2s_rom_we
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_ack
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_dat
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_err
add wave -noupdate -group DUT -radix hexadecimal /testbench/dut/wb_s2m_rom_rty
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/instruction
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_ack_i
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_adr_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_bte_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_cti_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_cyc_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_dat_i
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_dat_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_err_i
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_riscv_adr
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_riscv_cyc
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_riscv_stb
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_rty_i
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_sel_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_stb_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_we_o
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/pc
add wave -noupdate -group IBUS -radix hexadecimal /testbench/dut/riscv_cpu/state
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/PC_DX
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/PC_IF
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/PC_PIF
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/PC_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/PC_src_sel
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/alu_op
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/alu_out
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/alu_out_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/alu_src_a
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/alu_src_b
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/bypass_data_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/bypass_rs1
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/bypass_rs2
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/clk
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/cmp_true
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/csr_addr
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/csr_cmd
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/csr_imm_sel
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/csr_rdata
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/csr_rdata_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/csr_wdata
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_addr
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_badmem_e
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_en
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_rdata
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_size
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_type
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_type_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_wait
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_wdata_delayed
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/dmem_wen
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/epc
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/eret
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/exception_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/exception_code_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ext_interrupts
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/handler_PC
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_req_addr
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_req_data
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_req_ready
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_req_rw
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_req_valid
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_resp_data
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_resp_ready
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_pcr_resp_valid
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/htif_reset
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/illegal_csr_access
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/imem_addr
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/imem_badmem_e
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/imem_rdata
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/imem_wait
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/imm
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/imm_type
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/inst_DX
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/interrupt_pending
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/interrupt_taken
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/kill_DX
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/kill_IF
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/kill_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/load_data_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_req_in_1_signed
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_req_in_2_signed
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_req_op
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_req_out_sel
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_req_ready
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_req_valid
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_resp_result
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/md_resp_valid
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/prv
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/reg_to_wr_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/reset
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/retire_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/rs1_addr
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/rs1_data
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/rs1_data_bypassed
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/rs2_addr
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/rs2_data
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/rs2_data_bypassed
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/src_a_sel
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/src_b_sel
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/stall_DX
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/stall_IF
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/stall_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/store_data_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/wb_data_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/wb_src_sel_WB
add wave -noupdate -group {VSCALE CORE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/wr_reg_WB
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/clk
add wave -noupdate -group {REG FILE} -radix hexadecimal -childformat {{{/testbench/dut/riscv_cpu/vscale_core/regfile/data[31]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[30]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[29]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[28]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[27]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[26]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[25]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[24]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[23]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[22]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[21]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[20]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[19]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[18]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[17]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[16]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[15]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[14]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[13]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[12]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[11]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[10]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[9]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[8]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[7]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[6]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[5]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[4]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[3]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[2]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[1]} -radix hexadecimal} {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[0]} -radix hexadecimal}} -subitemconfig {{/testbench/dut/riscv_cpu/vscale_core/regfile/data[31]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[30]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[29]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[28]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[27]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[26]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[25]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[24]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[23]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[22]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[21]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[20]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[19]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[18]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[17]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[16]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[15]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[14]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[13]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[12]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[11]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[10]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[9]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[8]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[7]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[6]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[5]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[4]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[3]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[2]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[1]} {-height 17 -radix hexadecimal} {/testbench/dut/riscv_cpu/vscale_core/regfile/data[0]} {-height 17 -radix hexadecimal}} /testbench/dut/riscv_cpu/vscale_core/regfile/data
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/i
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/ra1
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/ra2
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/rd1
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/rd2
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/wa
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/wd
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/wen
add wave -noupdate -group {REG FILE} -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/regfile/wen_internal
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/PC_src_sel
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/active_wfi_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/add_or_sub
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/alu_op
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/alu_op_arith
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/branch_taken
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/branch_taken_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/bypass_rs1
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/bypass_rs2
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/clk
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/cmp_true
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/csr_cmd
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/csr_cmd_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/csr_imm_sel
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_access_exception
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_badmem_e
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_en
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_en_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_en_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_size
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_type
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_wait
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_wen
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/dmem_wen_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ebreak
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ecall
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/eret
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/eret_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ex_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ex_IF
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ex_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ex_code_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/ex_code_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/exception
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/exception_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/exception_code_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/fence_i
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/funct12
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/funct3
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/funct7
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/had_ex_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/had_ex_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/illegal_csr_access
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/illegal_instruction
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/imem_badmem_e
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/imem_wait
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/imm_type
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/inst_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/interrupt_pending
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/interrupt_taken
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/jal
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/jal_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/jalr
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/jalr_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/kill_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/kill_IF
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/kill_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/killed_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/killed_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/load_in_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/load_use
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_req_in_1_signed
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_req_in_2_signed
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_req_op
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_req_out_sel
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_req_ready
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_req_valid
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/md_resp_valid
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/new_ex_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/opcode
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/prev_ex_code_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/prev_killed_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/prev_killed_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/prv
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/raw_on_busy_md
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/raw_rs1
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/raw_rs2
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/redirect
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/reg_to_wr_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/reg_to_wr_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/replay_IF
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/reset
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/retire_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/rs1_addr
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/rs2_addr
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/src_a_sel
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/src_b_sel
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/srl_or_sra
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/stall_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/stall_IF
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/stall_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/store_in_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/uses_md
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/uses_md_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/uses_md_unkilled
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/uses_rs1
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/uses_rs2
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wb_src_sel_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wb_src_sel_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wfi_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wfi_unkilled_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wfi_unkilled_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wr_reg_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wr_reg_WB
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wr_reg_unkilled_DX
add wave -noupdate -group CTRL -radix hexadecimal /testbench/dut/riscv_cpu/vscale_core/ctrl/wr_reg_unkilled_WB
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/clk
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/cpu_start
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/data_wire
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/ddata
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dmem_addr
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dmem_request
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dmem_size
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dmem_wait
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dmem_we
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dstate
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_ack_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_adr_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_bte_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_cti_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_cyc_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_dat_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_dat_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_err_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_adr
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_bte
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_cti
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_cyc
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_dat
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_sel
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_stb
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_riscv_we
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_rty_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_sel_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_stb_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/dwbm_we_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/ext_interrupts
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/imem_wait
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/instruction
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_ack_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_adr_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_bte_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_cti_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_cyc_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_dat_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_dat_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_err_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_riscv_adr
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_riscv_cyc
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_riscv_stb
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_rty_i
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_sel_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_stb_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/iwbm_we_o
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/kill_wishbone_ireq
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/mem_read_value
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/pc
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/previous_dmem_access
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/replay_IF_out
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/rst
add wave -noupdate -group {WB RISCV TOP} -radix hexadecimal /testbench/dut/riscv_cpu/state
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_ack_o
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_adr_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_bte_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_clk_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_cti_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_cyc_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_dat_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_dat_o
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_err_o
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_rst_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_sel_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_stb_i
add wave -noupdate -group ROM -radix hexadecimal /testbench/dut/rom/wb_we_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/active
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wb_clk_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wb_rst_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_ack_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_adr_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_bte_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_cti_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_cyc_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_dat_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_dat_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_err_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_rty_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_sel_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_stb_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbm_we_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_ack_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_adr_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_bte_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_cti_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_cyc_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_dat_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_dat_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_err_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_rty_i
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_sel_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_stb_o
add wave -noupdate -group {ROM ARBITER} -radix hexadecimal /testbench/dut/wb_intercon0/wb_arbiter_rom/wbs_we_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/MATCH_ADDR
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/MATCH_MASK
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/aw
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/dw
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/match
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/num_slaves
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/slave_sel
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/slave_sel_bits
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wb_clk_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wb_rst_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_ack_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_adr_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_bte_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_cti_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_cyc_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_dat_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_dat_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_err
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_err_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_rty_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_sel_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_stb_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbm_we_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_ack_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_adr_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_bte_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_cti_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_cyc_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_dat_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_dat_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_err_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_rty_i
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_sel_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_stb_o
add wave -noupdate -expand -group {IBUS MUX} -radix hexadecimal /testbench/dut/wb_intercon0/wb_mux_iwmb/wbs_we_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {163 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 424
configure wave -valuecolwidth 156
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {10005 ns} {10011 ns}
bookmark add wave bookmark0 {{128 ns} {294 ns}} 0
