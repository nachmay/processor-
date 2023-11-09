module bin_to_gray_tb;
	wire bin_in [3:0];
	wire gray_out [3:0];

	bin_to_gray inst(.*);

	initial 
		for (int i = 0; i<=4; i++) 
			#5 bin in = $urandom_range(0, 4'hf);
endmodule


