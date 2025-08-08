`timescale 1ns / 1ps

module d_ff_tb();
	reg clk,rst,d;
	wire q,qb;

	d_ff DUT(.clk(clk),
		 .rst(rst),
		 .d(d),
		 .q(q),
		 .qb(qb));

	task initialization();
		begin
			//clk = 1'b0;
			rst =1'b0;
			d=1'b0;
		end
	endtask

	initial begin
		clk=1'b0;
		forever	#5 clk = ~clk;
	end

	task reset;
		@(negedge clk) rst=1'b1;
		@(negedge clk) rst = 1'b0;
	endtask

	task data(input i);
		d=i;
	endtask

	task delay();
		#10;
	endtask

	initial begin
		reset;
		@(negedge clk);
		initialization;
		d=1'b0;
		@(negedge clk);
		d=1'b0;
		@(negedge clk);
		d=1'b1;
		@(negedge clk);
		d=1'b1;
		@(negedge clk);
		d=1'b0;
		@(negedge clk);
	end

	initial begin

		`ifdef VCS
		 $fsdbDumpSVA(0,d_ff_tb);
                 $fsdbDumpvars(0, d_ff_tb);
		`endif
		$monitor("time = %d, | rst =%b, d=%b, | q=%b, qb=%b", $time,rst,d,q,qb);
		#100 $finish;
	end
	
endmodule
