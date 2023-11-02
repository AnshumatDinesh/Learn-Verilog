module frequency_divider #(
    parameter BIT_IN_DIVIDE=4//max divide by 16
) (
    output reg Clk_op=1'b0,
    input wire Clk,
    input wire[BIT_IN_DIVIDE-1:0]DivBy
);
    reg[BIT_IN_DIVIDE-1:0]count='d0;
    always @(negedge Clk ) begin
        if(count+1==DivBy)begin
            Clk_op=!Clk_op;
            count='d0;
        end
        else begin
            count=count+1;
        end
    end
    
endmodule