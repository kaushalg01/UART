`timescale 1us / 1ns
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

//operating at baud rate =100000
module topmodule(txstart,clk,rst,data,pb_error,sb_error,rx_dataout,sel);
input txstart,clk,rst;
input [7:0]data;
output pb_error,sb_error;
wire baud_clk;
output [7:0] rx_dataout;
wire tx_dataout,tx_busy;
input [1:0] sel;
baud_rate bdr1(baud_clk,sel,clk,rst);    //used to divide the system's clock frequency by 10 ,for sel=2'b10
transmitter t1(data,txstart,baud_clk,tx_dataout,tx_busy,rst);
receiver r1(tx_dataout,baud_clk,pb_error,sb_error,rx_dataout,rst); 
endmodule
