module mux_2x1_dff (
    output reg Q,
    input wire[1:0] D,
    input Clk,Sel
);
    always @(negedge Clk ) begin
        case (Sel)
            1'b0:Q=D[0];
            1'b1:Q=D[1]; 
            default: Q=1'bz;
        endcase
    end
endmodule