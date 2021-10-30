`timescale 1us / 1ns
/////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 16:59:23
// Design Name: 
// Module Name: parity_gen
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

//Even parity generator
module parity_gen(ld,data,out);
input ld; 
input [7:0] data; 
output reg out;
   always@(ld,data) 
  begin 
   if(ld)
   out=^data;
  end 
endmodule
