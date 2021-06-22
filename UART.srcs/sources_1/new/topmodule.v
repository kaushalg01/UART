`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2021 13:16:58
// Design Name: 
// Module Name: topmodule
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


module topmodule(txstart,clk,rst,data,pb_error,sb_error,rx_dataout);
input txstart,clk,rst;
input [7:0]data;
output pb_error,sb_error;
output [7:0] rx_dataout;
wire tx_dataout,tx_busy;
transmitter t1(data,txstart,clk,tx_dataout,tx_busy,rst);
receiver r1(tx_dataout,clk,pb_error,sb_error,rx_dataout,rst); 
endmodule
