module RAM8_TB;
wire[31:0]out;
reg[31:0]in;
reg[2:0]address;
reg write,en,clk;
ram8 ram1(out,in,en,clk,write,address);

initial
begin

en = 1'b1;

	in = 193;
	write = 1'b1;
	address = 7;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	in = 14;
	write = 1'b1;
	address = 5;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	write = 1'b0;
	address = 7;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
        write = 1'b0;
	address = 5;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;

end
endmodule
