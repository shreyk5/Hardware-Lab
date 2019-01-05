module mux_8way(out,in0,in1,in2,in3,in4,in5,in6,in7,s0,s1,s2);

output [15:0]out;
input [15:0]in0,in1,in2,in3,in4,in5,in6,in7;
input s0,s1,s2;
wire [15:0]x,y;

bit16_4way_mux mux_8way_1(x,in0,in1,in2,in3,s0,s1);
bit16_4way_mux mux_8way_2(y,in4,in5,in6,in7,s0,s1);
mux_2x1 mux_8way_3[15:0](out,x,y,s2);

endmodule
