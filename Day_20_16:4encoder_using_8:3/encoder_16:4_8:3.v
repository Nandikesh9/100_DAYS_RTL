`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:00 05/26/2025 
// Design Name: 
// Module Name:    en_16_4_8_3 
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
module en_16_4_8_3(
    input [15:0] i,
    output reg [3:0] y
    );
	 wire [2:0]y0,y1;	
	 
	 en_8_3 en0(.i(i[7:0]), .enb(i[7:0] != 8'b0), .y(y0));
	 en_8_3 en1(.i(i[15:8]), .enb(i[15:8] != 8'b0), .y(y1));
	 
	 always@(*) begin
		if(i[15:8] != 8'b0) begin
			y[3]=1'b1;
			y[2:0]=y1;
		end
		else begin
			y[3]=1'b0;
			y[2:0]=y0;
		end
			
	 end

endmodule

module en_8_3(
	input [7:0] i,
	input enb,
	output reg [2:0]y);
	
	always@(*) begin
		if (enb) 
			case(i) 
				8'b0000_0001: y = 3'b000;
				8'b0000_0010: y = 3'b001;
				8'b0000_0100: y = 3'b010;
				8'b0000_1000: y = 3'b011;
				8'b0001_0000: y = 3'b100;
				8'b0010_0000: y = 3'b101;
				8'b0100_0000: y = 3'b110;
				8'b1000_0000: y = 3'b111;
				default : y= 3'b000;
			endcase
		else
			y=3'b000;
	end
endmodule 
