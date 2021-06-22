`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2021 15:42:52
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb;
reg in,clk,en; 
wire [7:0] out; 
SIPO s1(en,in,clk,out); 
always 
 #3 clk=~clk; 
 initial begin 
  clk=0; in=0; en=1'b1; 
  #7 in=1; 
  #7 in=0; 
  #7 in=1;
  #7 in=1;
  #6 in=1;
  #6 in=0; 
  #8 $finish;
  end
endmodule
