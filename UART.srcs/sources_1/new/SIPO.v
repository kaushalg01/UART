`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2021 15:35:28
// Design Name: 
// Module Name: SIPO
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


module SIPO(enbl,in,clk,out);
input enbl,clk,in; 
output reg [7:0] out; 
always@(posedge clk) 
 begin 
  if(enbl) 
   begin 
    out[7]<=in; 
    out[6]<=out[7];
    out[5]<=out[6]; 
    out[4]<=out[5];
    out[3]<=out[4]; 
    out[2]<=out[3]; 
    out[1]<=out[2]; 
    out[0]<=out[1]; 
   end
  end  
endmodule
