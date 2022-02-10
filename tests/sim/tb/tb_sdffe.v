`timescale 1ns/1ns 
module tb_sdffe();
	reg clk = 0;
	reg rst = 0;
	reg d = 0;
	reg en = 0;
	wire q;

	sdffe uut(.clk(clk),.d(d),.rst(rst),.en(en),.q(q));

	always
		#(5) clk <= !clk;

	always
		#(10) d <= !d;

	initial
	begin
		$dumpfile("tb_sdffe");
		$dumpvars(0,tb_sdffe);
		#10
		rst = 1;
		#15
		rst = 0;
		#10
		en = 1;
		rst = 1;
		#15
		rst = 0;
		#50
		$finish;
	end
endmodule
