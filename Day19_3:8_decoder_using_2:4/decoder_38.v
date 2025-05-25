`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:19 05/25/2025 
// Design Name: 
// Module Name:    decoder_38 
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
module decoder_38(
    input [2:0] y,
    output [7:0] i
    );
	 
	 decoder de0(.y(y[1:0]), .enb(~y[2]), .i(i[3:0]));
	 decoder de1(.y(y[1:0]), .enb(y[2]), .i(i[7:4]));
endmodule

module decoder(
    input [1:0] y,
	 input enb,
    output reg [3:0] i
    );
	 always@(*) begin
		if (enb)
			case(y)
				2'b11: i=8'b0000_1000;
				2'b10: i=8'b0000_0100;
				2'b01: i=8'b0000_0010;
				2'b00: i=8'b0000_0001;
				default:i=8'b0000_0000;
			endcase
		else 
			i=8'b0000_0000;
	end


endmodule