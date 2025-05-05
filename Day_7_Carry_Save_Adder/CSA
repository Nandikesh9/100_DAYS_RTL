`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:40 05/04/2025 
// Design Name: 
// Module Name:    CSA 
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
module CSA(
    input [3:0] a,b,c,
    output [4:0]Sum,
    output Cout
    );
	 
	 wire [3:1]s;
	 wire [6:0]ic;
	 
	 Full_adder fa0(.a(a[0]), .b(b[0]), .Cin(c[0]), .Sum(Sum[0]), .Cout(ic[0]));
	 Full_adder fa1(.a(a[1]), .b(b[1]), .Cin(c[1]), .Sum(s[1]), .Cout(ic[1]));
	 Full_adder fa2(.a(a[2]), .b(b[2]), .Cin(c[2]), .Sum(s[2]), .Cout(ic[2]));
	 Full_adder fa3(.a(a[3]), .b(b[3]), .Cin(c[3]), .Sum(s[3]), .Cout(ic[3]));
	 
	 Full_adder fa4(.a(ic[0]), .b(s[1]), .Cin(1'b0), .Sum(Sum[1]), .Cout(ic[4]));
	 Full_adder fa5(.a(ic[1]), .b(s[2]), .Cin(ic[4]), .Sum(Sum[2]), .Cout(ic[5]));
	 Full_adder fa6(.a(ic[2]), .b(s[3]), .Cin(ic[5]), .Sum(Sum[3]), .Cout(ic[6]));
	 Full_adder fa7(.a(ic[3]), .b(1'b0), .Cin(ic[6]), .Sum(Sum[4]), .Cout(Cout));

endmodule

module Full_adder(
    input a,b,Cin,
    output Cout,Sum
    );
	 
	 assign Sum = a ^ b^ Cin;
	 assign Cout = (a&b) | (b&Cin) | (Cin&a);


endmodule
