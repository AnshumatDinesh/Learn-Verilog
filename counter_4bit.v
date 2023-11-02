module counter_4bit (
    output reg[3:0] Y=4'h0,
    input Clk,Rst
);
    always @(posedge Clk) begin
        if (!Rst) begin
            Y=4'h0;
        end
        else begin
            Y=Y+4'h1;
        end
    end
endmodule