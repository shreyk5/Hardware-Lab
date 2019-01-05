module divider(count,x,y);

output [15:0]count;
input [15:0]x,y;
reg [15:0]count;
reg [15:0]a;

always@(x,y)
begin
 a=x;
 count=0; 
 while(a>=y)
  begin
     a=a-y;
     count=count+1; 
  end
end
endmodule
