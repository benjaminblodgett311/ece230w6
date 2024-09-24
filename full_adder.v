module fulladder(
	input A, B, Cin,
	output Y, Carry
);

assign Y = A ^ B ^ Cin;
assign Carry = ( A & B ) | (Cin & (A ^ B) );

endmodule