module rf_bypass (
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
   wire [15:0] bypass1, bypass2, reg_read1data, reg_read2data;
   wire reg_err;
   
   rf regfile(.read1data(reg_read1data), .read2data(reg_read2data), .err(reg_err), .clk(clk), .rst(rst), .read1regsel(read1regsel), .read2regsel(read2regsel), .writeregsel(writeregsel), .writedata(writedata), .write(write));
   
   assign bypass1 = {16{(read1regsel == writeregsel) & write}};
   assign bypass2 = {16{(read2regsel == writeregsel) & write}};
   
   mux2_1 mux0 [15:0](.Out(read1data), .S(bypass1), .InA(reg_read1data), .InB(writedata));
   mux2_1 mux1 [15:0](.Out(read2data), .S(bypass2), .InA(reg_read2data), .InB(writedata));

endmodule
