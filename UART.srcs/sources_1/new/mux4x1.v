`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 16:50:51
// Design Name: 
// Module Name: mux4x1
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


module mux4x1(in0,in1,in2,in3,sel,out);
input in0,in1,in2,in3; 
output  out; 
input [1:0] sel; 
assign out=sel[1]?(sel[0]?in3:in2):(sel[0]?in1:in0); 
endmodule
