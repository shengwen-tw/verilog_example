build: full_adder.v test_fa.v
	iverilog $^  -o sim_out.vvp

sim: sim_out.vvp
	vvp $^

plot: sim_out.vcd
	gtkwave $^

clean:
	rm sim_out.vvp sim_out.vcd
