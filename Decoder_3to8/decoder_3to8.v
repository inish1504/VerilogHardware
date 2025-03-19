`include "/home/inish/Data/VerilogHardware/Decoder_2to4/decoder_2to4.v"

module decoder_3to8 (
    input wire [2:0] in,
    input wire enable,
    output wire [7:0] out
);
    wire [3:0] out_low, out_high;

    decoder_2to4 dec1 (
        .in(in[1:0]), 
        .enable(~in[2] & enable), 
        .out(out_low)
    );

    decoder_2to4 dec2 (
        .in(in[1:0]), 
        .enable(in[2] & enable), 
        .out(out_high)
    );

    assign out = {out_high, out_low};
    
endmodule