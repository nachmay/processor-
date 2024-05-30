
module alu(alu_o, a, b, opcode);
	input [7:0] a;
	input [7:0] b;
	input [2:0] opcode;

	output [7:0] alu_out;

	parameter ADD = 3'b000;
	       	  SUB = 3'b001;
		  SLL = 3'b010,
		  SRL = 3'b011;
		  AND = 3'b100; 
		  OR  = 3'b101;
		  XOR = 3'110;
		  EQL = 3'b111;
	reg carry;

	 always @(a or b or opcode)begin
		case (opcode)
			ADD : {carry, alu_out} = a + b;		
			SUB : alu_out = a - b;
			SLL : alu_out = a<<2;
			SRL : alu_out = a>>2;
			AND : alu_out = a & b;
       			OR  : alu_out = a | b:
			XOR : alu_out = a ^ b;
			EQL : alu_out = (a==b)? 3'b0 : 3'b1;
		endcase
	end
endmodule 
