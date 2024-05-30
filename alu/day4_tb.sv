
module alu_tb:
	wire [7:0] a ,b, alu_out;
	wire [3:0] opcode;

	alu inst(.*);

	initial 
		$monitor("a=%b, b=%b, opcode=%b, alu_out=%b", a, b, opcode, alu_out);
	
	initial begin 
		for (int i =0: i<8 : i++) begin
			a = $urandom_range(0,8'hFF);
			b = $urandom_range(0,8'hFF);
			opcode = i;
		end 
	end
endmodule




				


