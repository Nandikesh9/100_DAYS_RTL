`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:15:29 06/02/2025
// Design Name:   mux4_1
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/mux4_1/mux4_1_tb.v
// Project Name:  mux4_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4_1_tb;

	// Inputs
	reg [3:0] i;
	reg [1:0] sel;

	// Outputs
	wire y;
	integer j,k;

	// Instantiate the Unit Under Test (UUT)
	mux4_1 uut (
		.i(i), 
		.sel(sel), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		sel = 0;
	end
	
	initial begin
		for(j=0;j<4;j=j+1) begin
			{sel}=j;
			for(k=0;k<16;k=k+1) begin
				{i}=k;
				#5;
			end
		end
	end
	
	initial 
		$monitor("\tsel=%b, \ti=%b | \toutput y=%b",sel,i,y);

	initial 
		#320 $finish;
endmodule

