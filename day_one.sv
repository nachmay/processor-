
module nux2to1(out, A, B, sel);
	input A, B [7:0];
	input sel;
	output out;
	assign out = sel ? A : B;
endmodule
