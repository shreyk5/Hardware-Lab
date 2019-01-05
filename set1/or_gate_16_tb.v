module or_16_tb;

wire[15:0]c;
reg[15:0]a,b;
or_gate_16 or_gate_16_test[15:0](c,b,a);

integer i,j;

always
begin

for(i=0;i<=15;i=i+1)
   for(j=0;j<=15;j=j+1)
     begin
  #10 a=i; 
    b=j;
      end
end

endmodule
