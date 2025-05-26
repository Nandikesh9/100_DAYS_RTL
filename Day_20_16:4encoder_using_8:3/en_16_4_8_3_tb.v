`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:12:23 05/26/2025
// Design Name:   en_16_4_8_3
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/encoder_16_4_8_3/en_16_4_8_3_tb.v
// Project Name:  encoder_16_4_8_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: en_16_4_8_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module en_16_4_8_3_tb;

	// Inputs
	reg [15:0] i;

	// Outputs
	wire [3:0] y;
	integer j;

	// Instantiate the Unit Under Test (UUT)
	en_16_4_8_3 uut (
		.i(i), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i = 0;
	end
	
	initial begin
		for(j=0;j<16;j=j+1) begin
			{i}=16'b0;
			i[j]=1;
			#5;
		end
		/*{i}=8'b0000_0001;
		#5;
		{i}=8'b0000_0010;
		#5;
		{i}=8'b0000_0100;
		#5;
		{i}=8'b0000_1000;
		#5;
		{i}=8'b0001_0000;
		#5;
		{i}=8'b0010_0000;
		#5;
		{i}=8'b0100_0000;
		#5;
		{i}=8'b1000_0000;
		#5;
		{i}=8'b1000_0001;
		#5;*/
	end
	
	initial 
		$monitor("\ti=%b, | \toutput y=%b", i,y);
		
	initial 
		#80 $finish;
      
endmodule

