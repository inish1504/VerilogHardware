module mux_4to1_tb;
    reg [1:0] sel;
    reg [3:0] in;
    wire out;

    mux_4to1 uut (
        .sel(sel),
        .in(in),
        .out(out)
    );
    
    initial begin
        $dumpfile("mux_4to1_tb.vcd");
        $dumpvars(0, mux_4to1_tb);

        $monitor("Time = %0t | sel = %b | in = %b | out = %b", $time, sel, in, out);

        in = 4'b0101;
        
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;
        $stop;
    end
endmodule