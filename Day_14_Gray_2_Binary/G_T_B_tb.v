`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:56 05/17/2025
// Design Name:   B_T_G
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/binary_to_gray/B_T_G_tb.v
// Project Name:  binary_to_gray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: B_T_G
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module G_T_B_tb;

	// Inputs
  reg [3:0] g;

	// Outputs
  wire [3:0] b;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	G_T_B uut (
		.b(b), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		g = 0;
	end
	
	initial begin
		for(i=0;i<16;i=i+1) begin
      {g}=i;
			#5;
		end
	end
	
	initial 
    $monitor("g=%b, | output b=%b", g,b);
	
	initial
		#75 $finish;
      
endmodule
