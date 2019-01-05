module demux_tb;

reg i,s;
wire ou0,out1;

demux demux_1(out0,out1,i,s);

initial
begin

i=0; s=0;
#30 i=0; s=1;

#30 i=1; s=0;
#30 i=1; s=1;


end
endmodule
