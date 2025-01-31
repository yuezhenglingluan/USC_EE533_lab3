// Verilog Test Fixture Template

  `timescale 1 ns / 1 ps
`include "detect7B.vf"
module detect7b_tb();
	reg [63:0]hwregA;
	reg [71:0] pipe1;
	reg clk, ce, match_en, mrst;
	wire match;
	wire [71:0] temp_out;
	
	detect7B uut(.hwregA(hwregA), .pipe1(pipe1), .clk(clk), .ce(ce), .match_en(match_en), .mrst(mrst), .match(match), .pipe0(temp_out));
	
	initial clk = 1'b0;
   always #50 clk = ~clk;
	
	initial begin
		hwregA = 64'b0111111100000000000000000000000000000000000000000000000000000111;
		ce = 0;
		match_en = 0;
		mrst = 1'b1;
		#100 mrst = 0;
		#100 ce = 1'b1; 
		pipe1 = 72'b0000_0000_0111111100000000000000000000000000000000000000000000000000000111;
		#100 match_en = 1'b1;
		#200
		pipe1 = 72'b0;
		#100 $stop;
	
	end

endmodule