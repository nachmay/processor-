module shift_register (
	input wire clk,
	input wire rst,
	input x_i);

	output wire [3:0] out;
	
	always @(posedge clk or posedge rst)
		if (rst)
			out = 4'b0;
		else out = {x_i, out[3:1]};
endmodule 
	
