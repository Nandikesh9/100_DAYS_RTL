`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:07:52 04/20/2025
// Design Name:   Carry_Sel_Adder
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Carry_Sel_Adder/Cary_sel_Adder_tb.v
// Project Name:  Carry_Sel_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Carry_Sel_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Cary_sel_Adder_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg Cin;

	// Outputs
	wire Cout;
	wire [3:0] Sum;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	Carry_Sel_Adder uut (
		.a(a), 
		.b(b), 
		.Cin(Cin), 
		.Cout(Cout), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		Cin = 0;
	end
	
	initial begin
		for (i=0;i<2;i=i+1) begin
			Cin =i;
			for (j=0;j<256;j=j+1) begin
				{a,b}=j;
				#1;
			end
		end
	end
	
	initial 	
		$monitor("a=%b, b=%b, Cin=%b, Sum=%b, Cout=%b", a,b,Cin,Sum,Cout);
		
	initial
		#2000 $finish;
      
endmodule

