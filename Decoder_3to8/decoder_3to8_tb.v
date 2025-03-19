module decoder_3to8_tb;
    reg [2:0] in;   
    reg enable;   
    wire [7:0] out;  

    decoder_3to8 uut (
        .in(in),
        .enable(enable),
        .out(out)
    );

    initial begin
        $dumpfile("decoder_3to8_tb.vcd");
        $dumpvars(0, decoder_3to8_tb);
        $monitor("Time=%0t | Enable=%b | in=%b | out=%b", $time, enable, in, out);
        
        enable = 0; in = 3'b000; #10;  
        enable = 1; in = 3'b000; #10;  
        enable = 1; in = 3'b001; #10; 
        enable = 1; in = 3'b010; #10; 
        enable = 1; in = 3'b011; #10; 
        enable = 1; in = 3'b100; #10;  
        enable = 1; in = 3'b101; #10;  
        enable = 1; in = 3'b110; #10;  
        enable = 1; in = 3'b111; #10;  
        enable = 0; in = 3'b101; #10;  
        $stop;
    end
endmodule
