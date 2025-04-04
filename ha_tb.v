`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:54:17 03/30/2025
// Design Name:   ha
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/half_adder/ha_tb.v
// Project Name:  half_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ha_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;
	integer i,j;
	// Instantiate the Unit Under Test (UUT)
	ha uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	end
	initial begin
		for (i=0;i<4;i=i+1) begin
			{a,b}=i;
			#10;
		end
	end
   
	initial 
		#100 $finish;
endmodule

