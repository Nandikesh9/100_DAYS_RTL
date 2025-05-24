`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:39 05/24/2025 
// Design Name: 
// Module Name:    pri_decoder 
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
module pri_decoder(
    input [1:0] y,
    output reg [3:0] i
    );
	 always@(*) begin

		case(y)
			2'b11: i=8'b0000_1000;
			2'b10: i=8'b0000_0100;
			2'b01: i=8'b0000_0010;
			2'b00: i=8'b0000_0001;
			default:i=8'b0000_0000;
		endcase
	end


endmodule
