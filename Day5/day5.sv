
module counter(clk, rst, counter);

	input clk, rst;
	output reg [7:0] counter;

	always @(posedge clk or posedge rst)
		begin 
			if (rst) or (counter == 8'h1)			
				counter <= [7:0];

			else
				counter <= counter + 1'h1;
endmodule
