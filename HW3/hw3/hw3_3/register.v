module register(in, clk, rst, en, out);

	input [63:0] in;
	input clk, rst, en;
	output [63:0] out;

	reg_cell r0 [63:0](.q(out), .in(in), .en(en), .clk(clk), .rst(rst));

	
endmodule
