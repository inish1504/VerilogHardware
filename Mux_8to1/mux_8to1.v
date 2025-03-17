`include "/home/inish/Data/VerilogHardware/Mux_4to1/mux_4to1.v"  
`include "/home/inish/Data/VerilogHardware/Mux_2to1/Mux_2to1.v" 

module mux_8to1 (
    input wire [2:0] sel,   
    input wire [7:0] in,   
    output wire out         
);
    wire out1, out2;  

    mux_4to1 mux1 (
        .sel(sel[1:0]), 
        .in(in[3:0]), 
        .out(out1)
    );

    mux_4to1 mux2 (
        .sel(sel[1:0]), 
        .in(in[7:4]), 
        .out(out2)
    );

    mux_2to1 mux3 (
        .a(out1), 
        .b(out2), 
        .sel(sel[2]), 
        .y(out)
    );
endmodule