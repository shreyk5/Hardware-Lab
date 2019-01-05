module ram8(out,in,en,clk,read,address);

input [31:0]in;
input en,clk,read;
input [2:0]address;
output [31:0]out;
wire [7:0]tmp;
wire [31:0]x1,x2,x3,x4,x5,x6,x7,x8;
wire [31:0]y1,y2,y3,y4,y5,y6,y7,y8,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14;
demux_8way demux1(tmp[0],tmp[1],tmp[2],tmp[3],tmp[4],tmp[5],tmp[6],tmp[7],en,address[0],address[1],address[2]);

reg_32bit reg1(y1,in,tmp[0],clk,read);
reg_32bit reg2(y2,in,tmp[1],clk,read);
reg_32bit reg3(y3,in,tmp[2],clk,read);
reg_32bit reg4(y4,in,tmp[3],clk,read);
reg_32bit reg5(y5,in,tmp[4],clk,read);
reg_32bit reg6(y6,in,tmp[5],clk,read);
reg_32bit reg7(y7,in,tmp[6],clk,read);
reg_32bit reg8(y8,in,tmp[7],clk,read);

mux_32bit mux1(x1,0,32'b11111111111111111111111111111111,tmp[0]);
mux_32bit mux2(x2,0,32'b11111111111111111111111111111111,tmp[1]);
mux_32bit mux3(x3,0,32'b11111111111111111111111111111111,tmp[2]);
mux_32bit mux4(x4,0,32'b11111111111111111111111111111111,tmp[3]);
mux_32bit mux5(x5,0,32'b11111111111111111111111111111111,tmp[4]);
mux_32bit mux6(x6,0,32'b11111111111111111111111111111111,tmp[5]);
mux_32bit mux7(x7,0,32'b11111111111111111111111111111111,tmp[6]);
mux_32bit mux8(x8,0,32'b11111111111111111111111111111111,tmp[7]);

and and1[31:0](out1,x1,y1);
and and2[31:0](out2,x2,y2);
and and3[31:0](out3,x3,y3);
and and4[31:0](out4,x4,y4);
and and5[31:0](out5,x5,y5);
and and6[31:0](out6,x6,y6);
and and7[31:0](out7,x7,y7);
and and8[31:0](out8,x8,y8);

or or1[31:0](out9,out1,out2);
or or2[31:0](out10,out3,out9);
or or3[31:0](out11,out4,out10);
or or4[31:0](out12,out5,out11);
or or5[31:0](out13,out6,out12);
or or6[31:0](out14,out7,out13);
or or7[31:0](out,out8,out14);
endmodule
