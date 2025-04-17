`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:35:06 04/16/2025
// Design Name:   gates
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/gates/gates_tb.v
// Project Name:  gates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gates
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gates_tb;

	// Inputs
	reg [6:0] a;
	reg [6:0] b;

	// Outputs
	wire [6:0] z;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	gates uut (
		.a(a), 
		.b(b), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
	end
	

endmodule

