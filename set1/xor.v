module xor_gate(c,a,b);

output c;
input a,b;

wire ac,bc,x,y;
wire p,q;

nand(ac,a,a);
nand(bc,b,b);

nand(x,ac,b);
nand(y,a,bc);
nand(c,x,y);

endmodule
