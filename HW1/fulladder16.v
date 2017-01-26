module fulladder16(SUM, CO, A, B);
	          
	input [15:0] A, B;
	output [15:0] SUM;
	output CO;
			
	localparam GND = 1'b0;
	wire C1, C2, C3;
	
	fulladdr4 RCA0(.SUM(SUM[3:0]), .CO(C1), 
		       .A(A[3:0]), .B(B[3:0]), 
		       .CI(GND)),
	          RCA1(.SUM(SUM[7:4]), .CO(C2), 
		       .A(A[7:4]), .B(B[7:4]), 
		       .CI(C1)),
	          RCA2(.SUM(SUM[11:8]), .CO(C3), 
		       .A(A[11:8]), .B(B[11:8]), 
		       .CI(C2)),
	          RCA3(.SUM(SUM[15:12]), .CO(CO), 
		       .A(A[15:12]), .B(B[15:12]), 
		       .CI(C3));

endmodule