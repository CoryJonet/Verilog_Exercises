module mux2_1(Out, S, InA, InB);

	output Out;
	input S, InA, InB;
	
	wire W1, W2, W3;
	
	not1 NOT0(.out(W3), .in1(S));
	
	nor2 NOR0(.out(W1), .in1(InA), .in2(S)),
	     NOR1(.out(W2), .in1(InB), .in2(W3)),
	     NOR2(.out(Out), .in1(W1), .in2(W2));

endmodule 