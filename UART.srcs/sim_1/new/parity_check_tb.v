`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2021 17:40:25
// Design Name: 
// Module Name: parity_check_tb
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


module parity_check_tb;
reg [7:0] data;
reg pbit,pload; 
wire pbiterror; 
parity_check p1(data,pbit,pbiterror,pload);
initial begin
data=8'b10101000; pbit=1'b1; pload=1'b1; 
#4 data=8'b10101010; pbit=1'b1;
#4 $finish;
end
endmodule
