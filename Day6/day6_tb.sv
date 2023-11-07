module shift_register_tb;
	wire clk;
	wire rst;
	wire x_i;

	shift_register inst(.*)

	initial begin
		clk = 1'b0;
		rst = 1'b0;
		end

	always
		#5 clk = ~clk;

	for (int i = 1'b0; i <=10 ; i++) begin
		x_i = $random%2;
	end
	
	initial begin
		$dumpfile("day6.vcd");
		$dumpvars(2, day6_tb);
	end

endmodule



