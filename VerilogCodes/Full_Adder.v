module Full_Adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
);

    wire xor1_out, and1_out, and2_out;

    // Structural modeling using the gates defined previously
    XOR_gate xor1(A, B, xor1_out);
    XOR_gate xor2(xor1_out, Cin, S);

    AND_gate and1(xor1_out, Cin, and1_out);
    AND_gate and2(A, B, and2_out);

    OR_gate or1(and1_out, and2_out, Cout);

endmodule
