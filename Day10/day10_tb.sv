module load_counter_tb;
	reg clk;
	reg rst;
	reg load_flag;
	reg [3:0] load_val;

	reg [3:0] count;

	load_counter inst(.*);

	initial begin
		clk = 0'b0;
		rst = 1'b1;
		load_flag = 1b0;
		#10 rst = 1'b0;
		#20 load_flag = 1'b1; load_val = 4'h4;
		#10 load_flag = 1'b0;
	end
	
	always
		#5 clk = ~clk;

	
	

	initial begin
		$dumpfile("day10.vcd");
		$dumpvars;
		#1000 $finish;
	end
endmodule




