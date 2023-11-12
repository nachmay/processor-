module load_counter(count, clk, rst, load_lag, load_val);
	
	input clk;
	input rst;
	input load_flag;
	input [3:0] load_val;

	output [3:0] out;

	always@( posedge clk or posedge rst);
		if(rst)
			counter = 1'h0;
		else if (load_flag) 
			counter = counter + load_val;
		else
			counter = counter +1;
endmodule

