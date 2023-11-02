module memory #(
    parameter BIT_DEPTH=8,
    parameter ADDRESS_LINES=7
) (
    output reg [BIT_DEPTH-1:0] Dout,
    input wire [BIT_DEPTH-1:0] Din,
    input wire Clk,RD,WR,CS,
    input wire [ADDRESS_LINES-1:0] Add
);
parameter LENGTH= 2**ADDRESS_LINES;
    reg [BIT_DEPTH-1:0] mem[LENGTH-1:0];
always @(negedge Clk ) begin
    if(CS) begin
        Dout='hzz;
    end
    else begin
        if(!WR) begin
            mem[Add]=Din;
        end
        if(!RD) begin
            Dout=mem[Add];
        end
        else begin
            Dout='hzz;
        end
    end
    
end
    
endmodule