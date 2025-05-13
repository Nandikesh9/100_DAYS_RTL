`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:55 04/14/2025 
// Design Name: 
// Module Name:    en4_2 
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
module en4_2(
    input [3:0] a,
    output reg [1:0] y
    );
	 always @(*) begin
		if (a ==4'b0001)
			y = 2'b00;
		else if (a ==4'b0010) 
			y=2'b01;
		else if (a ==4'b0100)
			y=2'b10;
		else if (a ==4'b1000)
			y=2'b11;
		else 
			y=2'bxx;
	 /*
			case(a)
				 4'b0001: y=2'b00;
				 4'b0010: y=2'b01;
				 4'b0100: y=2'b10;
				 4'b1000: y=2'b11;
				 default :y=2'bxx;
			endcase*/
	  end


endmodule
