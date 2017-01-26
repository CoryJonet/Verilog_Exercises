module reg_cell(q, in, en, clk, rst);

	output q;
	input in, en, clk, rst;
	
	wire w1;
	
	wire            state;

    	assign q = state;
    	
    	mux2_1 mux0(.Out(w1), .S(en), .InA(state), .InB(in));
    	
	dff dff0(.q(state), .d(w1), .clk(clk), .rst(rst));

endmodule
