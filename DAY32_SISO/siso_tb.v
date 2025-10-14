module siso_tb;
	reg clk,rst,si;
	wire [3:0] so;

	siso s1(clk,rst,si,so);

	task initialize; begin
		clk = 1'b0;
		rst = 1'b0;
		si = 1'b0;
	end
	endtask
	always begin	
		#5 clk =~clk;
	end


	task reset; begin
		rst = 1'b1; @(negedge clk);
		rst = 1'b0; @(negedge clk);
	end
	endtask

	task delay;
		@(negedge clk);
	endtask

	initial begin
		initialize;
		reset;
		si = 1'b0;
		delay;
		si = 1'b1;
		delay;
		si = 1'b1;
		delay;
		si = 1'b0;
		delay;
		si = 1'b1;
		delay;
		si = 1'b0;
		delay;
		si = 1'b1;
		delay;
		si = 1'b0;
	end

	initial begin
		$display("\\/\\/\\/\\/\\/\\/\\/__SIOS_OUTPUT__/\\/\\/\\/\\/\\/\\/\\/");
		$monitor("clk =%b, rst = %b, si =%b, so = %b", clk,rst,si,so);
	end

	initial #100 $finish;
endmodule
