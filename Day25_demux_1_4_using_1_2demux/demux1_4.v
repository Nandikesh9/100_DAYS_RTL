module demux1_4(
    input y,
    input [1:0] sel,
    output [3:0] I
    );
	wire [1:0]w;
	
	demux_1_2 g0(.Y(y), .sel(sel[1]), .I(w));
	demux_1_2 g1(.Y(w[0]), .sel(sel[0]), .I(I[1:0]));//, .I[1](I[1]));
	demux_1_2 g2(.Y(w[1]), .sel(sel[0]), .I(I[3:2]));//, .I[1](I[3]));

endmodule

module demux_1_2(
    input sel,Y,
    output reg [1:0] I
    );
	 always@(*) begin
		I=2'b00;
		case(sel)
			1'b0: I[0] = Y;
			1'b1: I[1] = Y;
			default : I=2'b00;
		endcase
	 end

endmodule
