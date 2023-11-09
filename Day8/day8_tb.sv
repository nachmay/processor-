module decoder_tb;
	wire [3:0] in;
	wire [15:0] one_hot;

	decoder inst(.*);

	initial begin
	for (int i = 0 ; i<= 15; i++)
		in = $urandom_range(4'hf);
		#5 
	end 

	initial  begin 
		$dumpfile("day8.vcd");
		$dumpvars;
	end
endmodule

		
       	      

