`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:11 05/20/2025
// Design Name:   BCD_2_Bin
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/BCD_2_Binary/BCD_2_Binary_tb.v
// Project Name:  BCD_2_Binary
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD_2_Bin
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD_2_Binary_tb;

	// Inputs
	reg [3:0] huns;
	reg [3:0] tens;
	reg [3:0] units;

	// Outputs
	wire [9:0] Bout;

	// Instantiate the Unit Under Test (UUT)
	BCD_2_Bin uut (
		.huns(huns), 
		.tens(tens), 
		.units(units), 
		.Bout(Bout)
	);

	initial begin
		// Initialize Inputs
		huns = 0;
		tens = 0;
		units = 0;
	end
	
		
	initial begin
		huns = 2;
		tens = 0;
		units =0;
		#10;
		
		huns = 9;
		tens = 9;
		units =9;
		#10;
		huns = 0;
		tens = 6;
		units =4;
		#10;
		huns = 0;
		tens = 9;
		units =5;
		#10;
		/*Bout = 8'b0100_0000;
		#10;
		Bout = 8'b1111_0000;
		#10;
		Bout = 8'b0000_1111;
		#10;*/
	end
	
	initial 
		$monitor("huns=%d, tens=%d, units=%d, | output, Bout=%b ",  huns, tens, units, Bout);
		
	initial 
		#40 $finish;
      
endmodule

