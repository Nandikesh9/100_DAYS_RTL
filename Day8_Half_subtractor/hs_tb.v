`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:35:45 03/31/2025
// Design Name:   hs
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Half_sub/hs_tb.v
// Project Name:  Half_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hs_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire diff;
	wire brw;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	hs uut (
		.a(a), 
		.b(b), 
		.diff(diff), 
		.brw(brw)
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
		$monitor("inputs a=%b, b=%b, outputts diff=%b, brw=%b", a,b,diff,brw);
	
	initial 
		#40 $finish;
      
endmodule

