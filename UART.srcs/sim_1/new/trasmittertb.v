`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2021 09:08:08
// Design Name: 
// Module Name: trasmittertb
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


module trasmittertb; 
reg clk,txstart,rst;
reg [7:0] txdata;  
wire tx_dataout,tx_busy; 
transmitter t1(txdata,txstart,clk,tx_dataout,tx_busy,rst); 
always 
 #3 clk=~clk; 
    initial begin  
     txdata=8'b00010101;clk=1'b0; rst=1'b0;
     #4 ;rst=1'b1; txstart=1'b1;
     #50 txdata=8'b00001101;
 #500 $finish;
 end 
endmodule
