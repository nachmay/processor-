
module counter_tb;

	wire clk;
	wire rst;
	reg [7:0] count;

	counter inst(.*);

	initial begin
		clk = 1'b0;
		rst = 1'b1;
		#5 rst = 1'b0;
	end


	always
		#5 clk = ~clk;


	initial begin 
		$dumpfile("day5.vcd");
		$dumpvars(0, counter_tb);
		#1000 $finish
	end

endmodule





