module demux(out0,out1,i,s);

output out0,out1;
input i,s;

wire inv;

not_gate not_1(inv,s,s);
and_gate and_1(out0,inv,i);
and_gate and_2(out1,s,i);

endmodule
