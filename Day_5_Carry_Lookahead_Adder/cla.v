`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:32 04/02/2025 
// Design Name: 
// Module Name:    cla 
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
module cla(
    input [3:0] a,b,
    input cin,
    output [3:0] s,
    output cout
    );
	 
	 wire [3:0]g,p;
	 wire [3:1]c;
	 
	 assign g[0]=a[0] & b[0];
	 assign g[1]=a[1] & b[1];
	 assign g[2]=a[2] & b[2];
	 assign g[3]=a[3] & b[3];
	 
	 assign p[0]=a[0] ^ b[0];
	 assign p[1]=a[1] ^ b[1];
	 assign p[2]=a[2] ^ b[2];
	 assign p[3]=a[3] ^ b[3];
	 
	 assign c[1] = g[0] | (p[0] & cin);
	 assign c[2] = g[1] | (p[1] & c[1]);
	 assign c[3] = g[2] | (p[2] & c[2]);
	 assign cout = g[3] | (p[3] & c[3]);
	 
	 assign s[0] = p[0] ^ cin;
	 assign s[1] = p[1] ^ c[1];
	 assign s[2] = p[2] ^ c[2];
	 assign s[3] = p[3] ^ c[3];
endmodule
