`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:06 04/14/2025 
// Design Name: 
// Module Name:    gates 
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
module gates(
    input [6:0] a,b,
    output and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out
    );
	 /*
		 assign and_out = a[0] & b[0]; 	//			|
		 assign or_out = a[1] | b[1];	//			|
		 assign not_out = ~a[2];	//			|
		 assign nand_out = ~(a[3] & b[3]);//			|-----> Data Flow model
		 assign nor_out = ~(a[4] | b[4]);//			|
		 assign xor_out = (~a[5] & b[5]) | (a[5] & ~b[5]);//	|
		 assign xnor_out = (~a[6] & ~b[6]) | (a[6] & b[6]); //	|
		 */
		 and g0 (and_out,a[0],b[0]);
		 or g1 (or_out,a[1],b[1]);
		 not g2 (not_out,a[2]);
		 nand g3 (nand_out,a[3],b[3]);
		 nor g4 (nor_out,a[4],b[4]);
		 xor g5 (xor_out,a[5],b[5]);
		 xnor g6 (xnor_out,a[6],b[6]);
	


endmodule
