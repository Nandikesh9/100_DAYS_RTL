`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:22:05 07/21/2025
// Design Name:   demux4_1
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/demux_4_1_2_1/demux_4_1_2_1.v
// Project Name:  demux_4_1_2_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux4_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_1_4_2_1;

	// Inputs
	reg y;
	reg [1:0] sel;

	// Outputs
	wire [3:0] I;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	demux1_4 uut (
		.y(y), 
		.sel(sel), 
		.I(I)
	);

	initial begin
		// Initialize Inputs
		y = 0;
		sel = 0;
	end
	
	initial begin
		for(i=0;i<4;i=i+1) begin
			sel=i;
			for(j=0;j<2;j=j+1) begin
				y=j;
				#10;
			end
		end
		$finish;
	end
      
endmodule

