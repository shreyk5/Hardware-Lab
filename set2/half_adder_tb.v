module half_adder_tb;

reg x,y;
wire s,c;

integer i,j;
half_adder ha(s,c,x,y);
initial 
begin

for(i=0;i<=1;i=i+1)
for(j=0;j<=1;j=j+1)
begin
#10 x=i; y=j;
end

end
endmodule
