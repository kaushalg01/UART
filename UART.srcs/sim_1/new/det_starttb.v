`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2021 17:27:37
// Design Name: 
// Module Name: det_starttb
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


module det_starttb;
reg rx_in,clk;
wire det;
det_start d1(rx_in,det,clk);
always  
 #5 clk=~clk; 
 
initial begin 
clk=1'b0; rx_in=1'b1;
#14 rx_in=1'b0;
#10 rx_in=1'b1;
end
endmodule
