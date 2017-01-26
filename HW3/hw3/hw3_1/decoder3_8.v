module decoder3_8(Out, InA, InB, InC);

	output [7:0] Out;
	input InA, InB, InC;
	
	assign Out[7] = (~InC) & (~InB) & (~InA);
	assign Out[6] = (~InC) & (~InB) & (InA);
	assign Out[5] = (~InC) & (InB) & (~InA);
	assign Out[4] = (~InC) & (InB) & (InA);
	assign Out[3] = (InC) & (~InB) & (~InA);
	assign Out[2] = (InC) & (~InB) & (InA);
	assign Out[1] = (InC) & (InB) & (~InA);
	assign Out[0] = (InC) & (InB) & (InA);
	
	
	
endmodule 