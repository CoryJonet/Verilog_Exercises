module shifter (In, Cnt, Op, Out);
   
   input [15:0] In;
   input [3:0]  Cnt;
   input [1:0]  Op;
   output [15:0] Out;

   /*
   Your code goes here
   */
   
   wire [15:0] op_res;
   wire [15:0] s0_s2, s2_s4, s4_s8;
   
   mux4_1 op_mux0(.S(Op), .InA(In[15]),
   	       .InB(1'b0), .InC(In[1]), .InD(In[1]), .Out(op_res[0]));
   	       
   mux4_1 op_mux1(.S(Op), .InA(In[0]),
   	       .InB(In[0]), .InC(In[2]), .InD(In[2]), .Out(op_res[1]));
   
   mux4_1 op_mux2(.S(Op), .InA(In[1]),
   	       .InB(In[1]), .InC(In[3]), .InD(In[3]), .Out(op_res[2]));
   
   mux4_1 op_mux3(.S(Op), .InA(In[2]),
   	       .InB(In[2]), .InC(In[4]), .InD(In[4]), .Out(op_res[3]));
   
   mux4_1 op_mux4(.S(Op), .InA(In[3]),
   	       .InB(In[3]), .InC(In[5]), .InD(In[5]), .Out(op_res[4]));
   
   mux4_1 op_mux5(.S(Op), .InA(In[4]),
   	       .InB(In[4]), .InC(In[6]), .InD(In[6]), .Out(op_res[5]));
   
   mux4_1 op_mux6(.S(Op), .InA(In[5]),
   	       .InB(In[5]), .InC(In[7]), .InD(In[7]), .Out(op_res[6]));
   
   mux4_1 op_mux7(.S(Op), .InA(In[6]),
   	       .InB(In[6]), .InC(In[8]), .InD(In[8]), .Out(op_res[7]));
   
   mux4_1 op_mux8(.S(Op), .InA(In[7]),
   	       .InB(In[7]), .InC(In[9]), .InD(In[9]), .Out(op_res[8]));
   
   mux4_1 op_mux9(.S(Op), .InA(In[8]),
   	       .InB(In[8]), .InC(In[10]), .InD(In[10]), .Out(op_res[9]));
   
   mux4_1 op_mux10(.S(Op), .InA(In[9]),
   	       .InB(In[9]), .InC(In[11]), .InD(In[11]), .Out(op_res[10]));
   
   mux4_1 op_mux11(.S(Op), .InA(In[10]),
   	       .InB(In[10]), .InC(In[12]), .InD(In[12]), .Out(op_res[11]));
   
   mux4_1 op_mux12(.S(Op), .InA(In[11]),
   	       .InB(In[11]), .InC(In[13]), .InD(In[13]), .Out(op_res[12]));
   
   mux4_1 op_mux13(.S(Op), .InA(In[12]),
   	       .InB(In[12]), .InC(In[14]), .InD(In[14]), .Out(op_res[13]));
   
   mux4_1 op_mux14(.S(Op), .InA(In[13]),
   	       .InB(In[13]), .InC(In[15]), .InD(In[15]), .Out(op_res[14]));
   
   mux4_1 op_mux15(.S(Op), .InA(In[14]),
   	       .InB(In[14]), .InC(In[15]), .InD(1'b0), .Out(op_res[15]));

   mux2_1 reg_mux[15:0] (.Out(s0_s2), .S(Cnt[0]), .InA(In), .InB(op_res));  
   	       
   shifter2 s2 (.Out(s2_s4), .In(s0_s2), .Op(Op), .Cnt(Cnt));

   shifter4 s4 (.Out(s4_s8), .In(s2_s4), .Op(Op), .Cnt(Cnt));

   shifter8 s8 (.Out(Out), .In(s4_s8), .Op(Op), .Cnt(Cnt));  
   
 
   
endmodule

