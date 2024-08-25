module mux4to1 (
    input wire [1:0] sel,
    input wire in0, in1, in2, in3,
    output wire out
);
    wire out0, out1;

    mux2to1 mux0 (
        .sel(sel[0]),
        .in0(in0),
        .in1(in1),
        .out(out0)
    );
    mux2to1 mux1 (
        .sel(sel[0]),
        .in0(in2),
        .in1(in3),
        .out(out1)
    );
    mux2to1 mux2 (
        .sel(sel[1]),
        .in0(out0),
        .in1(out1),
        .out(out)
    );
endmodule
