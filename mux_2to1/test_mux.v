`timescale 1ns/1ps

module test_mux;

reg a, b, s;
wire out;

mux_2to1 mux1(a, b, s, out);

initial begin
	//debug waveform output
	$dumpfile("test_mux.vcd");
	$dumpvars(0, test_mux);

	//test signals
	a = 0;
	b = 0;
	s = 1;

	#1; //delay for 1ns

	b = 1;
	s = 0;

	#1;

	$finish;
end

endmodule
