`timescale 1ns/10ps

module test_mux;

reg a, b, s;
wire out;

mux_2to1 mux1(a, b, s, out);

initial begin
	//debug waveform output
	$dumpfile("sim_out.vcd");
	$dumpvars(0, test_mux);

	//test signals
	a = 1;
	b = 0;
	s = 0;
	#1; //delay for 1ns

	a = 0;
	b = 1;
	s = 1;
	#1;

	a = 1;
	b = 0;
	s = 1;
	#1;

	$finish;
end

endmodule
