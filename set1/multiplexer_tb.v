module mux_tb;

reg in0,in1,s0;
wire out;
integer i;

mux_2x1 mux_2x1_tb(out,in0,in1,s0);

initial 
begin

in0=0;  in1=0; s0=0;
#30
in0=0;  in1=0; s0=1;

#30
in0=0;  in1=1; s0=0;
 #30 in0=0;  in1=1; s0=1;

#30
in0=1;  in1=0; s0=0;
#30
in0=1;  in1=0; s0=1;
#30

in0=1;  in1=1; s0=0;
#30
in0=1;  in1=1; s0=1;
end
endmodule