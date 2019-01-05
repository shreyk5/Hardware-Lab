module mux_16(out,in0,in1,s);

output [15:0]out;
input [15:0]in0;
input[15:0]in1;
input s;

mux_2x1 mux_16_i[15:0](out,in0,in1,s);

endmodule
