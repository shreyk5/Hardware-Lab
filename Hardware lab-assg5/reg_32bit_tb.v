
module reg_32bit_tb;

wire [31:0]out;
reg [31:0]in;
reg en,clk,write;
reg_32bit reg1(out,in,en,clk,write);

integer    i,j,k,l;
   initial
     begin
	en = 1;
	for (i = 0;i<=20;i=i+1)
	for (j = 0;j<=1;j=j+1)
	for (k = 0;k<=1;k=k+1)
	for (l = 0;l<=1;l=l+1)
	begin
	   #2;in = i;#2; write= k;#2;clk = l;#10;en = 1'b0;#10;en = 1'b1;
	   #10;
	end
     end
endmodule
