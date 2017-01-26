module mux4_1(Out, S, InA, InB, InC, InD);
	      
	input [1:0] S;
	input InA, InB, InC, InD;
	output Out;
		 

	wire W1, W2;
	
	mux2_1 mux0(.Out(W1), .S(S[0]),
		    .InA(InA), .InB(InB));
	
	mux2_1 mux1(.Out(W2), .S(S[0]),
		    .InA(InC), .InB(InD));
			
	mux2_1 mux2(.Out(Out), .S(S[1]),
		    .InA(W1), .InB(W2));

endmodule
