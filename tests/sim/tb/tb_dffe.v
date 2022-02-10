`timescale 1ns/1ns 
module tb_dffe();
	reg clk = 0;
	reg en = 0;
	reg d = 0;
	wire q;

	dffe uut(.clk(clk),.d(d),.en(en),.q(q));

	always
		#(5) clk <= !clk;

	always
		#(3) d <= !d;

	initial
	begin
		$dumpfile("tb_dffe");
		$dumpvars(0,tb_dffe);
		#20
		en = 1;
		#50
		$finish;
	end
endmodule
