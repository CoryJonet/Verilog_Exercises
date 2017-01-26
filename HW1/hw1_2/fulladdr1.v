module fulladdr1(S, Cout, A, B, Cin);

	output S, Cout;
	input A, B, Cin;
	
	wire W1, W2, W3;
	
	xor3 xor0(.out(S),
		  .in1(A), 
		  .in2(B),
		  .in3(Cin));
		  
	nor2 nor0(.out(W1), .in1(A), .in2(B)),
	     nor1(.out(W2), .in1(A), .in2(C)),
	     nor2(.out(W3), .in1(B), .in2(C));
	     
	nor3 nor3(.out(Cout), 
		  .in1(W1), 
		  .in2(W2), 
		  .in3(W3));
		  
endmodule