//                              -*- Mode: Verilog -*-
// Filename        : boot.v
// Description     : RiscV Boot Test Case
// Author          : Philip Tracton
// Created On      : Wed Dec  7 21:00:27 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Dec  7 21:00:27 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "timescale.v"
`include "simulation_includes.vh"

module test_case (/*AUTOARG*/ ) ;

   //
   // Test Configuration
   // These parameters need to be set for each test case
   //
   parameter simulation_name = "boot";    
   parameter number_of_tests = 0;
`include "setup.v"

   reg  err;
   reg [31:0] data_out;
   integer    i;

   initial begin
      $display("Boot Case");
      #1000;
      `TEST_COMPLETE;      
   end
   
endmodule // test_case
