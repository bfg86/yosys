`timescale 1ns/1ns 
module tb_sdff();
	reg clk = 0;
	reg rst = 0;
	reg d = 0;
	wire q;

	sdff uut(.clk(clk),.d(d),.rst(rst),.q(q));

	always
		#(5) clk <= !clk;

	always
		#(10) d <= !d;

	initial
	begin
		$dumpfile("tb_sdff");
		$dumpvars(0,tb_sdff);
		#10
		rst = 1;
		#15
		rst = 0;
		#50
		$finish;
	end
endmodule
