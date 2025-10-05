module t_ff(input clk, rst, t,
	output reg q,
	output qb);

	always@(posedge clk) begin
		if(rst) 
			q <= 1'b0;
		else if(t)
			q <= ~q;
		else 
			q <= q;
	end
	assign qb =~q;

//\/\/\/\/\/\/\/\/\/\_ASSERTIONS_/\/\/\/\/\/\/\/\/\/\

property reset;
	@(posedge clk) rst |=> q == 0;
endproperty

property t_in;
	@(posedge clk) disable iff(rst) t |=> q== (~($past(q)));
endproperty
property t_off;
	@(posedge clk) disable iff(rst) t==0 |=> q== ($past(q));
endproperty

A: assert property(reset)
	$info($time,"reset assertion passed");
	else
	$error($time,"reset assertion failed");
B:assert property(t_in)
	$info($time," t assertion passed");
	else
	$error($time,"t assertion failed");
C:assert property(t_off)
	$info($time," t_off assertion passed");
	else
	$error($time,"t_off assertion failed");
endmodule
