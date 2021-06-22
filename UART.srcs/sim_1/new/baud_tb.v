`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2021 11:23:49
// Design Name: 
// Module Name: baud_tb
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


module baud_tb;
reg clk,rst;
reg [1:0] sel;
wire baud_clk;
baud_rate b1(baud_clk,sel,clk,rst); 
always 
 #1 clk=~clk;
 initial begin 
 clk=0; sel=2'b11;rst=0;
#1 rst=1;
 
 end
endmodule
