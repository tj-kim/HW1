module demorgan
(
	input A,		// Single bit inputs
	input B,
	output nA,		// Output intermediate complemented inputs
	output nB,
	output nAornB	// single bit output, (~A)*(~B)
);

	wire nA;
	wire nB;
	not Ainv(nA, A);	// Top inverter is named Ainv, takes signal A as input and produces signal nA
	not Binv(nB, B);
	or orgate(nAornB, nA, nB);	// Or gate produces nAornB

endmodule
	