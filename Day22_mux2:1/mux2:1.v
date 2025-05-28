`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:55 05/28/2025 
// Design Name: 
// Module Name:    mux2:1
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
module mux2_1(
        input [1:0]i,
        input sel,
        output reg y);

        always@(*) begin
                case(sel)
                   1'b0: y=i[0];
                   1'b1: y=i[1];
                endcase
        end
endmodule
