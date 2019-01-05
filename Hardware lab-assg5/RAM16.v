module ram16(out,in,en,clk,read,address);

output [31:0]out;
input  [31:0]in;
input  [3:0]address;
input  en,clk,read;

wire [2:0]tmp;
wire en0,en1;

bufif1 buff1(tmp[2],address[2],1);
bufif1 buff2(tmp[1],address[1],1);
bufif1 buff3(tmp[0],address[1],1);
demux demux1(en0,en1,en,address[3]);

ram8 ram1(out0,in,en0,clk,read,tmp);
ram8 ram2(out1,in,en1,clk,read,tmp);

or_gate or1[31:0](out,out0,out1);
endmodule
