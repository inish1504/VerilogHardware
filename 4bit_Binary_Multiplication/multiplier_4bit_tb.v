module multiplier_4bit_tb;

    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] product;

    multiplier_4bit uut (
        .a(a),
        .b(b),
        .product(product)
    );

    initial begin
        $monitor("Time = %0t | a = %b, b = %b, product = %b", $time, a, b, product);

        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b0001; b = 4'b0001; #10;
        a = 4'b0010; b = 4'b0010; #10;
        a = 4'b1111; b = 4'b1111; #10;
        a = 4'b1010; b = 4'b1100; #10;

        $finish;
    end

endmodule
