`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:09:21 04/02/2025
// Design Name:   cla
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/CLA/cla_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	cla uut (
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
		#1;
	end
	
	initial begin
		for (i=0;i<2;i=i+1) begin
			{cin}=i;
			for (j=0;j<256;j=j+1) begin
				{a,b}=j;
				#1;
			end
		end
	end
	
	initial 
		$monitor ("inputs a=%b, b=%b, cin=%b, outputs s=%b, cout=%b", a,b,cin,s,cout);
		
	initial 
		#550 $finish;
      
endmodule

