module fifo_hier(/*AUTOARG*/
   // Outputs
   data_out, fifo_empty, fifo_full,
   // Inputs
   data_in, data_in_valid, pop_fifo
   );

   input [63:0] data_in;
   input        data_in_valid;
   input        pop_fifo;

   output [63:0] data_out;
   output        fifo_empty;
   output        fifo_full;

   clkrst clk_generator(.clk(clk),
                        .rst(rst),
                        .err(err) );

   fifo fifo0(/*AUTOINST*/
              // Outputs
              .data_out                 (data_out[63:0]),
              .fifo_empty               (fifo_empty),
              .fifo_full                (fifo_full),
              .err                      (err),
              // Inputs
              .data_in                  (data_in[63:0]),
              .data_in_valid            (data_in_valid),
              .pop_fifo                 (pop_fifo),
              .clk                      (clk),
              .rst                      (rst));




endmodule