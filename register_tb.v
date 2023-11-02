`include "register.v"

module register_tb ();
    wire[7:0] Q;
    reg[7:0] D;
    reg Clk,RD,WR,Rst;

    register #(.n(8)) rg (.Q(Q),.D(D),.Clk(Clk),.RD(RD),.WR(WR),.Rst(Rst));

    initial begin
        $dumpfile("register_tb.vcd");
        $dumpvars(0,register_tb);
        $monitor("Time=%t\tD=%h\tClk=%b\tRD=%b\tWR=%b\tRst=%b\tQ=%h\n",$time,D,Clk,RD,WR,Rst,Q);
        RD=1'b1;
        WR=1'b1;
        Rst=1'b1;
        D=8'h00;
        Clk=1'b1;
        #10;
        Clk=1'b0;
        #10
        RD=1'b1;
        WR=1'b0;
        Rst=1'b1;
        D=8'h35;
        Clk=1'b1;
        #10;
        Clk=1'b0;
        #10
        RD=1'b0;
        WR=1'b1;
        Rst=1'b1;
        D=8'h35;
        Clk=1'b1;
        #10;
        Clk=1'b0;
        #10
        RD=1'b1;
        WR=1'b1;
        Rst=1'b0;
        D=8'h35;
        Clk=1'b1;
        #10;
        Clk=1'b0;
        #10
        RD=1'b0;
        WR=1'b1;
        Rst=1'b1;
        D=8'h35;
        Clk=1'b1;
        #10;
        Clk=1'b0;
    end
endmodule