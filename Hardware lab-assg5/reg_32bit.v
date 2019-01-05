module reg_32bit(out,in,en,clk,write);

output [31:0]out;
input [31:0]in;
input en,clk,write;

binary_cell bcell[31:0](out,in,en,clk,write);

endmodule
 
