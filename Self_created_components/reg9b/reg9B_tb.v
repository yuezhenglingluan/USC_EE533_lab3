// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps
`include "reg9B.vf"
module reg9B_tb();

	reg ce, clk, clr;
	reg [71:0] d;
	wire [71:0] q;
	
	reg9B uut (.ce(ce), .clk(clk), .clr(clr), .d(d), .q(q));
	
	
	initial clk = 1'b0;
   always #50 clk = ~clk;
	
	initial begin
		d = 72'b1111_1111;
		clr = 1'b1;
		ce = 1'b0;
		#500 ce = 1'b1;
		#100 clr = 1'b0;
		#100 d = 72'b1010_1010;
		#100 $stop;
	end

endmodule