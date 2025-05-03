`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:53 04/20/2025 
// Design Name: 
// Module Name:    Carry_Sel_Adder 
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
module Carry_Sel_Adder(
    input [3:0] a,b,
    input Cin,
    output Cout,
    output [3:0] Sum
    );
	 wire [7:0]c,s;
	 
	 // RCA for carry_in as 0
	 Full_adder full_adder0 (.a(a[0]),.b(b[0]),.Cin(1'b0),.Sum(s[0]),.Cout(c[0]));
	 Full_adder full_adder1 (.a(a[1]),.b(b[1]),.Cin(c[0]),.Sum(s[1]),.Cout(c[1]));
	 Full_adder full_adder2 (.a(a[2]),.b(b[2]),.Cin(c[1]),.Sum(s[2]),.Cout(c[2]));
	 Full_adder full_adder3 (.a(a[3]),.b(b[3]),.Cin(c[2]),.Sum(s[3]),.Cout(c[3]));

	 // RCA for carry_in as 1
	 Full_adder full_adder4 (.a(a[0]),.b(b[0]),.Cin(1'b1),.Sum(s[4]),.Cout(c[4]));
	 Full_adder full_adder5 (.a(a[1]),.b(b[1]),.Cin(c[4]),.Sum(s[5]),.Cout(c[5]));
	 Full_adder full_adder6 (.a(a[2]),.b(b[2]),.Cin(c[5]),.Sum(s[6]),.Cout(c[6]));
	 Full_adder full_adder7 (.a(a[3]),.b(b[3]),.Cin(c[6]),.Sum(s[7]),.Cout(c[7]));
	 
	 //mux for sum
	 mux2_1 mux0(.i0(s[0]),.i1(s[4]),.sel(Cin),.z(Sum[0]));
	 mux2_1 mux1(.i0(s[1]),.i1(s[5]),.sel(Cin),.z(Sum[1]));
	 mux2_1 mux2(.i0(s[2]),.i1(s[6]),.sel(Cin),.z(Sum[2]));
	 mux2_1 mux3(.i0(s[3]),.i1(s[7]),.sel(Cin),.z(Sum[3]));
	 
	 // Cout mux
	 mux2_1 mux4 (.i0(c[3]),.i1(c[7]),.sel(Cin),.z(Cout));
endmodule
