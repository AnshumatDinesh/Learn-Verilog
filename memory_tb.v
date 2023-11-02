`include "memory.v"

module memory_tb ();
    wire [7:0] Dout;
    reg [7:0] Din;
    reg Clk,RD,WR,CS;
    reg [6:0] Add;

    memory #(.BIT_DEPTH(8),.ADDRESS_LINES(7)) mem(.Dout(Dout),.Din(Din),.Clk(Clk),.RD(RD),.WR(WR),.CS(CS),.Add(Add));

    initial begin
        $dumpfile("memory_tb.vcd");
        $dumpvars(0,memory_tb);
        $monitor("Time=%t\tDout=%h\tDin=%h\tClk=%b\tRD=%b\tWR=%b\tCS=%b\tAdd=%b\n",$time,Dout,Din,Clk,RD,WR,CS,Add);
        Din=8'h00;
        RD=1'b1;
        WR=1'b1;
        CS=1'b1;
        Add=7'd0;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Din=8'h35;
        RD=1'b1;
        WR=1'b0;
        CS=1'b0;
        Add=7'd0;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Din=8'h53;
        RD=1'b1;
        WR=1'b0;
        CS=1'b0;
        Add=7'd1;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Din=8'h35;
        RD=1'b0;
        WR=1'b1;
        CS=1'b0;
        Add=7'd0;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Din=8'h53;
        RD=1'b0;
        WR=1'b0;
        CS=1'b0;
        Add=7'd1;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Din=8'h53;
        RD=1'b0;
        WR=1'b0;
        CS=1'b1;
        Add=7'd1;
        Clk=1'b1;
        #10
        Clk=1'b0;

    end
endmodule