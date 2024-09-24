module onescompliment(
    input A0, A1, A2, A3, B0, B1, B2, B3, 
   
    output Ones0, Ones1, Ones2, Ones3
);

wire borrow0; 
wire borrow1;
wire borrow2;
wire borrow3; 
wire borrow4; 
wire borrow5;
wire borrow6;
wire borrow7;

fulladder adder0(
    .A(A0),
    .B(B0),
    .Cin(0),
    .Y(Ones0),
    .Carry(borrow0)
);

fulladder adder1(
    .A(A1),
    .B(B1),
    .Cin(borrow0),
    .Y(Ones1),
    .Carry(borrow1)
);

fulladder adder2(
    .A(A2),
    .B(B2),
    .Cin(borrow1),
    .Y(Ones2),
    .Carry(borrow2)
);

fulladder adder3(
    .A(A3),
    .B(B3),
    .Cin(borrow2),
    .Y(Ones3),
    .Carry(borrow3)
);

fulladder adderCarryOnes0(
    .A(Ones0),
    .B(0),
    .Cin(borrow3),
    .Y(Ones0),
    .Carry(borrow4)
);

fulladder adderCarryOnes1(
    .A(Ones1),
    .B(0),
    .Cin(borrow4),
    .Y(Ones1),
    .Carry(borrow5)
);

fulladder adderCarryOnes2(
    .A(Ones2),
    .B(0),
    .Cin(borrow5),
    .Y(Ones2),
    .Carry(borrow6)
);

fulladder adderCarryOnes3(
    .A(Ones3),
    .B(0),
    .Cin(borrow6),
    .Y(Ones3),
    .Carry(borrow7)
);





endmodule