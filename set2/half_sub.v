module half_sub1(bout,diff,in0,in1);
input in0,in1;
output bout,diff;
xor(diff,in0,in1);
not(c,in0);
and(bout,c,in1);
endmodule
