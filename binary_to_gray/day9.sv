module bin_to_gray(gray_out, bin_in);	
	
	input wire [3:0]bin_in;
	output wire [3:0] gray_out;

	assign gray_out[3] = bin_in[3l];
	genvar i;

	for ( int i =2; i>=0; i = i-1)
		assign gray_out[i] =bin_in [i]^bin_in[i+1];
		
endmodule
