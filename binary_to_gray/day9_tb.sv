module bin_to_gray_tb;
	reg  [3:0] bin_in;
	wire [3:0] gray_out;

	bin_to_gray inst(.*);

	initial begin
		repeat(4)
			#5 bin in = $urandom_range(4'hf);
	end

	initial begin
		$dumpfile("day9.vcd");
		$dumpvars;
	end
endmodule


