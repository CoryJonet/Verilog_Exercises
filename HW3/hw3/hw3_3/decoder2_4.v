module decoder2_4(Out, InA, InB);

	output [3:0] Out;
	input InA, InB;
	
	assign Out[3] = (~InB) & (~InA);
	assign Out[2] = (~InB) & (InA);
	assign Out[1] = (InB) & (~InA);
	assign Out[0] = (InB) & (InA);
	
	
	
endmodule 