module twoscompliment(
    input [9:2] A,
   
    output [13:6] Twos
);

wire around; 
fulladder Twos0(
    .A(A[0]),
    .B(0),
    .Cin(0),
    .Y(Twos[0]),
    .Carry(around)
);

fulladder TwosOne(
    .A(A[1]),
    .B(0),
    .Cin(around),
    .Y(Twos[1]),
    .Carry(around)
);

fulladder Twos2(
    .A(A[2]),
    .B(0),
    .Cin(around),
    .Y(Twos[2]),
    .Carry(around)
);

fulladder Twos3(
    .A(A[3]),
    .B(0),
    .Cin(around),
    .Y(Twos[3]),
    .Carry(around)
);

fulladder Twos4(
    .A(A[4]),
    .B(0),
    .Cin(around),
    .Y(Twos[4]),
    .Carry(around)
);

fulladder Twos5(
    .A(A[5]),
    .B(0),
    .Cin(around),
    .Y(Twos[5]),
    .Carry(around)
);

fulladder Twos6(
    .A(A[6]),
    .B(0),
    .Cin(around),
    .Y(Twos[6]),
    .Carry(around)
);

fulladder Twos7(
    .A(A[7]),
    .B(0),
    .Cin(around),
    .Y(Twos[7]),
    .Carry(around)
);



endmodule