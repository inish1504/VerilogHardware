module ripple_adder_tb;
    reg [3:0] a, b;   
    reg cin;         
    wire [3:0] sum;   
    wire carry_out;   

    ripple_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("ripple_carry_adder_4bit_tb.vcd");
        $dumpvars(0, ripple_carry_adder_4bit_tb);
        $monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | carry_out=%b", $time, a, b, cin, sum, carry_out);

        a = 4'b0000; b = 4'b0000; cin = 1'b0; #10;  
        a = 4'b0011; b = 4'b0101; cin = 1'b0; #10;  
        a = 4'b1111; b = 4'b0001; cin = 1'b0; #10;  
        a = 4'b1111; b = 4'b1111; cin = 1'b1; #10;  
        $stop;
    end

endmodule
