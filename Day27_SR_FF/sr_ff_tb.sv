//`include "sr_ff.sv"
//`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:37 08/05/2025
// Design Name:   sr_ff
// Module Name:   F:/Xilinix_lab/Practise/RTL_100/SR_FF/sr_ff_tb.v
// Project Name:  SR_FF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sr_ff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sr_ff_tb;

	// Inputs
	reg s;
	reg r;
	reg rst;
	reg clk;

	// Outputs
	wire q;
	wire qb;
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	sr_ff DUT (
		.s(s), 
		.r(r), 
		.rst(rst), 
		.clk(clk), 
		.q(q), 
		.qb(qb)
	);
        initial
          begin
            clk=1'b0;
            forever #5 clk=~clk;
          end

        task initialize;
   	   begin
		{s,r}=2'b0;
   	   end
	endtask

	task inputs;
	begin
          {s,r}=2'b00;
         // #10;
          @(negedge clk)
	  {s,r}=2'b01;
        //  #10;
	  @(negedge clk)
	  {s,r}=2'b10;
          @(negedge clk)	
	//  #10;
 	  {s,r}=2'b11;
	 end
	endtask
  
        initial
          begin
	 @(negedge clk)
            rst=1'b1;
	 @(negedge clk)
            rst=1'b0;
            @(negedge clk)
	      initialize;
	   @(negedge clk)
              inputs;
          end

        initial
          begin
		`ifdef VCS 
                 $fsdbDumpSVA(0,sr_ff_tb);
                 $fsdbDumpvars(0, sr_ff_tb);
                `endif
      		$monitor("rst=%b s=%b r=%b | q=%b qb=%b", rst, s, r, q, qb);
		#100$finish;
       	  end    
endmodule

