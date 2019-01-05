module bit16_4way_mux(out,i0,i1,i2,i3,s0,s1);

input [15:0]i0,i1,i2,i3;
input s0,s1;
output [15:0]out;

wire [15:0]x,y;
wire inv;

not_gate not_1(inv,s0,s0);  	//complement of s0
//not_gate not_2(inv1,s1,s1);     //complement of s1

mux_16 mux_1[15:0](x,i0,i1,s0);
mux_16 mux_2[15:0](y,i2,i3,s0);

mux_16 mux_3[15:0](out,x,y,s1);

endmodule
