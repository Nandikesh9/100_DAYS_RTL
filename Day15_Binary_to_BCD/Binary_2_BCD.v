`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:00 05/19/2025 
// Design Name: 
// Module Name:    i_reg 
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
module BCD(
    input [7:0] Bin,
    output reg [3:0] huns,
    output reg [3:0] tens,
    output reg [3:0] ones
    );
	 integer i;
	 reg [19:0] i_reg;
	 
	 always@(*) begin
		i_reg = 20'b0;
		i_reg[7:0] = Bin;
		
		for(i=0;i<8;i=i+1) begin
			if(i_reg[11:8] >= 5) 
				i_reg[11:8]=i_reg[11:8]+3; //hundreds
				
			if(i_reg[15:12] >= 5)
				i_reg[15:12]=i_reg[15:12]+3; // tens
				
			if(i_reg[19:16] >= 5)
				i_reg[19:16]=i_reg[19:16]+3; //ones
				
			i_reg = i_reg << 1; // left shift
		end
		huns = i_reg[19:16];
		tens = i_reg[15:12];
		ones = i_reg[11:8];
	 end

endmodule
