module load_counter_tb;
	wire clk;
	wire rst;
	wire load_val;
	wire [3:0] load4bit;

	wire [3:0];

	load_counter inst(.*);

	initial begin
		clk = 0'b0;
		rst = 1'b1;
	end
	
	always
		#5 clk = ~clk;

	assign load4bit = 4'h3;
	#20 load = 1'b1;

	initial begin
		$dumpfile("day10.vcd");
		$dumpvars;
	end
endmodule



