`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2021 15:59:23
// Design Name: 
// Module Name: stopbit_tb
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


module stopbit_tb;
reg in,checkstp; 
wire stperror ;
stopbit_check s1(in,checkstp,stperror); 
initial begin 
in=1'b1;  checkstp=1;
#4 in=1'b0; 
#4 in=1'b1; checkstp=0;
#4 $finish; 
end
endmodule
