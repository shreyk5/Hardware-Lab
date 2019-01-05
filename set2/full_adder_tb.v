module full_adder_tb;

reg x,y,z;
wire s,c;

integer i,j,k;
full_adder fa(s,c,x,y,z);
initial 
begin

for(i=0;i<=1;i=i+1)
for(j=0;j<=1;j=j+1)
for(k=0;k<=1;k=k+1)
begin
#10 x=i; y=j; z=k;
end

end
endmodule
