module eightmux8_1(Out, S, InA, InB, InC, InD, InE, InF, InG, InH);
		       
	input [2:0] S;
	input [15:0] InA, InB, InC, InD, InE, InF, InG, InH;
	output [15:0] Out;
	
	mux8_1 mux15(.Out(Out[15]), .S(S[2:0]), .InA(InA[15]), .InB(InB[15]), .InC(InC[15]),
		.InD(InD[15]), .InE(InE[15]), .InF(InF[15]), .InG(InG[15]),
		.InH(InH[15]));
		
	mux8_1 mux14(.Out(Out[14]), .S(S[2:0]), .InA(InA[14]), .InB(InB[14]), .InC(InC[14]),
		.InD(InD[14]), .InE(InE[14]), .InF(InF[14]), .InG(InG[14]),
		.InH(InH[14]));
		
	mux8_1 mux13(.Out(Out[13]), .S(S[2:0]), .InA(InA[13]), .InB(InB[13]), .InC(InC[13]),
		.InD(InD[13]), .InE(InE[13]), .InF(InF[13]), .InG(InG[13]),
		.InH(InH[13]));
		
	mux8_1 mux12(.Out(Out[12]), .S(S[2:0]), .InA(InA[12]), .InB(InB[12]), .InC(InC[12]),
		.InD(InD[12]), .InE(InE[12]), .InF(InF[12]), .InG(InG[12]),
		.InH(InH[12]));
		
	mux8_1 mux11(.Out(Out[11]), .S(S[2:0]), .InA(InA[11]), .InB(InB[11]), .InC(InC[11]),
		.InD(InD[11]), .InE(InE[11]), .InF(InF[11]), .InG(InG[11]),
		.InH(InH[11]));
		
	mux8_1 mux10(.Out(Out[10]), .S(S[2:0]), .InA(InA[10]), .InB(InB[10]), .InC(InC[10]),
		.InD(InD[10]), .InE(InE[10]), .InF(InF[10]), .InG(InG[10]),
		.InH(InH[10]));
		
	mux8_1 mux9(.Out(Out[9]), .S(S[2:0]), .InA(InA[9]), .InB(InB[9]), .InC(InC[9]),
		.InD(InD[9]), .InE(InE[9]), .InF(InF[9]), .InG(InG[9]),
		.InH(InH[9]));
		
	mux8_1 mux8(.Out(Out[8]), .S(S[2:0]), .InA(InA[8]), .InB(InB[8]), .InC(InC[8]),
		.InD(InD[8]), .InE(InE[8]), .InF(InF[8]), .InG(InG[8]),
		.InH(InH[8]));
		
	mux8_1 mux7(.Out(Out[7]), .S(S[2:0]), .InA(InA[7]), .InB(InB[7]), .InC(InC[7]),
		.InD(InD[7]), .InE(InE[7]), .InF(InF[7]), .InG(InG[7]),
		.InH(InH[7]));
		
	mux8_1 mux6(.Out(Out[6]), .S(S[2:0]), .InA(InA[6]), .InB(InB[6]), .InC(InC[6]),
		.InD(InD[6]), .InE(InE[6]), .InF(InF[6]), .InG(InG[6]),
		.InH(InH[6]));
		
	mux8_1 mux5(.Out(Out[5]), .S(S[2:0]), .InA(InA[5]), .InB(InB[5]), .InC(InC[5]),
		.InD(InD[5]), .InE(InE[5]), .InF(InF[5]), .InG(InG[5]),
		.InH(InH[5]));
		
	mux8_1 mux4(.Out(Out[4]), .S(S[2:0]), .InA(InA[4]), .InB(InB[4]), .InC(InC[4]),
		.InD(InD[4]), .InE(InE[4]), .InF(InF[4]), .InG(InG[4]),
		.InH(InH[4]));
		
	mux8_1 mux3(.Out(Out[3]), .S(S[2:0]), .InA(InA[3]), .InB(InB[3]), .InC(InC[3]),
		.InD(InD[3]), .InE(InE[3]), .InF(InF[3]), .InG(InG[3]),
		.InH(InH[3]));
	
	mux8_1 mux2(.Out(Out[2]), .S(S[2:0]), .InA(InA[2]), .InB(InB[2]), .InC(InC[2]),
		.InD(InD[2]), .InE(InE[2]), .InF(InF[2]), .InG(InG[2]),
		.InH(InH[2]));
		
	mux8_1 mux1(.Out(Out[1]), .S(S[2:0]), .InA(InA[1]), .InB(InB[1]), .InC(InC[1]),
		.InD(InD[1]), .InE(InE[1]), .InF(InF[1]), .InG(InG[1]),
		.InH(InH[1]));
		
	mux8_1 mux0(.Out(Out[0]), .S(S[2:0]), .InA(InA[0]), .InB(InB[0]), .InC(InC[0]),
		.InD(InD[0]), .InE(InE[0]), .InF(InF[0]), .InG(InG[0]),
		.InH(InH[0]));
			
endmodule
