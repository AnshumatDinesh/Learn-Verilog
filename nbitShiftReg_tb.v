`include "nbitShiftReg.v"

module nbitShiftReg_tb ();
    wire [7:0] Dout;
    wire Sout;
    reg Sin,Clk,LD,RD;
    reg [7:0]Din;

    nbitShiftReg #(.N(8)) Sreg(.Dout(Dout),.Din(Din),.Sout(Sout),.Sin(Sin),.Clk(Clk),.LD(LD));

    initial begin
        $dumpfile("nbitShiftReg_tb.vcd");
        $dumpvars(0,nbitShiftReg_tb);
        $monitor("Time=%t\tDout=%b\tDin=%b\tSout=%b\tSin=%b\tClk=%b\tLD=%b\t\n",$time,Dout,Din,Sout,Sin,Clk,LD);
        Din=8'h55;
        Sin=1'b0;
        LD=1'b0;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        LD=1'b1;
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Clk=1'b1;
        #10
        Clk=1'b0;
        #10
        Clk=1'b1;
        #10
        Clk=1'b0;
    end
endmodule