module dff(q,qinv,d,clk);

output q,qinv;
input d,clk;
wire dinv;

not_gate not1(dinv,d);

gated_sr_latch dff1(q,qinv,d,dinv,clk);
endmodule
