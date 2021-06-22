`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2021 16:16:15
// Design Name: 
// Module Name: PISO
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


module PISO(data,shift,ld,clk,out);
input shift,ld,clk;
input [7:0] data;
output out;   
reg [7:0] temp;    //this is the output of the 8 FF
assign out=temp[0]; 
always @(posedge clk) 
 begin 
  if(ld) 
   temp[7:0]=data[7:0]; 
  else if(shift) 
   begin
   temp[6]<=temp[7];
   temp[5]<=temp[6]; 
   temp[4]<=temp[5]; 
   temp[3]<=temp[4]; 
   temp[2]<=temp[3];
   temp[1]<=temp[2];
   temp[0]<=temp[1]; 
   end  
 end 
endmodule
