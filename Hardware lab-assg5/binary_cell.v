module binary_cell(out,in,en,clk,write);

output out;
input in,en,clk,write;

wire x,r,out1;
and(w,write,en);

mux mux1(x,out,in,w);

rising_dff dff1(out,,x,clk);
endmodule
