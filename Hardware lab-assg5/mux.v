module mux(out,in0,in1,s);

input s,in0,in1;
output out;

// out=s'.in0 + s.in1

wire x,y,sinv;

not_gate not1(sinv,s);

and_gate and1(x,sinv,in0);
and_gate and2(y,s,in1);

or_gate or1(out,x,y);

endmodule
