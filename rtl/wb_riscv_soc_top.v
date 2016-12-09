//                              -*- Mode: Verilog -*-
// Filename        : wb_riscv_soc_top.v
// Description     : Wishbone RiscV SoC Top Level
// Author          : Philip Tracton
// Created On      : Tue Dec  6 21:14:31 2016
// Last Modified By: Philip Tracton
// Last Modified On: Tue Dec  6 21:14:31 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!


module wb_riscv_soc_top (/*AUTOARG*/
                         // Outputs
                         tx_i,
                         // Inputs
                         clk_i, rst_i, rx_i
                         ) ;
   parameter ROM_FILE = "";   
   
   input clk_i;
   input rst_i;
   input rx_i;
   output tx_i;


   //
   // Wires 
   //
   wire   wb_clk_i;
   wire   wb_rst_i;
   wire   wb_clk = wb_clk_i;
   wire   wb_rst = wb_rst_i;   
   `include "bus_matrix.vh"
  
   
   
   //
   // Clock and Reset Control
   //
   system_controller sys_con(
                             // Outputs
                             .wb_clk_o(wb_clk_i), 
                             .wb_rst_o(wb_rst_i),
                             // Inputs
                             .clk_i(clk_i), 
                             .rst_i(rst_i)
                             ) ;   
   
   //
   // Wishbone RiscV VScale CPU
   //
   wire [23:0] interrupts = 'b0;
  // assign wb_s2m_dwmb_err = 0;
   //assign wb_s2m_iwmb_err = 0;

   wb_vscale riscv_cpu(
                       .clk(wb_clk_i),
                       .rst(wb_rst_i),
                       .ext_interrupts(interrupts),
                       
                       .iwbm_adr_o(wb_m2s_iwmb_adr),
                       .iwbm_stb_o(wb_m2s_iwmb_stb),
                       .iwbm_cyc_o(wb_m2s_iwmb_cyc),
                       .iwbm_sel_o(wb_m2s_iwmb_sel),
                       .iwbm_we_o (wb_m2s_iwmb_we),
                       .iwbm_cti_o(wb_m2s_iwmb_cti),
                       .iwbm_bte_o(wb_m2s_iwmb_bte),
                       .iwbm_dat_o(wb_m2s_iwmb_dat),
                       .iwbm_err_i(wb_s2m_iwmb_err),
                       .iwbm_ack_i(wb_s2m_iwmb_ack),
                       .iwbm_dat_i(wb_s2m_iwmb_dat),
                       .iwbm_rty_i(wb_s2m_iwmb_rty),
                       .dwbm_adr_o(wb_m2s_dwmb_adr),
                       .dwbm_stb_o(wb_m2s_dwmb_stb),
                       .dwbm_cyc_o(wb_m2s_dwmb_cyc),
                       .dwbm_sel_o(wb_m2s_dwmb_sel),
                       .dwbm_we_o (wb_m2s_dwmb_we),
                       .dwbm_cti_o(wb_m2s_dwmb_cti),
                       .dwbm_bte_o(wb_m2s_dwmb_bte),
                       .dwbm_dat_o(wb_m2s_dwmb_dat),
                       .dwbm_err_i(wb_s2m_dwmb_err),
                       .dwbm_ack_i(wb_s2m_dwmb_ack),
                       .dwbm_dat_i(wb_s2m_dwmb_dat),
                       .dwbm_rty_i(wb_s2m_dwmb_rty)                        
                        );

  

   //
   // System RAM
   //
   `include "verilog_utils.vh"
   assign wb_s2m_ram_rty = 0;   
   wb_ram #(.depth(1024)) ram(
                              .wb_clk_i(wb_clk_i),
                              .wb_rst_i(wb_rst_i),
                              
                              .wb_adr_i(wb_m2s_ram_adr),
                              .wb_dat_i(wb_m2s_ram_dat),
                              .wb_sel_i(wb_m2s_ram_sel),
                              .wb_we_i(wb_m2s_ram_we),
                              .wb_bte_i(wb_m2s_ram_bte),
                              .wb_cti_i(wb_m2s_ram_cti),
                              .wb_cyc_i(wb_m2s_ram_cyc),
                              .wb_stb_i(wb_m2s_ram_stb),
                              
                              .wb_ack_o(wb_s2m_ram_ack),
                              .wb_err_o(wb_s2m_ram_err),
                              .wb_dat_o(wb_s2m_ram_dat)
                              );
   

   //
   // System ROM
   //
   assign wb_s2m_rom_rty = 0;  
   wb_ram #( .depth(4096)) rom(
                              .wb_clk_i(wb_clk_i),
                              .wb_rst_i(wb_rst_i),
                              
                              .wb_adr_i(wb_m2s_rom_adr),
                              .wb_dat_i(wb_m2s_rom_dat),
                              .wb_sel_i(wb_m2s_rom_sel),
                              .wb_we_i(wb_m2s_rom_we),
                              .wb_bte_i(wb_m2s_rom_bte),
                              .wb_cti_i(wb_m2s_rom_cti),
                              .wb_cyc_i(wb_m2s_rom_cyc),
                              .wb_stb_i(wb_m2s_rom_stb),
                              
                              .wb_ack_o(wb_s2m_rom_ack),
                              .wb_err_o(wb_s2m_rom_err),
                              .wb_dat_o(wb_s2m_rom_dat)
                              );
   

   //
   // UART 
   //
   assign wb_s2m_uart_err = 0;
   assign wb_s2m_uart_rty = 0;
   
   uart_wb uart(
                .clk(wb_clk_i), 
                .wb_rst_i(wb_rst_i), 
	            .wb_we_i(wb_m2s_uart_we), 
                .wb_stb_i(wb_m2s_uart_stb), 
                .wb_cyc_i(wb_m2s_uart_cyc), 
                .wb_ack_o(wb_s2m_uart_ack), 
                .wb_adr_i(wb_m2s_uart_adr),
	            .wb_adr_int(), 
                .wb_dat_i(wb_m2s_uart_dat), 
                .wb_dat_o(wb_s2m_uart_dat), 
                .wb_dat8_i(wb_m2s_uart_dat[7:0]), 
                .wb_dat8_o(), 
                .wb_dat32_o(), 
                .wb_sel_i(wb_m2s_uart_sel),
	            .we_o(), 
                .re_o() // Write and read enable output for the core
                );

   
   
endmodule // wb_riscv_soc_top
