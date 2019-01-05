module half_adder(s,c,x,y);

output s,c;
input x,y;


and_gate and_1(c,x,y);
xor_gate xor_1(s,x,y);

endmodule
