`include "hw1_1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AandB, n_AandB;    // Test outputs

  demorgan dut(A, B, AandB, n_AandB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("A B |  AB | ~(AB) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  |    %b  ", A,B, AandB, n_AandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  |    %b  ", A,B, AandB, n_AandB);
    A=1;B=0; #1
    $display("%b %b |  %b  |    %b  ", A,B, AandB, n_AandB);
    A=1;B=1; #1
    $display("%b %b |  %b  |    %b  ", A,B, AandB, n_AandB);
  end
endmodule    // End demorgan_test