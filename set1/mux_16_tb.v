module mux_16_tb;

reg [15:0]i0;
reg [15:0]i1;
reg s;
wire [15:0]out;

mux_16 mux_16_test[15:0](out,i0,i1,s);

integer i;
integer j;
integer k;
initial

begin

for(i=0;i<=15;i=i+1)
   for( j=0;j<=15;j=j+1)
       for(k=0;k<=1;k=k+1)
     begin
       #30  i0=i; i1=j; s=k;
      
     end

end

endmodule