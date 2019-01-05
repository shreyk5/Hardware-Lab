module or_gate(c,a,b);

input a,b;
output c;

wire x,y;

nand(x,a,a);
nand(y,b,b);

nand(c,x,y);

endmodule

