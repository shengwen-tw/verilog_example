module mux_2to1(in_a, in_b, sel, out);

input in_a, in_b, sel;
output out;
wire out_a, out_b, sel_bar;

not inv1(sel_bar, sel);
and and1(out1, a, sel);
and and2(out2, sel_bar, in_b);
or  or1(out, out1, out2);

endmodule
