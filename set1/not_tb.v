module not_tb;

wire c;
reg a;

not_gate not1(c,a,a);

initial 
begin
a=0;
#30 a=1;
end
endmodule