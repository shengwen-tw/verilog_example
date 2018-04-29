`timescale 1ns/1ps

module test_alu;

reg [7:0] data_a, data_b;
reg [1:0] opcode;
wire [7:0] out;

alu alu1(data_a, data_b, opcode, out);

initial begin
	data_a <= 5;
	data_b <= 4;

	opcode <= `ADD;
	$monitor("%d + %d = %d", data_a, data_b, out);
	#1;

	opcode <= `SUB;
	$monitor("%d - %d = %d", data_a, data_b, out);
	#1;

	opcode <= `MUL;
	$monitor("%d * %d = %d", data_a, data_b, out);
	#1;

	opcode <= `DIV;
	$monitor("%d / %d = %d", data_a, data_b, out);
	#1;
end

endmodule
