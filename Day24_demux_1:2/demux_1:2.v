`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:30 06/23/2025 
// Design Name: 
// Module Name:    demux_1_2 
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
module demux_1_2(
    input sel,Y,
    output reg [1:0] I
    );
	 always@(*) begin
		I=2'b00;
		case(sel)
			1'b0: I[0] = Y;
			1'b1: I[1] = Y;
			default : I=2'b00;
		endcase
	 end

endmodule
