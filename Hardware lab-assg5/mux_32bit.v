module mux_32bit(out,in0,in1,s);
input[31:0] in0,in1;
output [31:0] out;
input s;
mux mux1[31:0](out,in0,in1,s);
endmodule
