module demorgan
(
	// This is for n(AandB)
	input A,		// Single bit inputs
	input B,
	output AorB,	// intermediate step
	output n_AorB	// final output, _ used instead of ()

);

	or orgate(AorB,A,B);		// adding together A and B
	not AorB_inv(n_AorB,AorB);	// inverting the previous
endmodule