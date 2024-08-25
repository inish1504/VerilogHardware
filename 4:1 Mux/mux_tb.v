module tb_mux;
    reg [1:0] sel;
    reg in0, in1, in2, in3;
    wire out;
    mux uut (
        .sel(sel),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .out(out)
    );
    initial begin
            sel = 2'b00; in0 = 1'b1; in1 = 1'b0; in2 = 1'b0; in3 = 1'b0; 
        #10 sel = 2'b01; in0 = 1'b0; in1 = 1'b1; in2 = 1'b0; in3 = 1'b0; 
        #10 sel = 2'b10; in0 = 1'b0; in1 = 1'b0; in2 = 1'b1; in3 = 1'b0; 
        #10 sel = 2'b11; in0 = 1'b0; in1 = 1'b0; in2 = 1'b0; in3 = 1'b1; 
        #10 sel = 2'b00; in0 = 1'b0; in1 = 1'b1; in2 = 1'b1; in3 = 1'b1; 
        #10 sel = 2'b01; in0 = 1'b1; in1 = 1'b0; in2 = 1'b1; in3 = 1'b1; 
        #10 sel = 2'b10; in0 = 1'b1; in1 = 1'b1; in2 = 1'b0; in3 = 1'b1; 
        #10 sel = 2'b11; in0 = 1'b1; in1 = 1'b1; in2 = 1'b1; in3 = 1'b0; 
        #10;
        $finish;
    end
endmodule
