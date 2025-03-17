module decoder_2to4_tb;
    reg [1:0] in;       
    reg enable;         
    wire [3:0] out;

    decoder_2to4 uut (
        .in(in),
        .enable(enable),
        .out(out)
    );

    initial begin
        $dumpfile("decoder_2to4_tb.vcd");
        $dumpvars(0, decoder_2to4_tb);
        $monitor("Time=%0t | Enable=%b | in=%b | out=%b", $time, enable, in, out);

        enable = 0; in = 2'b00; #10;
        enable = 1; in = 2'b00; #10;
        enable = 1; in = 2'b01; #10;
        enable = 1; in = 2'b10; #10;
        enable = 1; in = 2'b11; #10;
        enable = 0; in = 2'b00; #10;
        $stop;        
    end
endmodule