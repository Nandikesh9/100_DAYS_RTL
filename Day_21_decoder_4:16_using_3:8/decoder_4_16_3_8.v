`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:38 05/26/2025 
// Design Name: 
// Module Name:    decoder_4_16_3_8 
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
module decoder_4_16_3_8(
    input [3:0] y,
    output [15:0] i
    );
	 decoder_3_8 de0(.y(y[2:0]), .enb(~y[3]), .i(i[7:0]));
	 decoder_3_8 de1(.y(y[2:0]), .enb(y[3]), .i(i[15:8]));

endmodule

module decoder_3_8(
	input [2:0]y,
	input enb,
	output reg [7:0]i);
	
	always@(*) begin
		if(enb) 
			case(y)
				3'b000: i=8'b0000_0001;
				3'b001: i=8'b0000_0010;
				3'b010: i=8'b0000_0100;
				3'b011: i=8'b0000_1000;
				3'b100: i=8'b0001_0000;
				3'b101: i=8'b0010_0000;
				3'b110: i=8'b0100_0000;
				3'b111: i=8'b1000_0000;
				default: i =8'b0;
			endcase
		else 
			i=8'b0;
	end
endmodule
