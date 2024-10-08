module half_adder_tb();
reg t_a,t_b;
wire SUM,CARRY;

half_adder dut(.a(t_a),.b(t_b),.s(SUM),.c(CARRY));

initial begin
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
