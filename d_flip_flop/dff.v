module dff(input in_d, input clk, output out_q);

reg out_q;

initial begin
out_q = 0;
end

always @(posedge clk) begin
	out_q = in_d;
end

endmodule
