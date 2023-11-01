module edges_detector(risedge, falledge, clk, rst, d_in);
	
	input clk;
	input rst;
	input d_in;

	wire q;

	output risedge;
	output falledge;
	
	always @(posedge clk or posedge rst)
		if (rst)
			q =1'b0;
		else
			q = d_in;
	
		
	assign risedge = ~q & d_in;
	assign falledge = q & ~d_in;

endmodule

