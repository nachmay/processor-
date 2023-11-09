module bin_to_gray(bin_in, gray_out);
	$parameter LEN = 4;  
	
	input wire bin_in [LEN-1:0];
	output wire gray_out[LEN-1:0];

	msb = bin_in[0];

	for ( int i =0; i<LEN-1; i++)
		assign out_gray[i+1] = out_gray[i]^out_gray[i+1];

	assign gray_out = {msb, gray_out[1:3];
	
endmodule
