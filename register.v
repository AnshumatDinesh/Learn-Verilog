module register #(//A gated register with tristate buffer at output and input
    parameter n =8 
) (
    output reg[n-1:0] Q,
    input wire[n-1:0] D,
    input wire Clk,RD,WR,Rst
);
    reg [n-1:0] Data;
    always @(negedge Clk) begin
        if (!RD) begin
            Q=Data;
        end
        else begin
            Q='hz;
        end
        if (!WR) begin
            Data=D;
        end
        if (!Rst) begin
            Data='d0;
        end
    end
endmodule