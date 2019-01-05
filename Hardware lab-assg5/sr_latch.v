module sr_latch(q,qinv,s,r);

input s,r;
output q,qinv;
wire sinv,rinv;

not_gate not1(sinv,s);
not_gate not2(rinv,r);

nand(q,qinv,sinv);
nand(qinv,q,rinv);

endmodule

