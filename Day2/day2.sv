
module DFF(q_non_rst, q_sync, q_async,rst, d_in, clk);

	input d_in;
	input clk;
	input rst
	output reg q_not_sync;
	output reg q_sync;
	output reg q_sync:
	
	always@(posedge clk)
		q_non_rst <= d_in;

	always@(posedge clk or posedge rst)
		if (rst) 
			q_async <= 1'b0;
		else
		       	q_async <= din;

	always@(posedge clk)
		if (rst)
			q_sync <=1'b0;
		else 
			q_sync <= d_in;
endmodule


		
	
