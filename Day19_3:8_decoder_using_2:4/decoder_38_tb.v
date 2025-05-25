`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:54:31 05/25/2025
// Design Name:   decoder_38
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/decoder_3_8_using_2_4/decoder_38_tb.v
// Project Name:  decoder_3_8_using_2_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_38
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_38_tb;

	// Inputs
	reg [2:0] y;

	// Outputs
	wire [7:0] i;
	integer j;

	// Instantiate the Unit Under Test (UUT)
	decoder_38 uut (
		.y(y), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		y = 0;
	end
	
	initial begin
		for(j=0;j<8;j=j+1) begin
			{y}=j;
			#5;
		end
	end
	
	initial 
		$monitor("\ty=%b, | \toutput i=%b", y,i);
		
	initial
		#50 $finish;
      
endmodule

