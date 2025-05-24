`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:26:31 05/24/2025
// Design Name:   pri_decoder
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Priority_decoder/pri_decoder_tb.v
// Project Name:  Priority_decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pri_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pri_decoder_tb;

	// Inputs
	reg [1:0] y;

	// Outputs
	wire [3:0] i;
	integer j;

	// Instantiate the Unit Under Test (UUT)
	pri_decoder uut (
		.y(y), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		y = 0;
	end
	
	initial begin
		for(j=0;j<4;j=j+1) begin
			{y}=j;
			#5;
		end
	end
		
	initial 	
		$monitor("\ty=%b, \t| Output i=%b",y,i);
	
	initial
		#20 $finish;
      
endmodule

