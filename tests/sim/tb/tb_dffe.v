`timescale 1ns/1ns 
module tb_dffe();
	reg clk = 0;
	reg en = 0;
	wire q;

	dffe uut(.clk(clk),.en(en),.q(q));

	always
		#(5) clk <= !clk;

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
