
module n
mux2to1(out, a, b, sel);
	input [7:0] a, b;
	input sel;
	output [7:0] out;
	assign out = sel ? a :b;
endmodule
