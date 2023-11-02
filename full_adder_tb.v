`include "full_adder.v"
module full_adder_tb (
);
    reg A,B,Cin;
    wire Sum,Cout;
    full_adder FA1(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
    initial begin
        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0,full_adder_tb);
        $monitor("Time=%t\tA=%b\tB=%b\tCin=%b\tSum=%b\tCout=%b\n",$time,A,B,Cin,Sum,Cout);
        A=1'b0;B=1'b0;Cin=1'b0;
        #15
        A=1'b0;B=1'b0;Cin=1'b1;
        #15
        A=1'b0;B=1'b1;Cin=1'b0;
        #15
        A=1'b0;B=1'b1;Cin=1'b1;
        #15
        A=1'b1;B=1'b0;Cin=1'b0;
        #15
        A=1'b1;B=1'b0;Cin=1'b1;
        #15
        A=1'b1;B=1'b1;Cin=1'b0;
        #15
        A=1'b1;B=1'b1;Cin=1'b1;
    end
endmodule