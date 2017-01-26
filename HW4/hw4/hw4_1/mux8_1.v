module mux8_1(Out, S, InA, InB, InC, InD, InE, InF, InG, InH);

	output Out;
	input [2:0] S;
	input InA, InB, InC, InD, InE, InF, InG, InH;
	
	wire w1, w2;
	
	mux4_1 mux1(.Out(w2), .S(S[1:0]), .InA(InE), .InB(InF),
		.InC(InG), .InD(InH)); 
	mux4_1 mux0(.Out(w1), .S(S[1:0]), .InA(InA), .InB(InB), 
		.InC(InC), .InD(InD));
		
	mux2_1 mux2(.Out(Out), .S(S[2]), .InA(w1), .InB(w2));
	
endmodule
