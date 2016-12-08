//                              -*- Mode: Verilog -*-
// Filename        : wb_dump.v
// Description     : Dump signals for waveform debugging
// Author          : Philip Tracton
// Created On      : Wed Dec  2 14:22:59 2015
// Last Modified By: Philip Tracton
// Last Modified On: Wed Dec  2 14:22:59 2015
// Update Count    : 0
// Status          : Unknown, Use with caution!


`include "simulation_includes.vh"

module dump;

   reg [(64*8)-1:0] test_name;
   
   initial
     begin
        test_name = `SIMULATION_NAME;
        
`ifdef NCVERILOG
        //$shm_open("test.shm",0);
        $shm_open({test_name,".shm"}, 0);
        $shm_probe(`TB,"MAC");  
 `ifdef SOC
        $shm_probe(`PROGRAM_ROM, "MAC");
        
 `endif      
`else	
	    $dumpfile({test_name,".vcd"});
	    $dumpvars(0, `TB);
`ifndef RTL_SIM
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[0]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[1]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[2]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[3]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[4]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[5]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[6]);
        $dumpvars(1, adxl362_testbench.adxl362.spi.fifo[7]);
`endif
`endif
	      
     end // initial begin
   
   
endmodule // test_top
