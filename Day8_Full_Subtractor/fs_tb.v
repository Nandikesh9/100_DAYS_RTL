`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:16:45 03/31/2025
// Design Name:   fs
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Full_sub/fs_tb.v
// Project Name:  Full_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fs_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire diff;
	wire brw;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fs uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.diff(diff), 
		.brw(brw)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
	end
	
	initial begin
		for (i=0;i<8;i=i+1) begin
			{a,b,c}=i;
			#10;
		end
	end
	
	initial 
		$monitor("inputs a=%b, b=%b, c=%b, outputs diff=%b, brw=%b", a,b,c,diff,brw);
		
	initial 
		#100 $finish;
      
endmodule

