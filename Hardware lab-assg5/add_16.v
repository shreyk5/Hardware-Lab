module add_16(s,c,x,y,z);

output [15:0]s;
output c;
input [15:0]x,y;
input z;
wire q,w,e,r,t,p,f,g,h,j,k,u,i,o;

full_adder f1(s[0],q,x[0],y[0],z);
full_adder f2(s[1],w,x[1],y[1],q);
full_adder f3(s[2],r,x[2],y[2],w);
full_adder f4(s[3],t,x[3],y[3],r);

full_adder f5(s[4],v,x[4],y[4],t);
full_adder f6(s[5],u,x[5],y[5],v);
full_adder f7(s[6],i,x[6],y[6],u);
full_adder f8(s[7],o,x[7],y[7],i);

full_adder f9(s[8],p,x[8],y[8],o);
full_adder f10(s[9],f,x[9],y[9],p);
full_adder f11(s[10],g,x[10],y[10],f);
full_adder f12(s[11],h,x[11],y[11],g);

full_adder f13(s[12],j,x[12],y[12],h);
full_adder f14(s[13],k,x[13],y[13],j);
full_adder f15(s[14],l,x[14],y[14],k);
full_adder f16(s[15],c,x[15],y[15],l);
endmodule

