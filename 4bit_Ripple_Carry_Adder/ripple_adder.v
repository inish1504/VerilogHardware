`include "/home/inish/Data/VerilogHardware/Full_Adder/full_adder.v"

module ripple_adder (
    input wire [3:0] a,  
    input wire [3:0] b,  
    input wire cin,       
    output wire [3:0] sum, 
    output wire carry_out 
);
    wire carry1, carry2, carry3;  

    full_adder fa0 (.a(a[0]), .b(b[0]), .c(cin), .s(sum[0]), .carry(carry1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .c(carry1), .s(sum[1]), .carry(carry2));
    full_adder fa2 (.a(a[2]), .b(b[2]), .c(carry2), .s(sum[2]), .carry(carry3));
    full_adder fa3 (.a(a[3]), .b(b[3]), .c(carry3), .s(sum[3]), .carry(carry_out));

endmodule