//                              -*- Mode: Verilog -*-
// Filename        : setup.v
// Description     : Setup details for running a test case
// Author          : Philip Tracton
// Created On      : Wed Jul 27 21:08:53 2016
// Last Modified By: Philip Tracton
// Last Modified On: Wed Jul 27 21:08:53 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!

initial begin
   $display("%s", {simulation_name, ".mem"});
   $readmemh( {simulation_name, ".mem"}, `PROGRAM_ROM.ram0.mem);
end
