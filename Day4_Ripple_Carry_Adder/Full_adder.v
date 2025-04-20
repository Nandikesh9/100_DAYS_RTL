`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:18 04/20/2025 
// Design Name: 
// Module Name:    Full_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Full_adder(
    input a,b,Cin,
    output Cout,Sum
    );
	 
	 assign Sum = a ^ b^ Cin;
	 assign Cout = (a&b) | (b&Cin) | (Cin&a);


endmodule
