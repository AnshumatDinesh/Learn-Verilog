`include "d_flipflop.v"
module d_flipflop_tb (
);
    reg D,Clk,Rst;
    wire Q;
    d_flipflop Dff(.D(D),.Clk(Clk),.Rst(Rst),.Q(Q));
    always @(Clk) begin
        #15 Clk=!Clk;
    end
    initial begin
        $dumpfile("d_flipflop_tb.vcd");
        $dumpvars(0,d_flipflop_tb);
        $monitor("Time=%t\tD=%b\tClk=%b\tRst=%b\tQ=%b\n",$time,D,Clk,Rst,Q);
        Rst=1'b1;
        D=1'b1;
        #5
        Clk=1'b1;
        #10
        Clk=1'b0;
        D=1'b0;
        #5
        Clk=1'b1;
        #10
        Clk=1'b0;
        D=1'b1;
        #5
        Clk=1'b1;
        #10
        Clk=1'b0;
        Rst=1'b0;
        #5
        Clk=1'b1;
        #10
        Clk=1'b0;

    end
endmodule