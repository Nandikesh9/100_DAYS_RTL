module sipo_tb;
	parameter N=4;
	reg clk,rst,si;
	wire [N-1:0]po;

	sipo dut(clk,rst,si,po);

	initial begin
		forever #5 clk =~clk;
	end
	
	task initialize;
		{clk,rst,si} = 3'b0;
	endtask
	
	task reset;
		rst = 1'b1;
		@(negedge clk);
		rst = 1'b0;
		@(negedge clk);
	endtask

	task delay;
		@(negedge clk);
	endtask

	initial begin
		initialize;
		reset;
		si = 1'b1;
		delay;
		si = 1'b1;
		delay;
		si = 1'b1;
		delay;
		si = 1'b1;
		delay;
		reset;
		delay;
	end

	initial begin
		$monitor("clk = %b, rst = %b, si =%b, po=%b", clk,rst,si,po);
	end

	initial 
		#150 $finish;
endmodule
