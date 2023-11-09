module decoder(in, one_hot);

	input [3:0] in;
	output [15:0] one_hot;

	assign one_hot = 1'1<<in;
	
endmodule 



	
