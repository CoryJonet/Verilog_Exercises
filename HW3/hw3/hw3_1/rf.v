module rf (
           // Outputs
           read1data, read2data, err,
           // Inputs
           clk, rst, read1regsel, read2regsel, writeregsel, writedata, write
           );
   input clk, rst;
   input [2:0] read1regsel;
   input [2:0] read2regsel;
   input [2:0] writeregsel;
   input [15:0] writedata;
   input        write;

   output [15:0] read1data;
   output [15:0] read2data;
   output        err;

   // your code
   wire [7:0] w1;
   wire [7:0] w2;
   wire [15:0] w3, w4, w5, w6, w7, w8, w9, w10;
   
   decoder3_8 d0(.Out(w1), .InA(writeregsel[0]), .InB(writeregsel[1]),
   	.InC(writeregsel[2]));
   	
   assign w2 = w1 & {8{write}};
   
   register r7(.in(writedata), .clk(clk), .rst(rst), .en(w2[0]), .out(w10));
   register r6(.in(writedata), .clk(clk), .rst(rst), .en(w2[1]), .out(w9));
   register r5(.in(writedata), .clk(clk), .rst(rst), .en(w2[2]), .out(w8));
   register r4(.in(writedata), .clk(clk), .rst(rst), .en(w2[3]), .out(w7));
   register r3(.in(writedata), .clk(clk), .rst(rst), .en(w2[4]), .out(w6));
   register r2(.in(writedata), .clk(clk), .rst(rst), .en(w2[5]), .out(w5));
   register r1(.in(writedata), .clk(clk), .rst(rst), .en(w2[6]), .out(w4));
   register r0(.in(writedata), .clk(clk), .rst(rst), .en(w2[7]), .out(w3));
   
   eightmux8_1 mux1(.Out(read2data), .S(read2regsel), .InA(w3), .InB(w4),
   	.InC(w5), .InD(w6), .InE(w7), .InF(w8), .InG(w9), .InH(w10));
   	
   eightmux8_1 mux0(.Out(read1data), .S(read1regsel), .InA(w3), .InB(w4),
   	.InC(w5), .InD(w6), .InE(w7), .InF(w8), .InG(w9), .InH(w10));
	
endmodule
