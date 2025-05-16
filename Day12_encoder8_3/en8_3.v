
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:46 05/15/2025 
// Design Name: 
// Module Name:    en8_3 
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
module en_8_3_4_2(
    input [7:0] i,
    output reg [2:0] y
    );
	 wire [1:0]y0,y1;

	 en4_2 en0(.a(i[3:0]), .enb(i[3:0]!=4'b0000), .y(y0)); //i[3:0]!=4'b0000 enables when any lower bit is high
	 en4_2 en1(.a(i[7:4]), .enb(i[7:4]!=4'b0000), .y(y1)); //i[7:4]!=4'b0000 enables when any lower  bit is high
	 always@(*) begin
		if(i[7:4]!=4'b0000) begin
			y[2]=1'b1;
			y[1:0]=y1;
		end
		else	begin
			y[2]=1'b0;
			y[1:0]=y0;
		end
	end
endmodule
// **code for 4:2 encoder**
module en4_2(
    input [3:0] a,
	 input enb,
    output reg [1:0] y
    );
	 always @(*) begin
		if(enb)
			case(a)
				 4'b0001: y=2'b00;
				 4'b0010: y=2'b01;
				 4'b0100: y=2'b10;
				 4'b1000: y=2'b11;
				 default :y=2'b00;
			endcase
		else
			y=2'b00;
	  end
endmodule
