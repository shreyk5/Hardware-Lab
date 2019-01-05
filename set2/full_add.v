module full_add(s,c,x,y,z);

output s,c;
input x,y,z;

wire a,b,i;

half_add h1(a,b,x,y);
half_add h2(s,i,a,z);

or_gate or1(c,b,i);

endmodule
