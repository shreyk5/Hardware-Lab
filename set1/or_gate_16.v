module or_gate_16(c,b,a);

output[15:0]c;
input[15:0]a;
input[15:0]b;

or_gate or_gate_call[15:0](c,b,a);

endmodule

