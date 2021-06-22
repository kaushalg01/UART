`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2021 16:58:48
// Design Name: 
// Module Name: receiver_tb
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


module receiver_tb;
reg clk,rst,in; 
wire sb_error,pb_error; 
wire [7:0]out;
receiver r1(in,clk,pb_error,sb_error,out,rst); 
always 
 #3 clk=~clk; 
 initial begin 
  rst=0;in=1;clk=0;
  #4 in=0;rst=1;
  #8 in=1; 
  #8 in=0;
  #6 in=1; 
  #6 in=0;
  #6 in=0; 
  #6 in=1; 
  #6 in=0; 
  #6 in=0;
  #6 in=1; 
  #6 in=1; //68 //ps=3
 //After 1 reception, we can't give start=1 immediately as it goes to reset state first and takes 1 clock for that
   #6  //ps=0
  #4 in=0; // We have to wait for 6 and then apply input as it stays in idle for 6 
  #6 in=1;
  #6 in=0; 
  #6 in=1; 
  #6 in=1;
  #6 in=0;
  #6 in=0; 
  #6 in=1;
  #6 in=0;
  #6 in=0;
  #6 in=1; 
  #60 $finish;
  end  
endmodule
