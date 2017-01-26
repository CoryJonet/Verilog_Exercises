module arithmetic(a, b, cin, op, out, ofl, sign);

	input cin, sign;
	input [15:0] a, b;
	input [1:0] op;
	
	output ofl;
	output [15:0] out;

	wire cout;
	wire overflow;
	wire [15:0] sum;

	cla16 adder(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout), 
		    .ofl(overflow), .sign(sign));

	assign out = op[1] ? (op[0] ? a & b : a ^ b) : 
			(op[0] ? a | b : sum);

	assign ofl = ~(op[1] | op[0]) ? overflow : 1'b0;


endmodule 