//                              -*- Mode: Verilog -*-
// Filename        : system_controller.v
// Description     : WB RiscV Clock and Reset System Controller
// Author          : Philip Tracton
// Created On      : Thu Dec  8 16:22:49 2016
// Last Modified By: Philip Tracton
// Last Modified On: Thu Dec  8 16:22:49 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

module system_controller (/*AUTOARG*/
   // Outputs
   wb_clk_o, wb_rst_o,
   // Inputs
   clk_i, rst_i
   ) ;
   input clk_i;
   input rst_i;

   output wb_clk_o;
   output wb_rst_o;

   //
   // TEMPORARY
   //
   assign wb_clk_o = clk_i;
   assign wb_rst_o = rst_i;
   
endmodule // system_controller
