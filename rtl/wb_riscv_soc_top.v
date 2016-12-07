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
   `include "bus_matrix.vh"
   wire   wb_clk_i;
   wire   wb_rst_i;

   
   //
   // Clock and Reset Control
   //
   system_controller (
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
   wb_vscale riscv_cput(
                        .clk(wb_clk_i),
                        .rst(wb_rst_i),
                        .ext_interrupts(),
                        // Wishbone interface
                        iwbm_adr_o(),
                        iwbm_stb_o(),
                        iwbm_cyc_o(),
                        iwbm_sel_o(),
                        iwbm_we_o(),
                        iwbm_cti_o(),
                        iwbm_bte_o(),
                        iwbm_dat_o(),
                        iwbm_err_i(),
                        iwbm_ack_i(),
                        iwbm_dat_i(),
                        iwbm_rty_i(),
   
                        dwbm_adr_o(),
                        dwbm_stb_o(),
                        dwbm_cyc_o(),
                        dwbm_sel_o(),
                        dwbm_we_o(),
                        dwbm_cti_o(),
                        dwbm_bte_o(),
                        dwbm_dat_o(),
                        dwbm_err_i(),
                        dwbm_ack_i(),
                        dwbm_dat_i(),
                        dwbm_rty_i()
                        );

   //
   // Bus Matrix
   //
   wb_intercon bus_matrix
     (         wb_clk_i(),
               wb_rst_i(),
               wb_iwmb_adr_i(),
               wb_iwmb_dat_i(),
               wb_iwmb_sel_i(),
               wb_iwmb_we_i(),
               wb_iwmb_cyc_i(),
               wb_iwmb_stb_i(),
               wb_iwmb_cti_i(),
               wb_iwmb_bte_i(),
               wb_iwmb_dat_o(),
               wb_iwmb_ack_o(),
               wb_iwmb_err_o(),
               wb_iwmb_rty_o(),
               wb_dwmb_adr_i(),
               wb_dwmb_dat_i(),
               wb_dwmb_sel_i(),
               wb_dwmb_we_i(),
               wb_dwmb_cyc_i(),
               wb_dwmb_stb_i(),
               wb_dwmb_cti_i(),
               wb_dwmb_bte_i(),
               wb_dwmb_dat_o(),
               wb_dwmb_ack_o(),
               wb_dwmb_err_o(),
               wb_dwmb_rty_o(),
               wb_uart_adr_o(),
               wb_uart_dat_o(),
               wb_uart_sel_o(),
               wb_uart_we_o(),
               wb_uart_cyc_o(),
               wb_uart_stb_o(),
               wb_uart_cti_o(),
               wb_uart_bte_o(),
               wb_uart_dat_i(),
               wb_uart_ack_i(),
               wb_uart_err_i(),
               wb_uart_rty_i(),
               wb_ram_adr_o(),
               wb_ram_dat_o(),
               wb_ram_sel_o(),
               wb_ram_we_o(),
               wb_ram_cyc_o(),
               wb_ram_stb_o(),
               wb_ram_cti_o(),
               wb_ram_bte_o(),
               wb_ram_dat_i(),
               wb_ram_ack_i(),
               wb_ram_err_i(),
               wb_ram_rty_i(),
               wb_rom_adr_o(),
               wb_rom_dat_o(),
               wb_rom_sel_o(),
               wb_rom_we_o(),
               wb_rom_cyc_o(),
               wb_rom_stb_o(),
               wb_rom_cti_o(),
               wb_rom_bte_o(),
               wb_rom_dat_i(),
               wb_rom_ack_i(),
               wb_rom_err_i(),
               wb_rom_rty_i()
               );   

   //
   // System RAM
   //
   wb_ram ram
     #(//Wishbone parameters
       .dw(32),
       //Memory parameters
       .depth(1024),
       .aw($clog2(depth)),
       .memfile(""))
   (	   .wb_clk_i(wb_clk_i),
           .wb_rst_i(wb_rst_i),
           
           .wb_adr_i(),
           .wb_dat_i(),
           .wb_sel_i(),
           .wb_we_i(),
           .wb_bte_i(),
           .wb_cti_i(),
           .wb_cyc_i(),
           .wb_stb_i(),
           
           .wb_ack_o(),
           .wb_err_o(),
           .wb_dat_o()
           );
   

   //
   // System ROM
   //
   wb_ram rom
     #(//Wishbone parameters
       .dw(32),
       //Memory parameters
       .depth(4096),
       .aw($clog2(depth)),
       .memfile(ROM_FILE))
   (	   .wb_clk_i(wb_clk_i),
           .wb_rst_i(wb_rst_i),
           
           .wb_adr_i(),
           .wb_dat_i(),
           .wb_sel_i(),
           .wb_we_i(),
           .wb_bte_i(),
           .wb_cti_i(),
           .wb_cyc_i(),
           .wb_stb_i(),
           
           .wb_ack_o(),
           .wb_err_o(),
           .wb_dat_o()           
           );


   //
   // UART 
   //
   uart_wb uart(
                .clk(wb_clk_i), 
                .wb_rst_i(wb_rst_i), 
	            .wb_we_i(), 
                .wb_stb_i(), 
                .wb_cyc_i(), 
                .wb_ack_o(), 
                .wb_adr_i(),
	            .wb_adr_int(), 
                .wb_dat_i(), 
                .wb_dat_o(), 
                .wb_dat8_i(), 
                .wb_dat8_o(), 
                .wb_dat32_o(), 
                .wb_sel_i(),
	            .we_o(), 
                .re_o() // Write and read enable output for the core
                );

   
   
endmodule // wb_riscv_soc_top
