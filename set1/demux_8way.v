module demux_8way(out0,out1,out2,out3,out4,out5,out6,out7,in0,s0,s1,s2);
input in0,s0,s1,s2;
output out0,out1,out2,out3,out4,out5,out6,out7;
wire a,b;
demux d1(a,b,in0,s2);
demux_4way d2(out0,out1,out2,out3,a,s0,s1);
demux_4way d3(out4,out5,out6,out7,b,s0,s1);
endmodule
