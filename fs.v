`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:26 03/31/2025 
// Design Name: 
// Module Name:    fs 
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
module fs(
    input a,b,c,
    output diff, brw
    );
	wire g,h,i;
	
	hs g1(.diff(g), .brw(h),.a(a), .b(b));
	hs g2(.diff(diff), .brw(i), .a(g), .b(c));
	or g3(brw,h,i);
	

endmodule
