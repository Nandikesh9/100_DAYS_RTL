`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:23:58 03/31/2025 
// Design Name: 
// Module Name:    rca_4bit 
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
module rca_4bit(
    input [3:0] a,b,
	 input cin,
    output [3:0] s,
	 output cout
    );
	 
	 wire c1,c2,c3;
	 Full_adder g1(.a(a[0]), .b(b[0]), .Cin(cin), .Sum(s[0]), .Cout(c1));
	 Full_adder g2(.a(a[1]), .b(b[1]), .Cin(c1), .Sum(s[1]), .Cout(c2));
	 Full_adder g3(.a(a[2]), .b(b[2]), .Cin(c2), .Sum(s[2]), .Cout(c3));
	 Full_adder g4(.a(a[3]), .b(b[3]), .Cin(c3), .Sum(s[3]), .Cout(cout));	 
	 
endmodule
