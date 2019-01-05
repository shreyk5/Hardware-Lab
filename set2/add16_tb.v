module adder_tb;

wire c;
wire [15:0]s;
reg [15:0]x,y;
reg z;
add16 adder_test(s,c,x,y,z);
integer i,j;



initial
begin

for(i=0;i<=15;i=i+1)
for(j=0;j<=15;j=j+1)
begin
#10 x=i; y=j; z=0;
end

end

endmodule