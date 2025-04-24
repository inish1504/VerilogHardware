module multiplier_4bit(
    input wire [3:0]a,
    input wire [3:0]b,
    output wire [7:0]product
);

    wire [3:0]p0 = a & {4{b[0]}};
    wire [3:0]p1 = a & {4{b[1]}};
    wire [3:0]p2 = a & {4{b[2]}};
    wire [3:0]p3 = a & {4{b[3]}};

    wire [7:0]fp0 = p0;
    wire [7:0]fp1 = p1 << 1;
    wire [7:0]fp2 = p2 << 2;
    wire [7:0]fp3 = p3 << 3;
    assign product = fp0 + fp1 + fp2 + fp3;
endmodule