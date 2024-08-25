module full_adder(a,b,c,s,carry);
input a,b,c;
output s,carry;
assign s=a^b^c;
assign carry=(a&b)+(b&c)+(a&c);
endmodule
