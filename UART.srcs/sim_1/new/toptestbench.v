`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2021 15:27:36
// Design Name: 
// Module Name: toptestbench
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


module toptestbench;
reg tx_start,clk,rst;
reg [1:0] sel;
reg [7:0] data;
wire pb_error,sb_error;
wire [7:0] data_out;   
topmodule tpm1(tx_start,clk,rst,data,pb_error,sb_error,data_out,sel);
always
 #0.5 clk=~clk;
 initial begin  
 clk=0; rst=1;
 #0.5 rst=0;
 sel=2'b10;
#1 rst=1; data=8'b00010101;tx_start=1'b1;  
 
   end 
 endmodule
