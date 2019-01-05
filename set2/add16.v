module add16(s,c,x,y,z);

output [15:0]s;
output c;
input [15:0]x,y;
input z;
full_add f1(s[0],q,x[0],y[0],z);
full_add f2(s[1],w,x[1],y[1],q);
full_add f3(s[2],r,x[2],y[2],w);
full_add f4(s[3],t,x[3],y[3],r);

full_add f5(s[4],v,x[4],y[4],t);
full_add f6(s[5],u,x[5],y[5],v);
full_add f7(s[6],i,x[6],y[6],u);
full_add f8(s[7],o,x[7],y[7],i);

full_add f9(s[8],p,x[8],y[8],o);
full_add f10(s[9],f,x[9],y[9],p);
full_add f11(s[10],g,x[10],y[10],f);
full_add f12(s[11],h,x[11],y[11],g);

full_add f13(s[12],j,x[12],y[12],h);
full_add f14(s[13],k,x[13],y[13],j);
full_add f15(s[14],l,x[14],y[14],k);
full_add f16(s[15],c,x[15],y[15],l);

endmodule
