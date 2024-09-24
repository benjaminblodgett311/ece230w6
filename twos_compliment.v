module twoscompliment(
    input [9:2] A,
   
    output [13:6]Twos
);

wire around;

fulladder adderCar0(
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