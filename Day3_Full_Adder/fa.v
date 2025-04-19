`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:54 03/30/2025 
// Design Name: 
// Module Name:    fa 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module full_adder(
    input a,b,cin,
    output s,cout
    );
	 wire f,g,h;
	 ha g1(.s(f),.c(g),.a(a),.b(b));
	 ha g2(.s(s),.c(h),.a(cin),.b(f));
	 or g3(cout,g,h);


endmodule
