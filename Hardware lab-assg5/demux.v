module demux(out0,out1,in,s);

output out0,out1;
input in,s;

not_gate not1(sinv,s);

and_gate and1(out0,sinv,in);
and_gate and2(out1,s,in);

endmodule

