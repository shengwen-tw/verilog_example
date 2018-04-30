module dff(input in_d, input clk, output out_q);

reg out_q;

always @(posedge clk) begin
	out_q <= in_d;
end

endmodule
