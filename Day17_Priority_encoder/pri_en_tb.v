`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:07:44 05/22/2025
// Design Name:   pri_en
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Priority_en/pri_en_tb.v
// Project Name:  Priority_en
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pri_en
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pri_en_tb;

	// Inputs
	reg [7:0] i;

	// Outputs
	wire [2:0] out;
	wire valid;
	//integer j;

	// Instantiate the Unit Under Test (UUT)
	pri_en uut (
		.i(i), 
		.out(out),
		.valid(valid));

	initial begin
		// Initialize Inputs
		i = 0;
	end
	
	initial begin
	/*
		for(j=0;j<256;j=j+1) begin
			{i}=j;
			#5;
		end*/
		{i} = 00000000;
		#10;
		{i} = 1111_1111;
		#10;
		{i} = 0111_1111;
		#10;
		{i} = 0011_111;
		#10;
		{i} = 0001_1111;
		#10;
		{i} = 0000_1111;
		#10;
		{i} = 0000_0111;
		#10;
		{i} = 0000_0011;
		#10;
		{i} = 0000_0001;
		#10;

		//$finish;
	end
	
	initial begin
	
		//$display("\tInput\t\tOutput\tValid");
      //$monitor("\t%b\t%b\t%b", i, out, valid);
		$monitor("i=%b, | output out=%b, valid = %b", i,out,valid);
	end
	
	initial 
		#100 $finish;
      
endmodule

