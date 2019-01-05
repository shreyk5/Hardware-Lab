module full_add_tb;
wire s,c;
reg x,y,z;
full_add f1(s,c,x,y,z);
integer i,j;
initial
begin
	for (i = 0;i<=15;i= i+1)
	for (j = 0;j<=15;j=j+1)
	begin
		#10 x=i;y=j;z=0;
	end
end
endmodule
	