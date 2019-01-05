module xnor_tb;
wire c;
reg a,b;

xnor_gate xnor_1(c,a,b);

initial 
begin

a=0; b=0;
#30 a=0;b=1;
#30 a=1;b=0;
#30 a=1; b=1;
end

endmodule

