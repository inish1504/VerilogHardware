module mux_8to1_tb;
    reg [2:0] sel;
    reg [7:0] in;
    wire out;

    mux_8to1 uut (
        .sel(sel),
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("mux_8to1_tb.vcd");
        $dumpvars(0, mux_8to1_tb);
        $monitor("Time = %0t | sel = %b | in = %b | out = %b", $time, sel, in, out);

        in = 8'b10110011;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;
        $stop;
    end
endmodule