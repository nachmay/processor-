module decoder_tb;
	wire [3:0] in;
	reg [15:0] one_hot;

	decoder inst(.*);

	for (int i = 0 ; i<= 15; i++) begin 
		in = $random_range(4'hf);
	end 

	initial  begin 
		$dumpfile("day8.vcd");
		$dumvars;
	end
endmodule

		
       	       
