module rising_dff(q,qinv,d,clk);

output q,qinv;
input  d,clk;
wire a,clkinv;

not(clkinv,clk);

dff dff1(a,,d,clkinv);
dff dff2(q,qinv,a,clk);

endmodule
