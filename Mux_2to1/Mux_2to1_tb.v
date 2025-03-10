module mux_2to1_tb;
    reg t_a, t_b, t_sel;
    wire t_y;          
    
    mux_2to1 uut (.a(t_a), .b(t_b), .sel(t_sel), .y(t_y));

    initial begin
        $dumpfile("mux_2to1_tb.vcd");
        $dumpvars(0, mux_2to1_tb);
        t_a = 0; t_b = 0; t_sel = 0; #10;
        t_a = 0; t_b = 1; t_sel = 0; #10;
        t_a = 1; t_b = 0; t_sel = 0; #10;
        t_a = 1; t_b = 1; t_sel = 0; #10;

        t_a = 0; t_b = 0; t_sel = 1; #10;
        t_a = 0; t_b = 1; t_sel = 1; #10;
        t_a = 1; t_b = 0; t_sel = 1; #10;
        t_a = 1; t_b = 1; t_sel = 1; #10;
        $stop;
    end
endmodule
