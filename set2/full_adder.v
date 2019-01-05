module full_adder(s,c,x,y,z);

output s,c;
input x,y,z;

wire a,b;

xor_gate xor_1(a,x,y);
xor_gate xor_2(s,a,z);

wire q,w,e;

and_gate and_1(q,x,y);

xor_gate xor_3(w,x,y);
and_gate and_2(e,w,z);

or_gate or_1(c,q,e);
endmodule
