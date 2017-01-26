module fulladdr4(SUM, CO, A, B, CI);
		 
	input [3:0] A, B;
	input CI;
	output [3:0] SUM;
	output CO;
			 
	wire C1, C2, C3;
	
	fulladdr1 FA0(.S(SUM[0]), .Cout(C1), 
	              .A(A[0]), .B(B[0]), 
	              .Cin(CI)),
		  FA1(.S(SUM[1]), .Cout(C2), 
		      .A(A[1]), .B(B[1]), 
		      .Cin(C1)),
		  FA2(.S(SUM[2]), .Cout(C3), 
		      .A(A[2]), .B(B[2]), 
		      .Cin(C2)),
		  FA3(.S(SUM[3]), .Cout(CO), 
		      .A(A[3]), .B(B[3]), 
		      .Cin(C3));

endmodule
