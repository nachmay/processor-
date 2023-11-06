
module counter_tb;

	wire clk;
	wire rst;
	reg [7:0] counter;

	counter inst(.*)

	initial clk = 1'b0;

	always
		#5 clk = ~clk;


	initial begin 
		$dumpfile("day5.sv");
		$dumpvars(0, dat5_tb);
	end

endmodule




