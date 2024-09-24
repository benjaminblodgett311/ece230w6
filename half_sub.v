module halfsub(
    input A, B,
    output Y, Borrow
);

assign Y = A ^ B;
assign Borrow = (~A) & B;


endmodule