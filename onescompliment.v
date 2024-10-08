module onescompliment(
    input [3:0] A, B, Acomp, Bcomp,
   
    output [3:0] Ones
);

assign Acomp = ~A;
assign Bcomp = ~B;


wire borrow0; 
wire borrow1;
wire borrow2;
wire borrow3; 

fulladder adder0(
    .A(A[0]),
    .B(B[0]),
    .Cin(0),
    .Y(Ones[0]),
    .Carry(borrow0)
);

fulladder adder1(
    .A(A[1]),
    .B(B[1]),
    .Cin(borrow0),
    .Y(Ones[1]),
    .Carry(borrow1)
);

fulladder adder2(
    .A(A[2]),
    .B(B[2]),
    .Cin(borrow1),
    .Y(Ones[2]),
    .Carry(borrow2)
);

fulladder adder3(
    .A(A[3]),
    .B(B[3]),
    .Cin(borrow2),
    .Y(Ones[3]),
    .Carry(borrow3)
);

