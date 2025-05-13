`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:50 05/13/2025
// Design Name:   en4_2
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Encoder/en4_2_tb.v
// Project Name:  Encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: en4_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module en4_2_tb;

	// Inputs
	reg [3:0] a;

	// Outputs
	wire [1:0] y;
	//integer i,k;

	// Instantiate the Unit Under Test (UUT)
	en4_2 uut (
		.a(a),
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
	end
	
	initial begin 
		a=4'b0001;
		#5;
		a=4'b0010;
		#5;
		a=4'b0100;
		#5;
		a=4'b1000;
		#5;
		
	end
	
	initial 
		$monitor("a=%b, | output y=%b",a,y);
	
	initial
		#20 $finish;
      
endmodule



