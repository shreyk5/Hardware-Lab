module sub_tb;

wire bout;
wire [15:0]diff;
reg [15:0]in0,in1;
reg bin;
subtractor s1(bout,diff,in0,in1,bin);
integer i,j;



initial
begin

for(i=0;i<=15;i=i+1)
for(j=0;j<=15;j=j+1)
begin
#10 in0=i; in1=j; bin=0;
end

end

endmodule
