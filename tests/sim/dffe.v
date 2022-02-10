module dffe( input clk, en, output reg q );
	always @( posedge clk )
		if ( en )
			q <= ~q;
endmodule
