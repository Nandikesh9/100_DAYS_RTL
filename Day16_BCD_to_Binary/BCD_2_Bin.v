`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:07 05/20/2025 
// Design Name: 
// Module Name:    BCD_2_Bin 
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
module BCD_2_Bin(
    input [3:0] huns,tens,units,
    output reg [9:0] Bout // it may go upto 999 
    );
	 
	 always@(*) begin
		 Bout = (huns <<6)	 + (huns << 5) + (huns << 2) + (tens << 3) + (tens << 1) + units;
	 end

endmodule
