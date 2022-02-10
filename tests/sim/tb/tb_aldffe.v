`timescale 1ns/1ns 
module tb_aldffe();
	reg clk = 0;
	reg aload = 0;
	reg [0:3] d  = 4'b0000;
	reg [0:3] ad = 4'b1010;
	reg en = 0;
	wire [0:3] q;

	aldffe uut(.clk(clk),.d(d),.ad(ad),.aload(aload),.en(en),.q(q));

	always
		#(5) clk <= !clk;

	always
		#(3) d <= !d;

	initial
	begin
		$dumpfile("tb_aldffe");
		$dumpvars(0,tb_aldffe);
		#22
		aload = 1;
		#10
		aload = 0;
		#22
		en = 1;
		aload = 1;
		#10
		aload = 0;
		#50
		$finish;
	end
endmodule
