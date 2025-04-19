`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:55:13 03/30/2025
// Design Name:   fa
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/fall_adder/fa_tb.v
// Project Name:  fall_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;
	integer i;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
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
		for (i=0;i<8;i=i+1) begin
			{a,b,cin}=i;
			#10;
		end
	end
	
	initial
		$monitor("a=%b, b=%b, cin=%b OUTPUT'S s=%b, cout=%b", a,b,cin,s,cout);
	
	initial begin
		#100 $finish;
	end
      
endmodule

