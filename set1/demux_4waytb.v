module demux_4way_tb;

reg s0,s1,in;
wire out0,out1,out2,out3;
integer i,j,k;
demux_4way demux_4way_test1(out0,out1,out2,out3,in,s0,s1);

always
begin 

for(i=0;i<=1;i=i+1)
  for(j=0;j<=1;j=j+1)
   for(k=0;k<=1;k=k+1)
     begin #10 in=i; s0=j; s1=k; end

end

endmodule
