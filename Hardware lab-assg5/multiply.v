module multiply(out,x,y);

output [31:0]out;
input [15:0]x,y;
reg [31:0]out = 0;
reg [15:0]a;
integer i;

always@(x,y)
begin
  a=x;
 for(i=0;i<15;i=i+1)
  begin
   if(y[i])
     begin
     out=out+a; 
     end
     a=a<<1;
  end
end
endmodule
