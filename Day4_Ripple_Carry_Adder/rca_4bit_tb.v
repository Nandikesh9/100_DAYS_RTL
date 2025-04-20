`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:39 03/31/2025
// Design Name:   rca_4bit
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/ripple_carry_4bit_adder/rca_4bit_tb.v
// Project Name:  ripple_carry_4bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rca_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rca_4bit_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	rca_4bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
	end
	
	initial begin
		for (i=0;i<2;i=i+1) begin
			cin=i;
			for (j=0;j<256;j=j+1) begin
				{a,b}=j;
				#1;
			end
		end
	end
	
	initial 
		$monitor("inputs a=%b, b=%b, cin=%b, outputs s=%b, cout=%b", a,b,cin,s,cout);
		
	initial
		#520 $finish;
      
endmodule

