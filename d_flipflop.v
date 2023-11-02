module d_flipflop (
    output reg Q,
    input wire D,Clk,Rst
);
always @(posedge Clk) begin
    if (!Rst) begin
        Q=1'b0;
    end
    else
    begin
        Q=D;
    end
end
endmodule