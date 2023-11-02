`include "mux_2x1.v"
module mux_2x1_tb (
);
    wire y;
    reg A,B,Sel;

    mux_2x1 Mx(y,A,B,Sel);
    initial begin
        $dumpfile("mux_2x1_tb.vcd");
        $dumpvars(0,mux_2x1_tb);
        $monitor("Time=%t\tA=%b\tB=%b\tSel=%b\tY=%b\n",$time,A,B,Sel,y);
        A=1'b1;B=1'b0;Sel=1'b0;
        #5
        A=1'b1;B=1'b0;Sel=1'b1;
        #5
        A=1'b0;B=1'b1;Sel=1'b0;
        #5
        A=1'b0;B=1'b1;Sel=1'b1;
    end
endmodule