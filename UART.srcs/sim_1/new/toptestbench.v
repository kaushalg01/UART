`timescale 1ns / 1ps
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
reg [7:0] data;
wire pb_error,sb_error;
wire [7:0] data_out;   
topmodule tpm1(tx_start,clk,rst,data,pb_error,sb_error,data_out);
always
 #5 clk=~clk;
 initial begin  
 clk=0; rst=0;
#7 rst=1; data=8'b00010101;tx_start=1'b1;  
 
   end 
 endmodule
