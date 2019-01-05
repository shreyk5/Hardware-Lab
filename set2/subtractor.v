module subtractor(bout,diff,in0,in1,bin);
input [15:0] in0,in1;
output[15:0] diff;
output bout;
input bin;

full_sub1 f1(b0,diff[0],in0[0],in1[0],bin);
full_sub1 f2(b1,diff[1],in0[1],in1[1],b0);
full_sub1 f3(b2,diff[2],in0[2],in1[2],b1);
full_sub1 f4(b3,diff[3],in0[3],in1[3],b2);

full_sub1 f5(b4,diff[4],in0[4],in1[4],b3);
full_sub1 f6(b5,diff[5],in0[5],in1[5],b4);
full_sub1 f7(b6,diff[6],in0[6],in1[6],b5);
full_sub1 f8(b7,diff[7],in0[7],in1[7],b6);

full_sub1 f9(b8,diff[8],in0[8],in1[8],b7);
full_sub1 f10(b9,diff[9],in0[9],in1[9],b8);
full_sub1 f11(b10,diff[10],in0[10],in1[10],b9);
full_sub1 f12(b11,diff[11],in0[11],in1[11],b10);

full_sub1 f13(b12,diff[12],in0[12],in1[12],b11);
full_sub1 f14(b13,diff[13],in0[13],in1[13],b12);
full_sub1 f15(b14,diff[14],in0[14],in1[14],b13);
full_sub1 f16(bout,diff[15],in0[15],in1[15],b14);

endmodule