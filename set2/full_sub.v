module full_sub1(bout,diff,in0,in1,bin);
input in0,in1,bin;
output bout,diff;
half_sub1 h1(b1,diff1,in0,in1);
half_sub1 h2(b2,diff,diff1,bin);
or(bout,b1,b2);
endmodule
