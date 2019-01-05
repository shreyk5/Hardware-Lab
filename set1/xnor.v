module xnor_gate(c,a,b);

output c;
input a,b;

wire ac,bc,x,y;
wire p,q,m;

nand(ac,a,a);
nand(bc,b,b);

nand(x,ac,b);
nand(y,a,bc);
nand(m,x,y);
nand(c,m,m);
endmodule
