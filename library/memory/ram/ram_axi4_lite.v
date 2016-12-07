//                              -*- Mode: Verilog -*-
// Filename        : ram_axi4_lite.v
// Description     : Simple RAM with AXI4 Lite Interface
// Author          : Philip Tracton
// Created On      : Fri Nov 25 22:12:00 2016
// Last Modified By: Philip Tracton
// Last Modified On: Fri Nov 25 22:12:00 2016
// Update Count    : 0
// Status          : Unknown, Use with caution!
module ram_axi4_lite (/*AUTOARG*/ ) ;
   input wire hclk;
   input wire hresetn;  //Active LOW
   input wire [14:0] haddr;
   input wire        hwrite;
   input wire [3:0]  hsize;
   input wire [1:0]  htrans;
   input wire [31:0] hwdata;
   input wire        hsel;
   
   output reg [31:0] hrdata;
   output reg        hready;
   output reg        hresp;


   reg [31:0]    memory [0:4095];  //4kx32 memory

   reg [14:0]    addr;
   reg           active;
   
   always @(posedge hclk)
     if (~hresetn) begin
        addr <= 15'b0;
        active <= 1'b0;        
     end else begin
        addr <= haddr;
        active <= htrans[1] & hsel;        
     end

   reg [31:0] temp;   
   always @(posedge hclk)
     if (~hresetn) begin
        temp <= 0;        
     end else begin
        temp  <= memory[addr];        
        if (hwrite) begin
           case (hsize)
             3'b000: memory[addr] <= {temp[31:8}, hwdata[7:0]};             
             3'b001: memory[addr] <= {temp[31:16}, hwdata[15:0]};
             3'b010: memory[addr] <= hwdata;
             default: $display("SIZE ERROR @ %d", $time)
           endcase
           memory[addr] <= hwdata;           
        end
     end
   
              
                                 
endmodule // ram_axi4_lite
