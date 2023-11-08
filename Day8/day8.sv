module decoder(in, one_hot);

	input [3:0] in;
	output reg  [15:0] one_hot;

	for (int i = 0; i<=15 ;i++) begin
		if (i == in)
			one_hot[i] = 1'b1;
		else one_hot[i] = 1'b0;
	end
endmodule 



	
