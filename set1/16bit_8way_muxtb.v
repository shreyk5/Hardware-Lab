module mux_8waytb;

wire [15:0]out;
reg [15:0] in0,in1,in2,in3,in4,in5,in6,in7;
reg s0,s1,s2;

integer q,w,e,r,t,y,u,i,p,a,s;
mux_8way mux_testing(out,in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2);

initial
begin

for(q=0;q<=3;q=q+1) 
for(w=0;w<=3;w=w+1)
for(e=0;e<=3;e=e+1)
for(r=0;r<=3;r=r+1)
for(t=0;t<=3;t=t+1)
for(y=0;y<=3;y=y+1)
for(u=0;u<=3;u=u+1)
for(i=0;i<=3;i=i+1)
for(p=0;p<=1;p=p+1)
for(a=0;a<=1;a=a+1)
for(s=0;s<=1;s=s+1)
begin #10 in0=q; in1=w; in2=e; in3=r; in4=t; in5=y; in6=u; in7=i; s0=p; s1=a; s2=s;
end
end

endmodule
