module DEMUX_8WAY_TB;
reg in0,s0,s1,s2;
wire out0,out1,out2,out3,out4,out5,out6,out7;
demux_8way d4(out0,out1,out2,out3,out4,out5,out6,out7,in0,s0,s1,s2);
integer i,j,k,l;
always
begin
	for(i=0;i<=1;i=i+1)
	for(j=0;j<=1;j=j+1)
	for(k=0;k<=1;k=k+1)
	for(l=0;l<=1;l=l+1)
	begin
		#10 in0=i;s0=j;s1=k;s2=l;
	end
end
endmodule