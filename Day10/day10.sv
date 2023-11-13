module load_counter(count, clk, rst, load_flag, load_val);
	
	input clk;
	input rst;
	input load_flag;
	input [3:0] load_val;

	output reg [3:0] count;

	always@( posedge clk or posedge rst);
		if(rst)
			count = 4'h0;
		else if (load_flag) 
			count = count + load_val;
		else
			count = count +1;
endmodule




