module full_adder_tb();
reg t_a,t_b,t_c;
wire SUM,CARRY_OUT;

full_adder dut(.a(t_a),.b(t_b),.c(t_c),.s(SUM),.carry(CARRY_OUT));

initial begin
t_a=0;t_b=0;t_c=0;
#10
t_a=0;t_b=0;t_c=1;
#10
t_a=0;t_b=1;t_c=0;
#10
t_a=0;t_b=1;t_c=1;
#10
t_a=1;t_b=0;t_c=0;
#10
t_a=1;t_b=0;t_c=1;
#10
t_a=1;t_b=1;t_c=0;
#10
t_a=1;t_b=1;t_c=1;
#10
$stop;
end
endmodule
