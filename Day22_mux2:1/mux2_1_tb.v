`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:18:51 05/28/2025
// Design Name:   mux2_1
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Mux2_1/mux2_1_tb.v
// Project Name:  Mux2_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2_1_tb;

	// Inputs
	reg [1:0] i;
	reg sel;

	// Outputs
	wire y;
	integer j,k;

	// Instantiate the Unit Under Test (UUT)
	mux2_1 uut (
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
		for (j=0;j<=2;j=j+1) begin
			{sel}=j;
			for(k=0;k<4;k=k+1) begin
				{i}=k;
				#5;
			end
		end
	end

	initial 
		$monitor("\t i=%b, \sel=%b, | \toutput = %b", i,sel,y);
		
	initial
		#40 $finish;
endmodule
