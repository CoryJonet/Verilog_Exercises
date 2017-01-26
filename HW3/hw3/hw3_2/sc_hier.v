module sc_hier (/*AUTOARG*/
   // Outputs
   out, 
   // Inputs
   ctr_rst
   );
   

   input ctr_rst;
   output [2:0] out;
   
   wire         err;
   wire         clk;
   wire         rst;
   
   clkrst clk_generator(.clk(clk), .rst(rst), .err(err) );
   sc sc0(/*AUTOINST*/
          // Outputs
          .out                          (out[2:0]),
          .err                          (err),
          // Inputs
          .clk                          (clk),
          .rst                          (rst),
          .ctr_rst                      (ctr_rst));
   
endmodule
