`include "mux_2x1_dff.v"
module nbitShiftReg #(
    parameter N=8
) (
    output wire [N-1:0] Dout,
    output wire Sout,
    input wire Sin,Clk,LD,
    input wire[N-1:0]Din
);
assign Sout=Dout[0];
genvar i;
mux_2x1_dff u0(.D({Sin,Din[N-1]}),.Sel(LD),.Q(Dout[N-1]),.Clk(Clk));
generate
    for (i =0 ;i<N-2 ;i=i+1) begin
        mux_2x1_dff u1(.D({Dout[N-1-i],Din[N-2-i]}),.Sel(LD),.Q(Dout[N-2-i]),.Clk(Clk));
    end
endgenerate
mux_2x1_dff u2(.D({Dout[1],Din[0]}),.Sel(LD),.Q(Dout[0]),.Clk(Clk));
endmodule