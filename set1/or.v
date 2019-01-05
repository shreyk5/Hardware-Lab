
module or_gate(c,a,b);

output c;
input a,b;

wire x,y;

nand(x,a,a);
nand(y,b,b);
nand(c,x,y);

endmodule