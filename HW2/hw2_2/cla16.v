module cla16 (a, b, cin, sum, cout, ofl, sign);

	input [15:0] a, b;
	input cin, sign;

	output cout;
	output ofl;
	output [15:0] sum;

	wire c4, c8, c12, 
	     g0, g1, g2, g3, 
             p0, p1, p2, p3;

	assign c4 = g0 | (p0 & cin);
	assign c8 = g1 | (p1 & c4);
	assign c12 = g2 | (p2 & c8);

	cla4 cl0(.a(a[3:0]), .b(b[3:0]),
		 .cin(cin), .gg(g0), .pg(p0),
		 .sum(sum[3:0]), .cout(c4));

	cla4 cl1(.a(a[7:4]), .b(b[7:4]),
		 .cin(c4), .gg(g1), .pg(p1),
		 .sum(sum[7:4]), .cout(c8));

	cla4 cl2(.a(a[11:8]), .b(b[11:8]),
		 .cin(c8), .gg(g2), .pg(p2),
		 .sum(sum[11:8]), .cout(c12));

	cla4 cl3(.a(a[15:12]), .b(b[15:12]),
		 .cin(c12), .gg(g3), .pg(p3),
		 .sum(sum[15:12]), .cout(cout));

	assign cout = g3 | ( p3 & c12 );
	assign ofl = sign ? cl3.cout ^ cl3.c3 : cl3.cout;

endmodule
