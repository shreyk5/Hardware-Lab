module PC_tb;

wire [31:0]out;
reg [31:0]in;
reg clk,read,inc,reset;

PC pc1(out,in,clk,read,inc,reset);

initial
 begin
 inc = 1'b0;
	read = 1'b1;
	reset = 1'b1;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//increment
	inc = 1'b1;
	read = 1'b1;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//jump
	in = 132;
	inc = 1'b0;
	read = 1'b0;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//increment
	inc = 1'b1;
	read = 1'b1;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//increment
	inc = 1'b1;
	read = 1'b1;
	reset = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	//reset
	reset = 1'b1;
	read = 1'b1;
	inc = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;

 end
endmodule
