
module pipo_tb;
	reg clk,rst;
	reg [3:0]pi;
	wire [3:0] po;

	pipo s1(clk,rst,pi,po);

	task initialize; begin
		clk = 1'b0;
		rst = 1'b0;
		pi = 1'b0;
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
		pi = 4'b1010;
		delay;
		pi = 4'b0101;
		delay;
		pi = 4'b1111;
		delay;
		reset;
		delay;
		pi = 4'b1101;
		delay;
		pi = 4'b0111;
		delay;
		
	end

	initial begin
		$display("\\/\\/\\/\\/\\/\\/\\/__PIPO_OUTPUT__/\\/\\/\\/\\/\\/\\/\\/");
		$monitor("clk =%b, rst = %b, pi =%b, po = %b", clk,rst,pi,po);
	end

	initial begin
		#100 $finish;
	end
endmodule
