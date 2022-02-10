`timescale 1ns/1ns 
module tb_dff();
	reg clk = 0;
	reg d = 0;
	wire q;

	dff uut(.clk(clk),.d(d),.q(q));

	always
		#(5) clk <= !clk;
	always
		#(3) d <= !d;

	initial
	begin
		$dumpfile("tb_dff");
		$dumpvars(0,tb_dff);
		#500
		$finish;
	end
endmodule
