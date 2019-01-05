
module demux_4way(out0,out1,out2,out3,in,s0,s1);

input in,s0,s1;
output out0,out1,out2,out3;
 
wire x,y;
demux demux_1(x,y,in,s1);

demux demux_2(out0,out1,x,s0);
demux demux_3(out2,out3,y,s0);

endmodule
