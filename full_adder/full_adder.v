module full_adder(a, b, c_in, s, c_out);
input a, b, c_in;
output s, c_out;

wire xor1_out, and1_out, and2_out; 

xor xor1(xor1_out, a, b);
xor xor2(s, xor1_out, c_in);
and and1(and1_out, c_in, xor1_out);
and and2(and2_out, a, b);
or or1(c_out, and1_out, and2_out);

endmodule
