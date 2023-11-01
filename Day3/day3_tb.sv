module edges_detector_tb;
	
	reg d_in;
	reg clk;
	reg rst;
	reg q;

	wire risedge;
	wire falledge;

	initial  begin 
		$dumpfile("day3.vcd");
		$dumpvars;
	initial begin
		clk = 1'b0;
		rst = 1'b0;
		d_in = 1'b0;
		
	always 
		#5 clk = ~clk;
	
	edges_detector inst(.falledge(falledge), .risedge(risedge), .rst(rst), .clk(clk), .d_in(d_in));

	initial begin
		for(int i=0; i<=32; i++) begin
			#5 d_in = $random%2;
			end
		end
endmodule
		
