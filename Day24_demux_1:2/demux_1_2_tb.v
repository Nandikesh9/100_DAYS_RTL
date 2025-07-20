`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:07:27 06/23/2025
// Design Name:   demux_1_2
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/demux_1_2/demux_1_2_tb.v
// Project Name:  demux_1_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_1_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_1_2_tb;

	// Inputs
	reg sel;
	reg Y;

	// Outputs
	wire [1:0] I;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	demux_1_2 uut (
		.sel(sel), 
		.Y(Y), 
		.I(I)
	);

	initial begin
		// Initialize Inputs
		sel = 0;
		Y = 0;
	end
	
	initial begin
		for (i=0;i<2;i=i+1)begin
			sel=i;
			for(j=0;j<2;j=j+1)begin
				Y=j;
				#10;
			end
		end
		$finish;
	end
	
	//initial 
	//	#50 $finish;
      
endmodule

