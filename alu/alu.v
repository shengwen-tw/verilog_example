`define ADD 2'b00
`define SUB 2'b01
`define MUL 2'b10
`define DIV 2'b11

module alu(data_a, data_b, opcode, out);

parameter DATA_SIZE = 8;
parameter OPCODE_SIZE = 2;

input [DATA_SIZE-1:0] data_a, data_b;
input [OPCODE_SIZE-1:0] opcode;
output [DATA_SIZE-1:0] out;

reg [DATA_SIZE-1:0] out;

always @(data_a, data_b, opcode) begin
	case(opcode)
	`ADD: out <= data_a + data_b;
	`SUB: out <= data_a - data_b;
	`MUL: out <= data_a * data_b;
	`DIV: out <= data_a / data_b;
	default: out <= 0;
	endcase
end

endmodule
