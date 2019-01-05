module not_16_tb;

wire[15:0]b;
reg[15:0]a;

integer i;
//not16_gate obj1[15:0](b,a);

initial
begin

i=0;
while(i<=65535)

begin
a=i;
#10 i=i+1;
end

end

endmodule
