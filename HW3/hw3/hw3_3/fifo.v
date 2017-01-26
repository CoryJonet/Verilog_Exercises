module fifo(/*AUTOARG*/
   // Outputs
   data_out, fifo_empty, fifo_full, err,
   // Inputs
   data_in, data_in_valid, pop_fifo, clk, rst
   );
   input [63:0] data_in;
   input        data_in_valid;
   input        pop_fifo;

   input        clk;
   input        rst;
   output [63:0] data_out;
   output        fifo_empty;
   output        fifo_full;
   output        err;


   //your code here
   wire [2:0] counter;
   
   reg [2:0] counter_in;
   //reg[63:0] fifo_mem[3:0];
   wire [63:0] mem_out;
   reg [63:0] fifo_out;
   wire [1:0] rd_ptr, wr_ptr;
   reg [1:0] rd_ptr_in, wr_ptr_in;
   
   mem fifo_mem(.rdata(mem_out), .wdata(data_in), .clk(clk), 
			.we(data_in_valid & !fifo_full), .waddr(wr_ptr), 
			.raddr(rd_ptr), .rst(rst));

   assign fifo_empty = (counter == 0);
   assign fifo_full = (counter == 4);
   assign data_out = fifo_out;   

   always @(*) begin
   	counter_in = counter;
   	
	casex({rst, fifo_full, data_in_valid, fifo_empty, pop_fifo})
		5'b1_xxxx: begin
			counter_in = 3'b000;	
		end
		5'b0_0101: begin
			counter_in = counter;
		end
		5'b0_01xx: begin
			counter_in = counter + 1;
		end
		5'b0_xx01: begin
			counter_in = counter - 1;
		end
	
	endcase
   end
   
   dff counter_flop[2:0](.d(counter_in), .q(counter), .clk(clk), .rst(rst));

   always @(*) begin
   	fifo_out = fifo_out;
   	
	casex({rst, fifo_empty})
		2'b1_x: begin
			fifo_out = 64'h0000_0000_0000_0000;	
		end
		2'b0_0: begin
			fifo_out = mem_out;
		end
	
	endcase
   end
   
   //assign fifo_out = 
   //dff fifo_out_flop[63:0](.d(fifo_in), .q(fifo_out), .clk(clk), .rst(rst));

   always @(*) begin
   	rd_ptr_in = rd_ptr;
   	
	casex({rst, fifo_empty, pop_fifo})
		3'b1_xx: begin
			rd_ptr_in = 2'b00;	
		end
		3'b0_01: begin
			rd_ptr_in = rd_ptr + 1;
		end
	
	endcase
   end

   dff rd_ptr_flop[1:0](.d(rd_ptr_in), .q(rd_ptr), .clk(clk), .rst(rst));

   always @(*) begin
   	wr_ptr_in = wr_ptr;
   	
	casex({rst, fifo_full, data_in_valid})
		3'b1_xx: begin
			wr_ptr_in = 2'b00;	
		end
		3'b0_01: begin
			wr_ptr_in = wr_ptr + 1;
		end
	
	endcase
   end
   
   dff wr_ptr_flop[1:0](.d(wr_ptr_in), .q(wr_ptr), .clk(clk), .rst(rst));
   
   /*
   assign fifo_empty = (counter == 0);
   assign fifo_full = (counter == 4);
   assign data_out = fifo_out;
   
   
   assign counter_in = rst ? (3'b000):
   			( (!fifo_full && data_in_valid) && (!fifo_empty && pop_fifo) )? counter:
   			( !fifo_full && data_in_valid ) ? counter + 1 :
   			( !fifo_empty && pop_fifo ) ? counter - 1:
   			counter;
   dff counter_flop[2:0](.d(counter_in), .q(counter), .clk(clk), .rst(rst));
  
  
   
   assign fifo_in = rst ? (64'h0000_0000_0000_0000):
   			( pop_fifo && !fifo_empty )? fifo_mem[rd_ptr]:
   			fifo_out;
   			
   dff fifo_out_flop[63:0](.d(fifo_in), .q(fifo_out), .clk(clk), .rst(rst));
   
   
   
   assign rd_ptr_in = rst ? 2'b00:
   			( !fifo_empty && pop_fifo ) ? rd_ptr + 1:
   			rd_ptr;
   
   dff rd_ptr_flop[1:0](.d(rd_ptr_in), .q(rd_ptr), .clk(clk), .rst(rst));
   
   
   
   assign wr_ptr_in = rst ? 2'b00:
   			( !fifo_full && data_in_valid ) ? wr_ptr + 1:
   			wr_ptr;
   
   dff wr_ptr_flop[1:0](.d(wr_ptr_in), .q(wr_ptr), .clk(clk), .rst(rst));
   */
endmodule
