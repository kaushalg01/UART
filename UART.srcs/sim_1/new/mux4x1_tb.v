`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 16:54:36
// Design Name: 
// Module Name: mux4x1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4x1_tb;
reg [3:0] in;
reg [1:0] sel; 
wire out; 
 mux4x1 m1(in[0],in[1],in[2],in[3],sel,out);
 initial begin 
  in=4'b1011; sel=2'b00; 
  #5 sel=2'b10; 
  #5 sel=2'b11; 
  #5 $finish; 
  end 
endmodule
