`timescale 1ms/1us

module test_dff();

reg in_d, clk;
wire out_q;

dff dff1(in_d, clk, out_q);

//generate clock signal
always #1 begin
	clk = ~clk;
end

initial begin
	in_d = 0;
	clk = 0;
	#1;

	$dumpfile("sim_out.vcd");
	$dumpvars(0, test_dff);

	in_d = 1;
	#2;

	in_d = 0;
	#1;

	in_d = 1;
	#2;

	in_d = 0;
	#4

	$finish();
end

endmodule


