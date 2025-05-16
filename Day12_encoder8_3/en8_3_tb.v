`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:16:46 05/15/2025
// Design Name:   en8_3
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/encoder8_3/en8_3_tb.v
// Project Name:  encoder8_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: en8_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module en8_3_tb;

	// Inputs
	reg [7:0] i;

	// Outputs
	wire [2:0] y;
	//integer i,j;

	// Instantiate the Unit Under Test (UUT)
	en8_3 uut (
		.i(i), 
		.y(y), 
	);

	initial begin
		// Initialize Inputs
		i = 0;
	end
	
	initial begin
		i=8'b0000_0001;
		#5;
		i=8'b0000_0010;
		#5;
		i=8'b0000_0100;
		#5;
		i=8'b0000_1000;
		#5;
		i=8'b0001_0000;
		#5;
		i=8'b0010_0000;
		#5;
		i=8'b0100_0000;
		#5;
		i=8'b1000_0000;
		#5;
		
		/*enb=0;
		i=8'b0000_0001;
		#5;
		i=8'b0000_0010;
		#5;
		i=8'b0000_0100;
		#5;
		i=8'b0000_1000;
		#5;
		i=8'b0001_0000;
		#5;
		i=8'b0010_0000;
		#5;
		i=8'b0100_0000;
		#5;
		i=8'b1000_0000;
		#5;*/
	end    
	
	initial 
		$monitor("i=%b, | output y=%b", i,y);
		
	initial 
		#75 $finish;
endmodule

