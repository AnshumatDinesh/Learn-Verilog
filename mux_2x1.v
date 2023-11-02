module mux_2x1(
    output y,
    input A,B,Sel
);
    assign y=Sel?B:A;

endmodule