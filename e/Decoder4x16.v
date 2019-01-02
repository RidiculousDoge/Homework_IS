`timescale 10 ns / 1 ns

module Decoder4x16(
	output reg [15:0] data,
	input [3:0] code
);

always @(*) begin
	case (code)
		4'b0000: data = 16'b0000_0000_0000_0001;
		4'b0001: data = 16'b0000_0000_0000_0010;
		4'b0010: data = 16'b0000_0000_0000_0100;
		4'b0011: data = 16'b0000_0000_0000_1000;
		4'b0100: data = 16'b0000_0000_0001_0000;
		4'b0101: data = 16'b0000_0000_0010_0000;
		4'b0110: data = 16'b0000_0000_0100_0000;
		4'b0111: data = 16'b0000_0000_1000_0000;
		4'b1000: data = 16'b0000_0001_0000_0000;
		4'b1001: data = 16'b0000_0010_0000_0000;
		4'b1010: data = 16'b0000_0100_0000_0000;
		4'b1011: data = 16'b0000_1000_0000_0000;
		4'b1100: data = 16'b0001_0000_0000_0000;
		4'b1101: data = 16'b0010_0000_0000_0000;
		4'b1110: data = 16'b0100_0000_0000_0000;
		4'b1111: data = 16'b1000_0000_0000_0000;
		default: data = 16'bxxxx_xxxx_xxxx_xxxx;
	endcase
end

endmodule
