`timescale 1ns/1ns 
module tb_dlatch();
	reg clk = 0;
	reg en = 0;
	wire q;

	dlatch uut(.d(clk),.en(en),.q(q));

	always
		#(5) clk <= !clk;

	initial
	begin
		$dumpfile("tb_dlatch");
		$dumpvars(0,tb_dlatch);
		#50
		en = 1;
		#50
		$finish;
	end
endmodule
