module d_ff(input clk,rst,d,
	output reg q,
	output qb);

	always@(posedge clk) begin
		if(rst)
			q <= 1'b0;

		else
			case(d) 
				1'b0 : q <= 1'b0;
				1'b1 : q <= d;
				default : q <= q;
			endcase
	end
	assign qb = ~q;
	
//-------------------IN_LINE_ASSERTIONS------------------------//
property reset;
	@(posedge clk) rst |=> !q;
endproperty

property no_change;
	@(posedge clk) disable iff(rst) !d |=> !q;
endproperty

property data;
	@(posedge clk) disable iff(rst) d |=> q;
endproperty

assert property (reset)
	$display("\nAssertion for reset condition is passed\n");
   else 
	$error("\nAssertion for reset condition is failed\n");

assert property (no_change)
	$display("\nAssertion for no_change condition is passed\n");
   else 
	$error("\nAssertion for no_change condition is failed\n");

assert property (data)
	$display("\nAssertion for data condition is passed\n");
   else 
	$error("\nAssertion for data condition is failed\n");
  
  endmodule
