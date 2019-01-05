module mux_3way(out,in0,in1,in2,s0,s1);

output out;
input in0,in1,in2,s0,s1;

wire x;

mux mux1(x,in0,in1,s0);
mux mux2(out,x,in2,s1);

endmodule

