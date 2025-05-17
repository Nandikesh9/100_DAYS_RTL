`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:52 05/17/2025 
// Design Name: 
// Module Name:    B_T_G 
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
module B_T_G #(parameter N=4)(
    input [N-1:0] b,
    output [N-1:0] g
    );
	 genvar i;
	 assign g[N-1] = b[N-1];
	 generate
		for(i=0;i<N-1;i=i+1) begin:gray_code
			assign g[i]=b[i]^b[i+1];
		end
	endgenerate


endmodule
