`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:52 05/18/2025 
// Design Name: 
// Module Name:    G_T_B 
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
module G_T_B #(parameter N=4)(
  input [N-1:0] g,
  output [N-1:0] b
    );
	 genvar i;
   assign b[N-1] = g[N-1];
	 generate
     for(i=N-2;i>=0;i=i-1) begin:G_T_B
       assign b[i]=g[i]^b[i+1];
		end
	endgenerate


endmodule
