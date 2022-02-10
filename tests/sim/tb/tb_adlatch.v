`timescale 1ns/1ns 
module tb_adlatch();
	reg clk = 0;
	reg rst = 0;
	reg en = 0;
	reg d = 0;
	wire q;

	adlatch uut(.d(d),.rst(rst),.en(en),.q(q));

	always
		#(5) clk <= !clk;

	always
		#(3) d <= !d;

	initial
	begin
		$dumpfile("tb_adlatch");
		$dumpvars(0,tb_adlatch);
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
