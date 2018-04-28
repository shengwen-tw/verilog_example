module mux_2to1(a, b, sel, out);

input a, b, sel;
output out;
wire and1_out, and2_out, sel_bar;

not inv1(sel_bar, sel);
and and1(and1_out, a, sel_bar);
and and2(and2_out, b, sel);
or  or1(out, and1_out, and2_out);

endmodule
