`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 17:22:52
// Design Name: 
// Module Name: parity_gentb
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


module parity_gentb; 
reg ld; 
reg [7:0] data; 
wire out; 
parity_gen p1(ld,data,out); 
initial begin  
 ld=1'b1; data=8'b10101110;
 #5 ld=1'b0; data=8'b11111111; 
 #5 ld=1'b1; data=8'b11110110;
 #5 $finish; 
 end 
endmodule
