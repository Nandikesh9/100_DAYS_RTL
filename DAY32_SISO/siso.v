module siso(input clk,rst,si,
                output reg [3:0] so);
        reg temp=0;
        always@(posedge clk) begin
                if(rst)
                        so <= 1'b0;
                else
                        so[3] <= si;
                        so = so>>1;
        end
endmodule 


