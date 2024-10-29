module twoscompliment(
    input [7:0] A,
   
    output [7:0] Twos
);

wire around0, around1, around2, around3, around4, around5, around6;

fulladder Twos0(
    .A(~A[0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(Twos[0]),
    .Carry(around0)
);

fulladder Twos1(
    .A(~A[1]),
    .B(1'b0),
    .Cin(around0),
    .Y(Twos[1]),
    .Carry(around1)
);

fulladder Twos2(
    .A(~A[2]),
    .B(1'b0),
    .Cin(around1),
    .Y(Twos[2]),
    .Carry(around2)
);

fulladder Twos3(
    .A(~A[3]),
    .B(1'b0),
    .Cin(around2),
    .Y(Twos[3]),
    .Carry(around3)
);

fulladder Twos4(
    .A(~A[4]),
    .B(1'b0),
    .Cin(around3),
    .Y(Twos[4]),
    .Carry(around4)
);

fulladder Twos5(
    .A(~A[5]),
    .B(1'b0),
    .Cin(around4),
    .Y(Twos[5]),
    .Carry(around5)
);

fulladder Twos6(
    .A(~A[6]),
    .B(1'b0),
    .Cin(around5),
    .Y(Twos[6]),
    .Carry(around6)
);

fulladder Twos7(
    .A(~A[7]),
    .B(1'b0),
    .Cin(around6),
    .Y(Twos[7])
);



endmodule