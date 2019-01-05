module RAM16_TB;
wire[31:0]out;
reg[31:0]in;
reg[3:0]address;
reg read,en,clk;
ram16 ram1(out,in,en,clk,read,address);
integer i,j,k;
always
begin
	en = 1'b1;
	for (j=0;j<=7;j=j+1)
	for (i=0;i<=50;i=i+1)
        for (k=0;k<=1;k=k+1)
	begin
      		 clk=0;
                 address = j;in = i;read = k;
                 #5 clk=1;  
		#10;    
	end
end
endmodule
