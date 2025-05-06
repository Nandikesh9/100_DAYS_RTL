`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:30 03/31/2025 
// Design Name: 
// Module Name:    hs 
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
module hs(
    input a,b,
    output diff,brw
    );
	 assign diff = (a&(~b)) | (~a & b);
	 assign brw = (~a) & b;


endmodule
