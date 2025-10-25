module sipo#(parameter N=4)(input clk,rst,si,
	output reg [N-1:0]po);
	reg temp;
	always@(posedge clk) begin
		if(rst) 
			po <= 4'b0;
		else begin 
			po[0] <= si;
			po <= {po[2:0],si};
	end
	end
endmodule
