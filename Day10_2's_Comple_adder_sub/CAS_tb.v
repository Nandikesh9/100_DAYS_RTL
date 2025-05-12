`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:41:28 04/04/2025
// Design Name:   CAS
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/Day_4_2s_compl_adder_sub/CAS_tb.v
// Project Name:  Day_4_2s_compl_adder_sub
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CAS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CAS_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg ctrl;

	// Outputs
	wire [3:0] s;
	wire Cout;
	integer i,j,k;

	// Instantiate the Unit Under Test (UUT)
	CAS uut (
		.a(a), 
		.b(b), 
		.ctrl(ctrl), 
		.s(s), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ctrl = 0;
	end
	
	initial begin
		for (i=0;i<2;i=i+1) begin
			{ctrl}=i;
			for (j=0;j<16;j=j+1) begin
				{b}=j;
				for (k=0;k<16;k=k+1) begin
					{a}=k;
					#1;
				end
			end
		end
	end
	
	initial 
		$monitor ("a=%b, b=%b, ctrl=%b, outputs s=%b, Cout=%b", a,b,ctrl,s,Cout);
		
	initial
		#520 $finish;
      
endmodule

