// HALF ADDER
module half_adder
  input a,b;    
  output s,c;
  xor s (s, a, b); 
  and c (c, a, b);
endmodule
