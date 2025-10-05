module t_ff_tb;
        reg clk, rst, t;
        wire q,qb;
        int d;
        t_ff ff(clk,rst,t,q,qb);

        initial begin
                clk =1'b0;
                forever #5 clk = ~clk;
        end

        task initialize;
                {rst, t} = 2'b00;
        endtask

        task reset;
                @(negedge clk); rst =1'b1;
                @(negedge clk); rst =1'b0;
        endtask
        task data(input d);
                t = d;
                @(negedge clk);
        endtask

        initial begin
                initialize;
                reset;
                data(1'b0);
                data(1'b1);
                data(1'b1);
                data(1'b0);
                data(1'b1);
                data(1'b0);
        end
        initial begin
                $monitor("clk = %b, rst = %b, t = %b , q = %b, qb = %b",clk, rst, t, q, qb);
                #100 $finish;
        end
endmodule
