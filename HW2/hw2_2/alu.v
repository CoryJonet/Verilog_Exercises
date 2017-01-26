module alu (A, B, Cin, Op, invA, invB, sign, Out, Ofl, Z);
   
        input [15:0] A;
        input [15:0] B;
        input Cin;
        input [2:0] Op;
        input invA;
        input invB;
        input sign;
        output [15:0] Out;
        output Ofl;
        output Z;
   
   	wire cout, ofl_arith, ofl_shift, zero;
	wire [15:0] arith_out, a_inv, b_inv, shift_out;
	
   	assign a_inv = invA ? ~A : A;
   	assign b_inv = invB ? ~B : B;
   
	arithmetic arith(.a(a_inv), .b(b_inv), .cin(Cin), .op(Op[1:0]),
		.out(arith_out), .ofl(ofl_arith), .sign(sign));
	shifter shift(.In(a_inv), .Cnt(b_inv[3:0]), .Op(Op[1:0]), .Out(shift_out));

	assign Out = Op[2] ? arith_out : shift_out;
	assign Ofl = ofl_arith;
	assign Z = ~|Out;
	
    
endmodule
