
module mux2to1_tb;
	reg [7:0] a, b;
	reg sel ;
	wire [7:0]out;

	mux2to1 show(.a(a), .b(b), .sel(sel), .out(out));

	initial
		$monitor("time=%d, a=%b, b=%b, sel=%b, out=%b", $time, a, b, sel, out);
	initial begin 
		for (int i=0; i<=10; i++)begin
			a = $urandom_range(0, 8'hFF);
			b = $urandom_range(0, 8'hFF);
			sel = $random%2;
			#5;
		end
	end
endmodule	

		
