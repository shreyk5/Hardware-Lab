module mux_2x1(out, in0, in1, s0);

// port declarations
output out; // Output port.
input in0, in1; // Input ports.
input s0; // Input ports: select lines.

// intermediate wires
wire inv0; // Inverter outputs.
wire a0, a1; // AND gates outputs.

//3-input AND gates.
wire inv;
not_gate not_1(inv,s0,s0);
and_gate and_0 (a0, inv, in0);  
and_gate and_1(a1,s0,in1);

or_gate or_2 (out, a0, a1);
endmodule

