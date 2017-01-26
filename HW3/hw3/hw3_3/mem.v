module mem(rdata, wdata, clk, we, waddr, raddr, rst);

	input clk, we, rst;
	input [1:0] waddr, raddr;
	input [63:0] wdata;
	output [63:0] rdata;
	
	//reg[63:0] mem[3:0];
	
	wire [3:0] w0;
   	wire [3:0] w1;
   	wire [63:0] reg_out[3:0];
	
	decoder2_4 d0(.Out(w0), .InA(waddr[0]), .InB(waddr[1]));
	assign w1 = w0 & {4{we}};
  	         
   	register r3(.in(wdata), .clk(clk), .rst(rst), .en(w1[0]), .out(reg_out[3]));
   	register r2(.in(wdata), .clk(clk), .rst(rst), .en(w1[1]), .out(reg_out[2]));
   	register r1(.in(wdata), .clk(clk), .rst(rst), .en(w1[2]), .out(reg_out[1]));
   	register r0(.in(wdata), .clk(clk), .rst(rst), .en(w1[3]), .out(reg_out[0]));
	
	assign rdata = 	(raddr == 2'b00) ? reg_out[0] :
			(raddr == 2'b01) ? reg_out[1] :
			(raddr == 2'b10) ? reg_out[2] :
			 reg_out[3];
	
	
endmodule
