module demorgan
(
	// This is for n(AandB)
	input A,		// Single bit inputs
	input B,
	output AandB,	// intermediate step
	output n_AandB	// final output, _ used instead of ()

);

	and andgate(AandB,A,B);		// anding together A and B
	not AandB_inv(n_AandB,AandB);	// inverting the previous
endmodule
