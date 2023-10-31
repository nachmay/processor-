

module mux2to1_tb;
	reg  [7:0] a, b;
	reg sel ;
	wire[7:0] out;
	
mux2to1(.a(a), .b(b), .sel(sel), out(out));
	initial 
		$monitor($time, "a = %b, b = %b, sel = %b, out = %b")
	initial 
		begin
		for(int i = 0; i<=10; i++) 
			begin
			a = $urandom_range(0, 8'hFF);
			b = $urandom_range(0, 8'hFF);
			sel = $random%2;
			#5;
			end
		end





