module nor_gate(c,a,b);

output c;
input a,b;

wire x,y,z;

nand(x,a,a);
nand(y,b,b);
nand(z,x,y);
nand(c,z,z);

endmodule