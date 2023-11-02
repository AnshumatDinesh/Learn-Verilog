module full_adder (
    input wire  A,B,Cin,
    output wire Sum,Cout
);
    assign Sum=A^B^Cin;
    assign Cout=(A&Cin)|(B&Cin)|(A&B);
endmodule