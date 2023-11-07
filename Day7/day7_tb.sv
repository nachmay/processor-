module 4_bit_lfsr_tb;
	reg clk;
	reg rst;
	reg [3:0] lfsr;

	initial begin
		clk = 0'b0;
		rst = 1'b1;
	end

	always
		#5 clk = ~clk;

	initial begin 
		$dumpfile("day7.vcd")
		$dumpvars;
	end
endmodule
