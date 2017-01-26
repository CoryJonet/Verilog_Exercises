module register(in, clk, rst, en, out);

	input [15:0] in;
	input clk, rst, en;
	output [15:0] out;

	reg_cell r0(.q(out[0]), .in(in[0]), .en(en), .clk(clk), .rst(rst));
	reg_cell r1(.q(out[1]), .in(in[1]), .en(en), .clk(clk), .rst(rst));
	reg_cell r2(.q(out[2]), .in(in[2]), .en(en), .clk(clk), .rst(rst));
	reg_cell r3(.q(out[3]), .in(in[3]), .en(en), .clk(clk), .rst(rst));
	reg_cell r4(.q(out[4]), .in(in[4]), .en(en), .clk(clk), .rst(rst));
	reg_cell r5(.q(out[5]), .in(in[5]), .en(en), .clk(clk), .rst(rst));
	reg_cell r6(.q(out[6]), .in(in[6]), .en(en), .clk(clk), .rst(rst));
	reg_cell r7(.q(out[7]), .in(in[7]), .en(en), .clk(clk), .rst(rst));
	reg_cell r8(.q(out[8]), .in(in[8]), .en(en), .clk(clk), .rst(rst));
	reg_cell r9(.q(out[9]), .in(in[9]), .en(en), .clk(clk), .rst(rst));
	reg_cell r10(.q(out[10]), .in(in[10]), .en(en), .clk(clk), .rst(rst));
	reg_cell r11(.q(out[11]), .in(in[11]), .en(en), .clk(clk), .rst(rst));
	reg_cell r12(.q(out[12]), .in(in[12]), .en(en), .clk(clk), .rst(rst));
	reg_cell r13(.q(out[13]), .in(in[13]), .en(en), .clk(clk), .rst(rst));
	reg_cell r14(.q(out[14]), .in(in[14]), .en(en), .clk(clk), .rst(rst));
	reg_cell r15(.q(out[15]), .in(in[15]), .en(en), .clk(clk), .rst(rst));

	
endmodule
