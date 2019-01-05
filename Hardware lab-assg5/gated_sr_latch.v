module gated_sr_latch(q,qinv,s,r,en);

output q,qinv;
input s,r,en;

nand(q1,s,en);
nand(q2,r,en);

nand(q,qinv,q1);
nand(qinv,q,q2);

endmodule
