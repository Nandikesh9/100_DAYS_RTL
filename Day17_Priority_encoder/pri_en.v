`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:02 05/22/2025 
// Design Name: 
// Module Name:    pri_en 
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
module pri_en(
    input [7:0] i,
    output reg [2:0] out,
	 output reg valid
    );
	 
	 always@(*) begin
		valid =1'b1;
		casex(i)
			8'b1xxx_xxxx: out = 3'b111;
			8'b01xx_xxxx: out = 3'b110;
			8'b001x_xxxx: out = 3'b101;
			8'b0001_xxxx: out = 3'b100;
			8'b0000_1xxx: out = 3'b011;
			8'b0000_01xx: out = 3'b010;
			8'b0000_001x: out = 3'b001;
			8'b0000_0001: out = 3'b000;
			default: begin
				out=3'bxxx;
				valid = 1'b0;
			end
		endcase
	 end
endmodule
