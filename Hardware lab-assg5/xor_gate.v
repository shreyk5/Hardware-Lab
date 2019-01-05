module xor_gate(c,a,b);

input a,b;
output c;
wire p,q,x,y;

nand(x,a,a);
nand(y,b,b);
and_gate and1(p,x,b);
and_gate and2(q,a,y);

or_gate or1(c,p,q);

endmodule

