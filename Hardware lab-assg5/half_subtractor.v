module half_subtractor(diff,b,x,y);

output diff,b;
input  x,y;

xor_gate xor1(diff,x,y);
not_gate not1(xinv,x);

and_gate and1(b,xinv,y);

endmodule

