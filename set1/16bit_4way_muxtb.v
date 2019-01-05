module bit16_4way_tb;

reg [15:0]i0,i1,i2,i3;
reg s0,s1;
wire [15:0]out;

bit16_4way_mux bit16_4way_muxtest[15:0](out,i0,i1,i2,i3,s0,s1);

integer i,j,k,l,m,n;

initial 
begin
  for(i=0;i<=15;i=i+1)
     for(j=0;j<=15;j=j+1)
        for(k=0;k<=15;k=k+1)
              for(l=0;l<=15;l=l+1)
                 for(m=0;m<=1;m=m+1)
                   for(n=0;n<=1;n=n+1)
                    begin
                       #30 i0=i; i1=j; i2=k; i3=l; s0=m; s1=n;
                    end
end

endmodule
