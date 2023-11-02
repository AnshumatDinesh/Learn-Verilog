`include "frequency_divider.v"
`timescale 1ns/1ns
module frequency_divider_tb ();
    wire Clk_op;
    reg Clk;
    reg[3:0]DivBy;

    frequency_divider #(.BIT_IN_DIVIDE(4)) fqd(.Clk_op(Clk_op),.Clk(Clk),.DivBy(DivBy));
    
    integer i=0;

    initial begin
        $dumpfile("frequency_divider_tb.vcd");
        $dumpvars(0,frequency_divider_tb);
        $monitor("Time=%t\tClk_op=%b\tClk=%b\tDivBy=%d\n",$time,Clk_op,Clk,DivBy);
        DivBy=4'd4;
        for (i = 0;i<32 ;i=i+1 ) begin
            #10
            Clk=1'b0;
            #10
            Clk=1'b1;
        end
    end
endmodule