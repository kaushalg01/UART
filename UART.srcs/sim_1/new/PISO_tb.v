`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 16:41:01
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb;
reg shift,ld,clk;
reg [7:0] data;
wire out; 
PISO p1(data,shift,ld,clk,out); 
always  
  #5 clk=~clk; 
initial begin 
 clk=0; ld=1'b1; data=8'hAA; shift=1'b0;  
 #7 ld=1'b0; shift=1'b1; 
 #78 $finish;
 end 
endmodule
