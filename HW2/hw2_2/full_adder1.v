module full_adder1(a, b, cin, s, p, g);

	input a, b, cin;
	output s, p, g;
	
	wire W1, W2, W3;
	
	xor3 xor0(.out(s),
		  .in1(a), 
		  .in2(b),
		  .in3(cin));
		  
	nor2 nor0(.out(W1), .in1(a), .in2(b)),
	     nor1(.out(W2), .in1(a), .in2(c)),
	     nor2(.out(W3), .in1(b), .in2(c));
	     
	nor3 nor3(.out(Cout), 
		  .in1(W1), 
		  .in2(W2), 
		  .in3(W3));

endmodule

