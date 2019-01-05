module sub_32(diff,bout,in0,in1,bin);

output [31:0]diff;
output bout;

input [31:0]in0,in1;
input bin;

full_subtractor f1(diff[0],b0,in0[0],in1[0],bin);
full_subtractor f2(diff[1],b1,in0[1],in1[1],b0);
full_subtractor f3(diff[2],b2,in0[2],in1[2],b1);
full_subtractor f4(diff[3],b3,in0[3],in1[3],b2);

full_subtractor f5(diff[4],b4,in0[4],in1[4],b3);
full_subtractor f6(diff[5],b5,in0[5],in1[5],b4);
full_subtractor f7(diff[6],b6,in0[6],in1[6],b5);
full_subtractor f8(diff[7],b7,in0[7],in1[7],b6);

full_subtractor f9(diff[8],b8,in0[8],in1[8],b7);
full_subtractor f10(diff[9],b9,in0[9],in1[9],b8);
full_subtractor f11(diff[10],b10,in0[10],in1[10],b9);
full_subtractor f12(diff[11],b11,in0[11],in1[11],b10);

full_subtractor f13(diff[12],b12,in0[12],in1[12],b11);
full_subtractor f14(diff[13],b13,in0[13],in1[13],b12);
full_subtractor f15(diff[14],b14,in0[14],in1[14],b13);
full_subtractor f16(diff[15],b15,in0[15],in1[15],b14);

full_subtractor f17(diff[16],b16,in0[16],in1[16],b15);
full_subtractor f18(diff[17],b17,in0[17],in1[17],b16);
full_subtractor f19(diff[18],b18,in0[18],in1[18],b17);
full_subtractor f20(diff[19],b19,in0[19],in1[19],b18);

full_subtractor f21(diff[20],b20,in0[20],in1[20],b19);
full_subtractor f22(diff[21],b21,in0[21],in1[21],b20);
full_subtractor f23(diff[22],b22,in0[22],in1[22],b21);
full_subtractor f24(diff[23],b23,in0[23],in1[23],b22);

full_subtractor f25(diff[24],b24,in0[24],in1[24],b23);
full_subtractor f26(diff[25],b25,in0[25],in1[25],b24);
full_subtractor f27(diff[26],b26,in0[26],in1[26],b25);
full_subtractor f28(diff[27],b27,in0[27],in1[27],b26);

full_subtractor f29(diff[28],b28,in0[28],in1[28],b27);
full_subtractor f30(diff[29],b29,in0[29],in1[29],b28);
full_subtractor f31(diff[30],b30,in0[30],in1[30],b29);
full_subtractor f32(diff[31],bout,in0[31],in1[31],b30);

endmodule
