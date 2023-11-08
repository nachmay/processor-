
module 4_bit_lfsr(
	input wire clk, 
	input wire rst, 
	output wire [3:0] lfsr )

	
	always@(posedge clk or posedge rst) begin 
		if (rst)
			lfsr = 4'hf;
		else
			lfsr = {lfsr[2]^lfsr[0],lfsr[1:3]}; 
	end

endmodule

		


