`timescale 100ms/1ms

module test_fa;

reg a, b, c_in;
wire s, c_out;

full_adder fa1(a, b, c_in, s, c_out);

initial begin
	$dumpfile("sim_out.vcd");
	$dumpvars(0, test_fa);

	a = 0;
	b = 0;
	c_in = 0;
	#1;

	a= 1;
	#1;

	b = 1;
	#1;

	c_in = 1;
	#1

	$finish;
end

endmodule
