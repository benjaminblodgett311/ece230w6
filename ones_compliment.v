module onescompliment(
    input A0, A1, A2, A3, B0, B1, B2, B3, 
    #or can we do input [3:0] A, [3:0] B
    output Ones0, Ones1, Ones2, Ones3
);

assign Y = A ^ B;
assign Borrow = (~A) & B;


endmodule