//                              -*- Mode: Verilog -*-
// Filename        : testbench.v
// Description     : VScale RiscV WV SoC Testbench
// Author          : Philip Tracton
// Created On      : Tue Dec  6 21:11:19 2016
// Last Modified By: Philip Tracton
// Last Modified On: Tue Dec  6 21:11:19 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "timescale.v"

module testbench (/*AUTOARG*/ ) ;

`include "test_management.v"

   /****************************************************************************
    
    DEVICE UNDER TEST
    
    ***************************************************************************/   
   wb_riscv_soc_top dut(/*AUTOARG*/
                        // Outputs
                        .tx_i(),
                        // Inputs
                        .clk_i(clk), 
                        .rst_i(reset), 
                        .rx_i(1'b0)
                        ) ;

   
   /****************************************************************************
    
    TEST SUPPORT
    
    ***************************************************************************/
   
   //
   // Tasks used to help test cases
   //
   test_tasks test_tasks();
   
   //
   // The actual test cases that are being tested
   //
   test_case test_case();      
   
endmodule // testbench
