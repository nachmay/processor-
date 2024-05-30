
module DFF_tb;

	wire q_non_rst;
	wire q_async;
	wire  q_sync;

	reg clk;
	reg d_in;
	reg rst;	
	
	
	initial clk = 1'b0;
	
	always
		#5 clk = ~clk;

	DFF dff_tb(.q_non_rst(q_non_rst), .q_async(q_async), .q_sync(q_aync), .rst(rst), .d_in(d_in));

		initial
			$monitor("time=%d, q_non_rst=%b, q_async=%b, q_sync=%b, rst=%b, d_in=%b", $time, 
			q_non_rst, .q_async, .q_sync, rst,d_in);
		initial begin
			#5 d_in = 1'b1;
			rst = 1'b1;
			#5 rst = 1'b0;
			#10 rst = 1'b1;
			end 
endmodule 
	
