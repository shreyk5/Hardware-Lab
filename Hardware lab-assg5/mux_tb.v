module mux_tb;

wire out;
reg in0,in1,s;

mux mux1(out,in0,in1,s);

integer i,j,k;

initial
begin

 for(i=0;i<2;i=i+1)
   for(j=0;j<2;j=j+1)
     for(k=0;k<2;k=k+1)
     begin  s=i; in0=j; in1=k; #10;  end
end

endmodule


   
