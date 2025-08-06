//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:31 08/05/2025 
// Design Name: 
// Module Name:    sr_ff 
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
module sr_ff(
    input s,r,rst,clk,
    output reg q,
	 output qb
    );
	
	always@(posedge clk) begin
		//q<=1'b0;
		if(rst)
			q <= 1'b0;
		else
			case ({s,r})
				2'b00 : q <= q;
				2'b01 : q <= 1'b0;
				2'b10 : q <= 1'b1;
				2'b11 : q <= 1'bx;
				default : q <= qb;
			endcase
	end
	
	assign qb = ~q;

///--------------------Assertions----------------------------/////

property flip_flop_reset;
	@(posedge clk) rst |=> !q ;
endproperty 

property nc;
	@(posedge clk) disable iff(rst) 
			!s && !r |=> q == $past(q);
endproperty 

property ppt1;
	@(posedge clk) disable iff(rst) !s && r |=> !q;
endproperty

property ppt2;
	@(posedge clk) disable iff(rst) s && !r |=> q;
endproperty

property ppt3;
	@(posedge clk) disable iff(rst) s && r |=> $isunknown(q);
endproperty

assert property (flip_flop_reset)
	$display("\n flip_flop_reset assertion passed");
 else
	$error("\n flip_flop_reset assertion failed");
assert property (nc)

	$display("\n no_change assertion passed");
 else
	$display("\n no_change assertion failed");

assert property (ppt1)
	$display("\n s=0, r=1, reset assertion passed");
 else
	$error("\n s=0, r=1, reset assertion failed");
assert property (ppt2)
	$display("\n s=1, r=0, set  assertion passed");
 else
	$error("\n s=1, r=0, set assertion failed");
assert property (ppt3)
	$display("\n s=1, r=1, invalid assertion passed");
 else
	$error("\n s=1, r=1, invalid assertion failed");

/*reseet: cover property (flip_flop_reset)
nc: cover property (nc)
seet: cover property (ppt1)
reeset: cover property (ppt2)
invld: cover property (ppt3)*/
endmodule
