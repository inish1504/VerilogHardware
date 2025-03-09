module half_adder_tb();
    reg t_a, t_b;
    wire s, c;

    half_adder dut(.a(t_a),.b(t_b),.sum(s),.carry(c));
    initial begin
        $dumpfile("half_adder_tb.vcd"); 
        $dumpvars(0, half_adder_tb);    
        t_a=0;t_b=0;
        #10
        t_a=0;t_b=1;
        #10
        t_a=1;t_b=0;
        #10
        t_a=1;t_b=1;
        #10
        $stop;
    end
endmodule