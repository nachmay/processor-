
module counter(clk, rst, count);

	input clk, rst;
	output reg [7:0] count;

	always @(posedge clk or posedge rst)
		begin 
			if (rst)
			       count = 8'h0;

			else if (counter == 8'hff)			
				counter = 8'h0;

			else
				counter <= counter + 1'h1;
		end 
endmodule
