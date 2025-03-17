module decoder_2to4 (
    input wire [1:0]in,
    input wire enable,
    output reg [3:0]out
);
    always @(*) begin
        if (enable) begin
            case (in)
            2'b00: out = 4'b1110;
            2'b01: out = 4'b1101;
            2'b10: out = 4'b1011;
            2'b11: out = 4'b0111;
            default: out = 4'b1111;
            endcase
        end
        else begin
            out = 4'b1111;
        end
    end    
endmodule