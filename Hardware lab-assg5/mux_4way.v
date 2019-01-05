module mux_4way(out,in0,in1,in2,in3,s0,s1);

output out;
input in0,in1,in2,in3,s0,s1;

mux mux1(out1,in0,in1,s0);
mux mux2(out2,in2,in3,s0);

mux mux3(out,out1,out2,s1);

endmodule

