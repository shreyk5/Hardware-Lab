module demux_4way_tb;

wire out0,out1,out2,out3;
reg in,s0,s1;

demux_4way demux1(out0,out1,out2,out3,in,s0,s1);
integer a,b,c;

initial
 begin

 for(a=0;a<2;a=a+1)
 for(b=0;b<2;b=b+1)
 for(c=0;c<2;c=c+1)
 begin  in=a; s0=b; s1=c; #10; end

 end

endmodule


