module sc( clk, rst, ctr_rst, out, err);
   input clk;
   input rst;
   input ctr_rst;
   output [2:0] out;
   output reg err;

   // your code
   wire [2:0] state;
   reg [2:0] next_state;
   
   assign out = state;
   
   dff flop[2:0](.d(next_state), .q(state), .clk(clk), .rst(rst));
   
   always @(*)
   	begin
   		err = 1'b0;
		casex({state})
		3'b000: begin
			if(ctr_rst)
				next_state = 3'b000;
			else
				next_state = 3'b001;			
		end
		3'b001: begin
			if(ctr_rst)
				next_state = 3'b000;
			else
				next_state = 3'b010;
		end
		3'b010: begin
			if(ctr_rst)
				next_state = 3'b000;
			else
				next_state = 3'b011;
		end
		3'b011: begin
			if(ctr_rst)
				next_state = 3'b000;
			else
				next_state = 3'b100;
		end
		3'b100: begin
			if(ctr_rst)
				next_state = 3'b000;
			else
				next_state = 3'b101;
		end
		3'b101: begin
			if(ctr_rst)
				next_state = 3'b000;
			else
				next_state = 3'b101;
		end
		
		default: begin
			next_state = {3{1'bx}};
			err = 1'b1;
		end
		endcase
	end
endmodule
