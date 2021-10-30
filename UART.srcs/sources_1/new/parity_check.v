`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2021 17:32:26
// Design Name: 
// Module Name: parity_check
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


module parity_check(data,pbit,pbiterror,pload);
input [7:0] data;
input pbit,pload;
output reg  pbiterror;
reg temp;
always @(pload,data)
if(pload)
begin
 temp=^data; 
  pbiterror=temp^pbit;
end
endmodule
